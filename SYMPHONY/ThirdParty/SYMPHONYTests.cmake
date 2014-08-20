#
# Infeas tests
#

add_test(NAME infeas_chemcom_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_chemcom.out -solve)
set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_pilot4i_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i.out -solve)
set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_reactor_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_reactor.out -solve)
set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgetam_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgetam.out -solve)
set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_refinery_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_refinery.out -solve)
set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_cplex2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex2.out -solve)
set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_forest6_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_forest6.out -solve)
set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_cplex1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex1.out -solve)
set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_box1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_box1.out -solve)
set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_itest6_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest6.out -solve)
set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgindy_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgindy.out -solve)
set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_klein2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein2.out -solve)
set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_ceria3d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d.out -solve)
set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_ex72a_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex72a.out -solve)
set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_greenbea_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_greenbea.out -solve)
set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME infeas_klein3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein3.out -solve)
set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_itest2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest2.out -solve)
set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_ex73a_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex73a.out -solve)
set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_klein1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein1.out -solve)
set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_woodinfe_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe.out -solve)
set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgprtr_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr.out -solve)
set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_galenet_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_galenet.out -solve)
set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_gran_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gran.out -solve)
set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_mondou2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_mondou2.out -solve)
set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_qual_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_qual.out -solve)
set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_vol1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_vol1.out -solve)
set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_pang_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pang.out -solve)
set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_bgdbg1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1.out -solve)
set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME infeas_gosh_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gosh.out -solve)
set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES LABELS "MPS")

#
# Big test
#

add_test(NAME big_mkc7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/big_mkc7.out -solve)
set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

#
# Sample tests
#

add_test(NAME sample_scOneInt_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_scOneInt.out -solve)
set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_p0201_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0201.out -solve)
set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_p0548_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0548.out -solve)
set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_hello_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_hello.out -solve)
set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_e226_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_e226.out -solve)
set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_tp3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp3.out -solve)
set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_tp4_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp4.out -solve)
set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_finnis_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_finnis.out -solve)
set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_5_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_5.out -solve)
set_tests_properties(sample_5_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_5_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_exmip1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_exmip1.out -solve)
set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_share2qp_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_share2qp.out -solve)
set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_afiro_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_afiro.out -solve)
set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_nw460_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_nw460.out -solve)
set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_brandy_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_brandy.out -solve)
set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_tp5_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp5.out -solve)
set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_pack1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_pack1.out -solve)
set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME sample_p0033_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0033.out -solve)
set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES LABELS "MPS")

#
# Netlib tests
#

# Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme

add_test(NAME netlib_fit2d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2d.out -solve)
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES LABELS "MPS")

set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -68464.29329(4)?")
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_forplan_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_forplan.out -solve)
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -664.218(73953)?")
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship08s_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08s.out -solve)
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1920098.21(05)?")
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fit1d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1d.out -solve)
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -9146.378092(4)?")
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_brandy_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_brandy.out -solve)
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1518.509896(5)?")
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scfxm1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1.out -solve)
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 18416.7590(28)?")
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_grow22_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow22.out -solve)
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -160834336(.48)?")
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bandm_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bandm.out -solve)
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -158.628018(45)?")
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fit1p_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1p.out -solve)
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 9146.378092(4)?")
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_standata_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standata.out -solve)
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1257.6995(000)?")
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilot4_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot4.out -solve)
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2581.13926(41)?")
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_stocfor2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2.out -solve)
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -39024.4085(38)?")
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sctap1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap1.out -solve)
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1412.25(00000)?")
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scrs8_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scrs8.out -solve)
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 904.29(998619)?")
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sctap2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap2.out -solve)
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1724.80714(29)?")
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilot87_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot87.out -solve)
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 301.710(72827)?")
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_greenbea_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbea.out -solve)
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -72462405.9(08)?")
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_woodw_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_woodw.out -solve)
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1.304476333(1)?")
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_recipe_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_recipe.out -solve)
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -266.616(00000)?")
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_share1b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share1b.out -solve)
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -76589.3185(79)?")
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_tuff_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_tuff.out -solve)
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 0.292147765(09)?")
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_share2b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share2b.out -solve)
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -415.7322407(4)?")
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bore3d_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bore3d.out -solve)
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1373.080394(2)?")
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_d2q06c_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c.out -solve)
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 122784.236(15)?")
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc50b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50b.out -solve)
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -70")
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilot_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot.out -solve)
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -557.4043(0007)?")
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bnl1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl1.out -solve)
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1977.6292(856)?")
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship04l_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04l.out -solve)
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1793324.538(0)?")
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc105_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc105.out -solve)
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -52.20206121(2)?")
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_boeing2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing2.out -solve)
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -315.018728(02)?")
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_nesm_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_nesm.out -solve)
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 14076073.0(35)?")
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc205_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc205.out -solve)
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -52.202061(212)?")
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_finnis_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_finnis.out -solve)
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 172790.9(6547)?")
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_degen2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen2.out -solve)
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -1435.178(0000)?")
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_maros-r7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7.out -solve)
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1497185.166(5)?")
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship04s_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04s.out -solve)
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1798714.7(004)?")
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_wood1p_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_wood1p.out -solve)
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1.44290241(16)?")
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_lotfi_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_lotfi.out -solve)
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -25.26470606(2)?")
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_gfrd_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pnc.out -solve)
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 6902235.9(995)?")
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_etamacro_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_etamacro.out -solve)
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -755.7152(1774)?")
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_grow7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow7.out -solve)
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -47787811.81(5)?")
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_dfl001_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_dfl001.out -solve)
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES LABELS "MPS")
# (there's a ** in the readme file in the netlib website)
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 112664396.0(5)?") # Symphony value
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_agg_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg.out -solve)
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -35991767.2(87)?")
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_standgub_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standgub.out -solve)
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES LABELS "MPS")
# Nothing in the readme - Symphony value
set(TEST_REGEX "")
add_regex(TEST_REGEX "1257.6995")
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship12l_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12l.out -solve)
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1470187.919(3)?")
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_standmps_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standmps.out -solve)
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1406.0175(000)?")
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scagr25_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr25.out -solve)
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -14753433.06(1)?")
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_capri_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_capri.out -solve)
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2690.01291(38)?")
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_cycle_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_cycle.out -solve)
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -5.22639302(49)?")
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_greenbeb_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb.out -solve)
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -4302147.6065")
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_agg2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg2.out -solve)
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -20239252.3(56)?")
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_stair_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stair.out -solve)
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -251.266951(19)?")
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_shell_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_shell.out -solve)
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1208825346(.0)?")
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sierra_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sierra.out -solve)
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 15394362.18(4)?")
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_afiro_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_afiro.out -solve)
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -464.753142(86)?")
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scsd1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd1.out -solve)
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8.666666674(3)?")
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scsd8_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd8.out -solve)
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 904.9999999(3)?")
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship08l_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08l.out -solve)
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1909055.211(4)?")
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_25fv47_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_25fv47.out -solve)
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 5501.845888(3)?")
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_czprob_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_czprob.out -solve)
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2185196.69(89)?")
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_adlittle_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_adlittle.out -solve)
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 225494.963(16)?")
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_d6cube_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d6cube.out -solve)
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 315.491666(67)?")
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scorpion_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scorpion.out -solve)
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1878.12482(27)?")
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sctap3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap3.out -solve)
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1424(.0)?")
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_seba_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_seba.out -solve)
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 15711.6")
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_modszk1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_modszk1.out -solve)
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 320.619729(06)?")
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_pilotnov_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov.out -solve)
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -4497.276188(2)?")
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_beaconfd_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd.out -solve)
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 33592.4858(07)?")
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_e226_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_e226.out -solve)
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -18.751929(066)?")
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_degen3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen3.out -solve)
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -987.294(00000)?")
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scfxm2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2.out -solve)
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 36660.26156(5)?")
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fffff800_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fffff800.out -solve)
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 555679.611(65)?")
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_kb2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_kb2.out -solve)
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -1749.9001(299)?")
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ganges_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ganges.out -solve)
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -109586.363(56)?")
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_stocfor1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1.out -solve)
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -41131.9762(19)?")
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scsd6_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd6.out -solve)
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 50.5000000(78)?")
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_80bau3b_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b.out -solve)
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 987232.160(72)?")
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_ship12s_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12s.out -solve)
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1489236.134(4)?")
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_agg3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg3.out -solve)
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 10312115.9(35)?")
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_maros_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros.out -solve)
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -58063.7437(01)?")
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_perold_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_perold.out -solve)
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -9380.758(0773)?")
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scagr7_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr7.out -solve)
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2331389.25(48)?")
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_scfxm3_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3.out -solve)
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 54901.25455(0)?")
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_grow15_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow15.out -solve)
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -106870941(.29)?")
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_fit2p_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2p.out -solve)
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 68464.2932(32)?")
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_boeing1_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing1.out -solve)
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -335.2135675(1)?")
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_sc50a_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50a.out -solve)
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -64.5750770(59)?")
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_vtpbase_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase.out -solve)
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 129831.462(46)?")
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_blend_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_blend.out -solve)
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -30.8121498(46)?")
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_bnl2_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl2.out -solve)
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1811.23654(04)?")
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_test(NAME netlib_israel_mps_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_israel.out -solve)
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -896644.821(86)?")
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

#
# miplib3 tests
#

add_test(NAME miplib3_10teams_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_10teams.out -solve)
set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_air03_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air03.out -solve)
set_tests_properties(miplib3_air03_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_air03_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_air04_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air04.out -solve)
set_tests_properties(miplib3_air04_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air04_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_air05_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air05.out -solve)
set_tests_properties(miplib3_air05_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air05_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_arki001_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_arki001.out -solve)
set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_bell3a_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a.out -solve)
set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_bell5_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell5.out -solve)
set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_blend2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_blend2.out -solve)
set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_cap6000_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000.out -solve)
set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_dano3mip_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip.out -solve)
set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_danoint_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_danoint.out -solve)
set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_dcmulti_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti.out -solve)
set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_dsbmip_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip.out -solve)
set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_egout_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_egout.out -solve)
set_tests_properties(miplib3_egout_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_egout_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_enigma_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_enigma.out -solve)
set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_fast0507_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507.out -solve)
set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_fiber_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fiber.out -solve)
set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_fixnet6_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6.out -solve)
set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_flugpl_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl.out -solve)
set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gen_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gen.out -solve)
set_tests_properties(miplib3_gen_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gen_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2.out -solve)
set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa2_o_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o.out -solve)
set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa3_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3.out -solve)
set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gesa3_o_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o.out -solve)
set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_gt2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gt2.out -solve)
set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_harp2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_harp2.out -solve)
set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_khb05250_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250.out -solve)
set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_l152lav_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav.out -solve)
set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_lseu_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_lseu.out -solve)
set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_markshare1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1.out -solve)
set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_markshare2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2.out -solve)
set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_mas74_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas74.out -solve)
set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_mas76_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas76.out -solve)
set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_misc03_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc03.out -solve)
set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_misc06_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc06.out -solve)
set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_misc07_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc07.out -solve)
set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mitre_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mitre.out -solve)
set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mkc_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mkc.out -solve)
set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_mod008_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod008.out -solve)
set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mod010_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod010.out -solve)
set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_mod011_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod011.out -solve)
set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_modglob_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_modglob.out -solve)
set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_noswot_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_noswot.out -solve)
set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_nw04_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_nw04.out -solve)
set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0033_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0033.out -solve)
set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0201_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0201.out -solve)
set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0282_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0282.out -solve)
set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p0548_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0548.out -solve)
set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_p2756_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p2756.out -solve)
set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_pk1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pk1.out -solve)
set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_pp08aCUTS_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS.out -solve)
set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_pp08a_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a.out -solve)
set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_qiu_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qiu.out -solve)
set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_qnet1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1.out -solve)
set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_qnet1_o_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o.out -solve)
set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_rentacar_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar.out -solve)
set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_rgn_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rgn.out -solve)
set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_rout_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rout.out -solve)
set_tests_properties(miplib3_rout_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_rout_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_set1ch_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch.out -solve)
set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_seymour_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_seymour.out -solve)
set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_stein27_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein27.out -solve)
set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_stein45_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein45.out -solve)
set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_swath_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_swath.out -solve)
set_tests_properties(miplib3_swath_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_test(NAME miplib3_vpm1_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1.out -solve)
set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES LABELS "MPS")

add_test(NAME miplib3_vpm2_symphony_standard 
         COMMAND $<TARGET_FILE:symphony> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2.out -solve)
set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES LABELS "MPS")
