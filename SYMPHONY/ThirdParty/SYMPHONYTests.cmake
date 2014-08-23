#
# Infeas tests
#

add_test(NAME infeas_chemcom_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_symphony.out)
set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_pilot4i_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_symphony.out)
set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_reactor_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_reactor_symphony.out)
set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgetam_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_symphony.out)
set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_refinery_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_refinery_symphony.out)
set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_cplex2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_symphony.out)
set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_forest6_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_forest6_symphony.out)
set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_cplex1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_symphony.out)
set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_box1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_box1_symphony.out)
set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_itest6_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_itest6_symphony.out)
set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgindy_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_symphony.out)
set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_klein2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_klein2_symphony.out)
set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_ceria3d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_symphony.out)
set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_ex72a_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_symphony.out)
set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_greenbea_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_symphony.out)
set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME infeas_klein3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_klein3_symphony.out)
set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_itest2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_itest2_symphony.out)
set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_ex73a_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_symphony.out)
set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_klein1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_klein1_symphony.out)
set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_woodinfe_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_symphony.out)
set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgprtr_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_symphony.out)
set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_galenet_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_galenet_symphony.out)
set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_gran_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_gran_symphony.out)
set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_mondou2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_symphony.out)
set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_qual_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_qual_symphony.out)
set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_vol1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_vol1_symphony.out)
set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_pang_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_pang_symphony.out)
set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgdbg1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_symphony.out)
set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_gosh_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -o ${CMAKE_BINARY_DIR}/tests/infeas_gosh_symphony.out)
set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES LABELS "MPS")

#
# Big test
#

add_test(NAME big_mkc7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/big_mkc7_symphony.out)
set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

#
# Sample tests
#

add_test(NAME sample_scOneInt_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -o ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_symphony.out)
set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_p0201_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -o ${CMAKE_BINARY_DIR}/tests/sample_p0201_symphony.out)
set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_p0548_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -o ${CMAKE_BINARY_DIR}/tests/sample_p0548_symphony.out)
set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_hello_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -o ${CMAKE_BINARY_DIR}/tests/sample_hello_symphony.out)
set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_e226_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -o ${CMAKE_BINARY_DIR}/tests/sample_e226_symphony.out)
set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_tp3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -o ${CMAKE_BINARY_DIR}/tests/sample_tp3_symphony.out)
set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_tp4_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -o ${CMAKE_BINARY_DIR}/tests/sample_tp4_symphony.out)
set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_finnis_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -o ${CMAKE_BINARY_DIR}/tests/sample_finnis_symphony.out)
set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_5_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -o ${CMAKE_BINARY_DIR}/tests/sample_5_symphony.out)
set_tests_properties(sample_5_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_5_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_exmip1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -o ${CMAKE_BINARY_DIR}/tests/sample_exmip1_symphony.out)
set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_share2qp_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -o ${CMAKE_BINARY_DIR}/tests/sample_share2qp_symphony.out)
set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_afiro_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -o ${CMAKE_BINARY_DIR}/tests/sample_afiro_symphony.out)
set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_nw460_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -o ${CMAKE_BINARY_DIR}/tests/sample_nw460_symphony.out)
set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_brandy_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -o ${CMAKE_BINARY_DIR}/tests/sample_brandy_symphony.out)
set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_tp5_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -o ${CMAKE_BINARY_DIR}/tests/sample_tp5_symphony.out)
set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_pack1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -o ${CMAKE_BINARY_DIR}/tests/sample_pack1_symphony.out)
set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_p0033_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -o ${CMAKE_BINARY_DIR}/tests/sample_p0033_symphony.out)
set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES LABELS "MPS")

#
# Netlib tests
#

# Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme

add_test(NAME netlib_fit2d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_symphony.out)
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES LABELS "MPS")

set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -68464.29329(4)?")
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_forplan_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_forplan_symphony.out)
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -664.218(73953)?")
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship08s_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_symphony.out)
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1920098.21(05)?")
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fit1d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_symphony.out)
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -9146.378092(4)?")
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_brandy_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_brandy_symphony.out)
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1518.509896(5)?")
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scfxm1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_symphony.out)
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 18416.7590(28)?")
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_grow22_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_grow22_symphony.out)
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -160834336(.48)?")
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bandm_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bandm_symphony.out)
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -158.628018(45)?")
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fit1p_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_symphony.out)
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 9146.378092(4)?")
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_standata_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_standata_symphony.out)
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1257.6995(000)?")
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilot4_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_symphony.out)
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -2581.13926(41)?")
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_stocfor2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_symphony.out)
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -39024.4085(38)?")
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sctap1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_symphony.out)
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1412.25(00000)?")
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scrs8_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_symphony.out)
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 904.29(998619)?")
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sctap2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_symphony.out)
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1724.80714(29)?")
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilot87_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_symphony.out)
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 301.710(72827)?")
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_greenbea_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_symphony.out)
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -72462405.9(08)?")
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_woodw_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_woodw_symphony.out)
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1.304476333(1)?")
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_recipe_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_recipe_symphony.out)
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -266.616(00000)?")
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_share1b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_share1b_symphony.out)
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -76589.3185(79)?")
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_tuff_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_tuff_symphony.out)
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 0.292147765(09)?")
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_share2b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_share2b_symphony.out)
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -415.7322407(4)?")
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bore3d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_symphony.out)
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1373.080394(2)?")
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_d2q06c_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_symphony.out)
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 122784.236(15)?")
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc50b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_symphony.out)
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -70")
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilot_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilot_symphony.out)
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -557.4043(0007)?")
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bnl1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_symphony.out)
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1977.6292(856)?")
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship04l_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_symphony.out)
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1793324.538(0)?")
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc105_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc105_symphony.out)
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -52.20206121(2)?")
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_boeing2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_symphony.out)
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -315.018728(02)?")
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_nesm_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_nesm_symphony.out)
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 14076073.0(35)?")
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc205_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc205_symphony.out)
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -52.202061(212)?")
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_finnis_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_finnis_symphony.out)
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 172790.9(6547)?")
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_degen2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_degen2_symphony.out)
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -1435.178(0000)?")
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_maros-r7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_symphony.out)
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1497185.166(5)?")
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship04s_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_symphony.out)
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1798714.7(004)?")
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_wood1p_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_symphony.out)
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1.44290241(16)?")
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_lotfi_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_symphony.out)
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -25.26470606(2)?")
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_gfrd_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pnc_symphony.out)
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 6902235.9(995)?")
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_etamacro_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_symphony.out)
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -755.7152(1774)?")
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_grow7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_grow7_symphony.out)
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -47787811.81(5)?")
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_dfl001_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_symphony.out)
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES LABELS "MPS")
# (there's a ** in the readme file in the netlib website)
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 112664396.0(5)?") # Symphony value
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_agg_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_agg_symphony.out)
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -35991767.2(87)?")
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_standgub_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_standgub_symphony.out)
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES LABELS "MPS")
# Nothing in the readme - Symphony value
set(TEST_REGEX "")
add_regex(TEST_REGEX "1257.6995")
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship12l_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_symphony.out)
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1470187.919(3)?")
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_standmps_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_standmps_symphony.out)
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1406.0175(000)?")
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scagr25_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_symphony.out)
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -14753433.06(1)?")
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_capri_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_capri_symphony.out)
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 2690.01291(38)?")
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_cycle_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_cycle_symphony.out)
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -5.22639302(49)?")
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_greenbeb_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_symphony.out)
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -4302147.6065")
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_agg2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_agg2_symphony.out)
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -20239252.3(56)?")
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_stair_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_stair_symphony.out)
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -251.266951(19)?")
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_shell_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_shell_symphony.out)
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1208825346(.0)?")
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sierra_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sierra_symphony.out)
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 15394362.18(4)?")
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_afiro_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_afiro_symphony.out)
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -464.753142(86)?")
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scsd1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_symphony.out)
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 8.666666674(3)?")
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scsd8_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_symphony.out)
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 904.9999999(3)?")
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship08l_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_symphony.out)
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1909055.211(4)?")
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_25fv47_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_symphony.out)
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 5501.845888(3)?")
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_czprob_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_czprob_symphony.out)
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 2185196.69(89)?")
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_adlittle_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_symphony.out)
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 225494.963(16)?")
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_d6cube_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_symphony.out)
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 315.491666(67)?")
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scorpion_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_symphony.out)
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1878.12482(27)?")
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sctap3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_symphony.out)
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1424(.0)?")
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_seba_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_seba_symphony.out)
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 15711.6")
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_modszk1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_symphony.out)
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 320.619729(06)?")
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilotnov_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_symphony.out)
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -4497.276188(2)?")
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_beaconfd_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_symphony.out)
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 33592.4858(07)?")
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_e226_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_e226_symphony.out)
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -18.751929(066)?")
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_degen3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_degen3_symphony.out)
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -987.294(00000)?")
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scfxm2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_symphony.out)
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 36660.26156(5)?")
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fffff800_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_symphony.out)
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 555679.611(65)?")
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_kb2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_kb2_symphony.out)
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -1749.9001(299)?")
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ganges_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ganges_symphony.out)
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -109586.363(56)?")
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_stocfor1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_symphony.out)
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -41131.9762(19)?")
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scsd6_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_symphony.out)
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 50.5000000(78)?")
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_80bau3b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_symphony.out)
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 987232.160(72)?")
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship12s_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_symphony.out)
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1489236.134(4)?")
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_agg3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_agg3_symphony.out)
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 10312115.9(35)?")
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_maros_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_maros_symphony.out)
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -58063.7437(01)?")
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_perold_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_perold_symphony.out)
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -9380.758(0773)?")
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scagr7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_symphony.out)
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -2331389.25(48)?")
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scfxm3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_symphony.out)
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 54901.25455(0)?")
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_grow15_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_grow15_symphony.out)
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -106870941(.29)?")
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fit2p_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_symphony.out)
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 68464.2932(32)?")
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_boeing1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_symphony.out)
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -335.2135675(1)?")
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc50a_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_symphony.out)
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -64.5750770(59)?")
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_vtpbase_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_symphony.out)
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 129831.462(46)?")
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_blend_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_blend_symphony.out)
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -30.8121498(46)?")
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bnl2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_symphony.out)
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: 1811.23654(04)?")
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_israel_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -o ${CMAKE_BINARY_DIR}/tests/netlib_israel_symphony.out)
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Solution Cost: -896644.821(86)?")
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

#
# miplib3 tests
#

add_test(NAME miplib3_10teams_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_symphony.out)
set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_air03_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_air03_symphony.out)
set_tests_properties(miplib3_air03_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_air03_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_air04_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_air04_symphony.out)
set_tests_properties(miplib3_air04_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air04_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_air05_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_air05_symphony.out)
set_tests_properties(miplib3_air05_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air05_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_arki001_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_symphony.out)
set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_bell3a_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_symphony.out)
set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_bell5_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_symphony.out)
set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_blend2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_symphony.out)
set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_cap6000_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_symphony.out)
set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_dano3mip_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_symphony.out)
set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_danoint_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_symphony.out)
set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_dcmulti_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_symphony.out)
set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_dsbmip_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_symphony.out)
set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_egout_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_egout_symphony.out)
set_tests_properties(miplib3_egout_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_egout_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_enigma_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_symphony.out)
set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_fast0507_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_symphony.out)
set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_fiber_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_symphony.out)
set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_fixnet6_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_symphony.out)
set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_flugpl_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_symphony.out)
set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gen_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_gen_symphony.out)
set_tests_properties(miplib3_gen_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gen_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_symphony.out)
set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa2_o_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_symphony.out)
set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa3_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_symphony.out)
set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa3_o_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_symphony.out)
set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gt2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_symphony.out)
set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_harp2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_symphony.out)
set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_khb05250_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_symphony.out)
set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_l152lav_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_symphony.out)
set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_lseu_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_symphony.out)
set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_markshare1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_symphony.out)
set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_markshare2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_symphony.out)
set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_mas74_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_symphony.out)
set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_mas76_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_symphony.out)
set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_misc03_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_symphony.out)
set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_misc06_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_symphony.out)
set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_misc07_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_symphony.out)
set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mitre_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_symphony.out)
set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mkc_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_symphony.out)
set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_mod008_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_symphony.out)
set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mod010_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_symphony.out)
set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mod011_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_symphony.out)
set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_modglob_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_symphony.out)
set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_noswot_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_symphony.out)
set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_nw04_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_symphony.out)
set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0033_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_symphony.out)
set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0201_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_symphony.out)
set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0282_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_symphony.out)
set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0548_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_symphony.out)
set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p2756_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_symphony.out)
set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_pk1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_symphony.out)
set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_pp08aCUTS_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_symphony.out)
set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_pp08a_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_symphony.out)
set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_qiu_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_symphony.out)
set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_qnet1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_symphony.out)
set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_qnet1_o_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_symphony.out)
set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_rentacar_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_symphony.out)
set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_rgn_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_symphony.out)
set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_rout_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_rout_symphony.out)
set_tests_properties(miplib3_rout_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_rout_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_set1ch_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_symphony.out)
set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_seymour_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_symphony.out)
set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_stein27_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_symphony.out)
set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_stein45_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_symphony.out)
set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_swath_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_swath_symphony.out)
set_tests_properties(miplib3_swath_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_vpm1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_symphony.out)
set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_vpm2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> -F ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz -o ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_symphony.out)
set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES LABELS "MPS")
