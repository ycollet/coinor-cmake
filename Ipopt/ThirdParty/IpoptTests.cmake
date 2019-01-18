include(coin-macros)

set(EP_InstallDir ${CMAKE_BINARY_DIR}/Dependencies/${CMAKE_CFG_INTDIR})
set(IPOPT_INSTANCES_DIR "${EP_InstallDir}/ASL-1.3.0/src/EP_ASL/test/data")

# Invalide nl tests:
#
# ampl_sudokuVeryEasy_nl_ipopt_standard
# ampl_flowshp1_nl_ipopt_standard
# ampl_max-with-zero-args_nl_ipopt_standard
# ampl_test_nl_ipopt_standard
# ampl_assign1_nl_ipopt_standard
# ampl_element_nl_ipopt_standard
# ampl_send-most-money_nl_ipopt_standard
# ampl_ssd_nl_ipopt_standard
# ampl_party1_nl_ipopt_standard
# ampl_nqueens_nl_ipopt_standard
# ampl_openshop_nl_ipopt_standard
# ampl_send-more-money_nl_ipopt_standard
# ampl_photo9_nl_ipopt_standard
# ampl_min-with-zero-args_nl_ipopt_standard
# ampl_mapcoloring_nl_ipopt_standard
# ampl_sudokuHard_nl_ipopt_standard
# ampl_feasible_nl_ipopt_standard
# ampl_flowshp2_nl_ipopt_standard

set(IPOPT_TEST_LIST ${IPOPT_INSTANCES_DIR}/magic.nl
                    #${IPOPT_INSTANCES_DIR}/sudokuVeryEasy.nl
		    ${IPOPT_INSTANCES_DIR}/objconst.nl
		    #${IPOPT_INSTANCES_DIR}/flowshp1.nl
		    ${IPOPT_INSTANCES_DIR}/seq0.nl
		    #${IPOPT_INSTANCES_DIR}/max-with-zero-args.nl
		    ${IPOPT_INSTANCES_DIR}/smps/inconsistent-probabilities.nl
		    ${IPOPT_INSTANCES_DIR}/smps/zero-core-con.nl
		    ${IPOPT_INSTANCES_DIR}/smps/zero-core-coefs.nl
		    ${IPOPT_INSTANCES_DIR}/smps/three-stage.nl
		    ${IPOPT_INSTANCES_DIR}/smps/range-con.nl
		    ${IPOPT_INSTANCES_DIR}/smps/single-stage.nl
		    ${IPOPT_INSTANCES_DIR}/smps/vars-not-in-stage-order.nl
		    ${IPOPT_INSTANCES_DIR}/smps/random-bound.nl
		    ${IPOPT_INSTANCES_DIR}/smps/random-con-matrix2.nl
		    ${IPOPT_INSTANCES_DIR}/smps/int-var.nl
		    ${IPOPT_INSTANCES_DIR}/smps/single-scenario.nl
		    ${IPOPT_INSTANCES_DIR}/smps/random-con-matrix.nl
		    ${IPOPT_INSTANCES_DIR}/smps/nonlinear.nl
		    ${IPOPT_INSTANCES_DIR}/smps/random-rhs.nl
		    #${IPOPT_INSTANCES_DIR}/test.nl
		    ${IPOPT_INSTANCES_DIR}/balassign0.nl
		    #${IPOPT_INSTANCES_DIR}/miplib/assign1.nl
		    ${IPOPT_INSTANCES_DIR}/balassign1.nl
		    #${IPOPT_INSTANCES_DIR}/assign1.nl
		    ${IPOPT_INSTANCES_DIR}/grpassign0.nl
		    ${IPOPT_INSTANCES_DIR}/unbounded.nl
		    ${IPOPT_INSTANCES_DIR}/infeasible.nl
		    ${IPOPT_INSTANCES_DIR}/sched1.nl
		    ${IPOPT_INSTANCES_DIR}/nqueens0.nl
		    #${IPOPT_INSTANCES_DIR}/element.nl
		    #${IPOPT_INSTANCES_DIR}/send-most-money.nl
		    #${IPOPT_INSTANCES_DIR}/ssd.nl
		    ${IPOPT_INSTANCES_DIR}/numberof.nl
		    #${IPOPT_INSTANCES_DIR}/party1.nl
		    #${IPOPT_INSTANCES_DIR}/nqueens.nl
		    ${IPOPT_INSTANCES_DIR}/simple.nl
		    ${IPOPT_INSTANCES_DIR}/flowshp0.nl
		    ${IPOPT_INSTANCES_DIR}/seq0a.nl
		    ${IPOPT_INSTANCES_DIR}/assign0.nl
		    ${IPOPT_INSTANCES_DIR}/noobj.nl
		    #${IPOPT_INSTANCES_DIR}/openshop.nl
		    #${IPOPT_INSTANCES_DIR}/send-more-money.nl
		    ${IPOPT_INSTANCES_DIR}/suffix.nl
		    ${IPOPT_INSTANCES_DIR}/sched0.nl
		    ${IPOPT_INSTANCES_DIR}/sched2.nl
		    ${IPOPT_INSTANCES_DIR}/objconstint.nl
		    #${IPOPT_INSTANCES_DIR}/photo9.nl
		    #${IPOPT_INSTANCES_DIR}/min-with-zero-args.nl
		    #${IPOPT_INSTANCES_DIR}/mapcoloring.nl
		    #${IPOPT_INSTANCES_DIR}/sudokuHard.nl
		    #${IPOPT_INSTANCES_DIR}/feasible.nl
		    #${IPOPT_INSTANCES_DIR}/flowshp2.nl
		    )

macro(add_ipopt_test Name FileData)
  add_test(NAME ${Name}
           COMMAND $<TARGET_FILE:ipopt> -- ${FileData})
endmacro()

macro(add_ipopt_test_list Prefix Suffix FileList Label Timeout)
  foreach(File ${${FileList}})
    get_filename_component(_NAME ${File} NAME)
    string(REGEX REPLACE "[\\.]" "_" _NAME "${_NAME}")
    
    add_ipopt_test(${Prefix}_${_NAME}_${Suffix} ${File})

    if (NOT COIN_TESTS_DISABLE_TIMEOUT)
      set_tests_properties(${Prefix}_${_NAME}_${Suffix} PROPERTIES TIMEOUT ${Timeout})
    else ()
      set_tests_properties(${Prefix}_${_NAME}_${Suffix} PROPERTIES TIMEOUT 1000000)
    endif ()
    set_tests_properties(${Prefix}_${_NAME}_${Suffix} PROPERTIES LABELS "${Label}")
  endforeach ()
endmacro()

add_ipopt_test_list(ampl ipopt_standard IPOPT_TEST_LIST "NL;IPOPT" 30)
