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

# Unknown Error: Invalid number in NLP function or derivative detected.
# smps/three-stage.nl
# smps/nonlinear.nl
# infeasible.nl
# sched1.nl
# nqueens0.nl
# numberof.nl
# noobj.nl
# sched2.nl

# https://icwww.epfl.ch/~sam/Coconut-benchs/CSP-benchs.tar.gz
# https://vanderbei.princeton.edu/ampl/nlmodels/cute.tar.gz
# https://vanderbei.princeton.edu/ampl/nlmodels/noncute.tar.gz
# http://www.netlib.org/ampl/models.tgz

# TODO:
# 1494 - ampl_seq0a_nl_ipopt_standard (Failed)
# 1515 - ipopt_example_luksan_LukVlE7 (Failed)
# 1522 - ipopt_example_luksan_LukVlI7 (Failed)
# 1524 - ipopt_example_luksan_MBndryCntrl2 (Failed)
# 1534 - ipopt_example_luksan_MBndryCntrl_3Dsin (Timeout)
# 1544 - ipopt_example_luksan_MDistCntrl6a (Failed)
# 1546 - ipopt_example_luksan_MPara5_2_1 (Failed)
# 1547 - ipopt_example_luksan_MPara5_2_2 (Failed)

set(IPOPT_TEST_LIST magic.nl
                    sudokuVeryEasy.nl
		    objconst.nl
		    flowshp1.nl
		    seq0.nl
		    max-with-zero-args.nl
		    smps/inconsistent-probabilities.nl
		    smps/zero-core-con.nl
		    smps/zero-core-coefs.nl
		    smps/three-stage.nl
		    smps/range-con.nl
		    smps/single-stage.nl
		    smps/vars-not-in-stage-order.nl
		    smps/random-bound.nl
		    smps/random-con-matrix2.nl
		    smps/int-var.nl
		    smps/single-scenario.nl
		    smps/random-con-matrix.nl
		    smps/nonlinear.nl
		    smps/random-rhs.nl
		    test.nl
		    balassign0.nl
		    miplib/assign1.nl
		    balassign1.nl
		    assign1.nl
		    grpassign0.nl
		    unbounded.nl
		    infeasible.nl
		    sched1.nl
		    nqueens0.nl
		    element.nl
		    send-most-money.nl
		    ssd.nl
		    numberof.nl
		    party1.nl
		    nqueens.nl
		    simple.nl
		    flowshp0.nl
		    seq0a.nl
		    assign0.nl
		    noobj.nl
		    openshop.nl
		    send-more-money.nl
		    suffix.nl
		    sched0.nl
		    sched2.nl
		    objconstint.nl
		    photo9.nl
		    min-with-zero-args.nl
		    mapcoloring.nl
		    sudokuHard.nl
		    feasible.nl
		    flowshp2.nl
		    )

add_ipopt_test_list(ampl ipopt_standard IPOPT_TEST_LIST "NL;IPOPT" 30)

set_tests_properties(ampl_sudokuVeryEasy_nl_ipopt_standard     PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_flowshp1_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_max_with_zero_args_nl_ipopt_standard PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_smps_three_stage_nl_ipopt_standard   PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_smps_nonlinear_nl_ipopt_standard     PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_test_nl_ipopt_standard               PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_miplib_assign1_nl_ipopt_standard     PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_assign1_nl_ipopt_standard            PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_infeasible_nl_ipopt_standard         PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_sched1_nl_ipopt_standard             PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_nqueens0_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_element_nl_ipopt_standard            PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_send_most_money_nl_ipopt_standard    PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_ssd_nl_ipopt_standard                PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_numberof_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_party1_nl_ipopt_standard             PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_nqueens_nl_ipopt_standard            PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_noobj_nl_ipopt_standard              PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_openshop_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_send_more_money_nl_ipopt_standard    PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_sched2_nl_ipopt_standard             PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_photo9_nl_ipopt_standard             PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_min_with_zero_args_nl_ipopt_standard PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_mapcoloring_nl_ipopt_standard        PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_sudokuHard_nl_ipopt_standard         PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_feasible_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_feasible_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")
set_tests_properties(ampl_flowshp2_nl_ipopt_standard           PROPERTIES LABELS "NL;IPOPT;FAIL")

set_tests_properties(ampl_assign0_nl_ipopt_standard                         PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_balassign0_nl_ipopt_standard                      PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_balassign1_nl_ipopt_standard                      PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flowshp0_nl_ipopt_standard                        PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_infeasible_nl_ipopt_standard                      PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_miplib_assign1_nl_ipopt_standard                  PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_noobj_nl_ipopt_standard                           PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_nqueens0_nl_ipopt_standard                        PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_numberof_nl_ipopt_standard                        PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_objconstint_nl_ipopt_standard                     PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_objconst_nl_ipopt_standard                        PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sched0_nl_ipopt_standard                          PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sched1_nl_ipopt_standard                          PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sched2_nl_ipopt_standard                          PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_seq0a_nl_ipopt_standard                           PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_seq0_nl_ipopt_standard                            PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_simple_nl_ipopt_standard                          PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_inconsistent_probabilities_nl_ipopt_standard PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_int_var_nl_ipopt_standard                    PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_nonlinear_nl_ipopt_standard                  PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smps_random_bound_nl_ipopt_standard               PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_random_con_matrix2_nl_ipopt_standard         PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_random_con_matrix_nl_ipopt_standard          PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_random_rhs_nl_ipopt_standard                 PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_range_con_nl_ipopt_standard                  PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_single_scenario_nl_ipopt_standard            PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_single_stage_nl_ipopt_standard               PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_three_stage_nl_ipopt_standard                PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smps_vars_not_in_stage_order_nl_ipopt_standard    PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_zero_core_coefs_nl_ipopt_standard            PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smps_zero_core_con_nl_ipopt_standard              PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_suffix_nl_ipopt_standard                          PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_unbounded_nl_ipopt_standard                       PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Iterates diverging; problem might be unbounded.")
