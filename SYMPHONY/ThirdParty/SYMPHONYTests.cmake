include(coin-macros)

#
# Infeas tests
#

add_coin_test(infeas_chemcom_mps_symphony_standard symphony
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_symphony.out
             ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_symphony.log)

set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_chemcom_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_pilot4i_mps_symphony_standard symphony
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_symphony.out
             ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_symphony.log)

set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pilot4i_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_reactor_mps_symphony_standard symphony
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_reactor_symphony.out
             ${CMAKE_BINARY_DIR}/tests/infeas_reactor_symphony.log)

set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_reactor_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgetam_mps_symphony_standard symphony
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_symphony.out
             ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_symphony.log)

set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgetam_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_refinery_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_refinery_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_refinery_symphony.log)

set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_refinery_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_cplex2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_symphony.log)

set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_forest6_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_forest6_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_forest6_symphony.log)

set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_forest6_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_cplex1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_symphony.log)

set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_box1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_box1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_box1_symphony.log)

set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_box1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_itest6_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_itest6_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_itest6_symphony.log)

set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest6_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgindy_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_symphony.log)

set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgindy_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_klein2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_klein2_symphony.log)

set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_ceria3d_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_symphony.log)

set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ceria3d_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_ex72a_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_symphony.log)

set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex72a_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_greenbea_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_symphony.log)

set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

add_coin_test(infeas_klein3_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_klein3_symphony.log)

set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein3_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_itest2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_itest2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_itest2_symphony.log)

set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_ex73a_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_symphony.log)

set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex73a_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_klein1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_klein1_symphony.log)

set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_woodinfe_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_symphony.log)

set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_woodinfe_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgprtr_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_symphony.log)

set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgprtr_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_galenet_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_galenet_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_galenet_symphony.log)

set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_galenet_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_gran_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_gran_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_gran_symphony.log)

set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gran_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_mondou2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_symphony.log)

set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_mondou2_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_qual_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_qual_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_qual_symphony.log)

set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_qual_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_vol1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_vol1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_vol1_symphony.log)

set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_vol1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_pang_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_pang_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_pang_symphony.log)

set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pang_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgdbg1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_symphony.log)

set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgdbg1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_gosh_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_gosh_symphony.out
              ${CMAKE_BINARY_DIR}/tests/infeas_gosh_symphony.log)

set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gosh_mps_symphony_standard PROPERTIES LABELS "MPS")

#
# Big test
#

add_coin_test(big_mkc7_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/big_mkc7_symphony.out
              ${CMAKE_BINARY_DIR}/tests/big_mkc7_symphony.log)

set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(big_mkc7_mps_symphony_standard PROPERTIES LABELS "MPS;LONG")

#
# Sample tests
#

add_coin_test(sample_scOneInt_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps
              ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_symphony.log)

set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_scOneInt_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_p0201_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0201_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_p0201_symphony.log)

set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0201_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_p0548_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0548_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_p0548_symphony.log)

set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0548_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_hello_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps
              ${CMAKE_BINARY_DIR}/tests/sample_hello_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_hello_symphony.log)

set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_hello_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_e226_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps
              ${CMAKE_BINARY_DIR}/tests/sample_e226_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_e226_symphony.log)

set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_e226_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_tp3_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_tp3_symphony.log)

set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp3_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_tp4_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp4_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_tp4_symphony.log)

set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp4_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_finnis_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps
              ${CMAKE_BINARY_DIR}/tests/sample_finnis_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_finnis_symphony.log)

set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_5_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_symphony.log)

set_tests_properties(sample_5_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_5_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_exmip1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1_symphony.log)

set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_exmip1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_share2qp_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps
              ${CMAKE_BINARY_DIR}/tests/sample_share2qp_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_share2qp_symphony.log)

set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_share2qp_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_afiro_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps
              ${CMAKE_BINARY_DIR}/tests/sample_afiro_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_afiro_symphony.log)

set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_nw460_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps
              ${CMAKE_BINARY_DIR}/tests/sample_nw460_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_nw460_symphony.log)

set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_nw460_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_brandy_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps
              ${CMAKE_BINARY_DIR}/tests/sample_brandy_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_brandy_symphony.log)

set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_tp5_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp5_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_tp5_symphony.log)

set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp5_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_pack1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps
              ${CMAKE_BINARY_DIR}/tests/sample_pack1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_pack1_symphony.log)

set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_pack1_mps_symphony_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_p0033_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0033_symphony.out
              ${CMAKE_BINARY_DIR}/tests/sample_p0033_symphony.log)

set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0033_mps_symphony_standard PROPERTIES LABELS "MPS")

#
# Netlib tests
#

# Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme

add_coin_test(netlib_fit2d_mps_symphony_standard symphony
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz
             ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_symphony.out
             ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_symphony.log)

set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2d_mps_symphony_standard PROPERTIES LABELS "MPS")

create_log_analysis(netlib_fit2d_mps_symphony_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_symphony.log "Optimal objective <number>" -68464.293294 1e-6)
set_tests_properties(netlib_fit2d_mps_symphony_standard_01_Analysis PROPERTIES LABELS "MPS")

add_coin_test(netlib_forplan_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_forplan_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_forplan_symphony.log)

set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -664.218(73953)?")
set_tests_properties(netlib_forplan_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship08s_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_symphony.log)

set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1920098.21(05)?")
set_tests_properties(netlib_ship08s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fit1d_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_symphony.log)

set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -9146.378092(4)?")
set_tests_properties(netlib_fit1d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_brandy_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_brandy_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_brandy_symphony.log)

set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1518.509896(5)?")
set_tests_properties(netlib_brandy_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scfxm1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_symphony.log)

set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 18416.7590(28)?")
set_tests_properties(netlib_scfxm1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_grow22_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow22_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_grow22_symphony.log)

set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -160834336(.48)?")
set_tests_properties(netlib_grow22_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bandm_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bandm_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bandm_symphony.log)

set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -158.628018(45)?")
set_tests_properties(netlib_bandm_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fit1p_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_symphony.log)

set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 9146.378092(4)?")
set_tests_properties(netlib_fit1p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_standata_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standata_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_standata_symphony.log)

set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1257.6995(000)?")
set_tests_properties(netlib_standata_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilot4_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_symphony.log)

set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2581.13926(41)?")
set_tests_properties(netlib_pilot4_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_stocfor2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_symphony.log)

set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -39024.4085(38)?")
set_tests_properties(netlib_stocfor2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sctap1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_symphony.log)

set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1412.25(00000)?")
set_tests_properties(netlib_sctap1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scrs8_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_symphony.log)

set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 904.29(998619)?")
set_tests_properties(netlib_scrs8_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sctap2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_symphony.log)

set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1724.80714(29)?")
set_tests_properties(netlib_sctap2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilot87_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_symphony.log)

set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 301.710(72827)?")
set_tests_properties(netlib_pilot87_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_greenbea_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_symphony.log)

set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -72462405.9(08)?")
set_tests_properties(netlib_greenbea_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_woodw_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_woodw_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_woodw_symphony.log)

set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1.304476333(1)?")
set_tests_properties(netlib_woodw_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_recipe_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_recipe_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_recipe_symphony.log)

set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -266.616(00000)?")
set_tests_properties(netlib_recipe_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_share1b_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_share1b_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_share1b_symphony.log)

set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -76589.3185(79)?")
set_tests_properties(netlib_share1b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_tuff_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_tuff_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_tuff_symphony.log)

set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 0.292147765(09)?")
set_tests_properties(netlib_tuff_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_share2b_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_share2b_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_share2b_symphony.log)

set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -415.7322407(4)?")
set_tests_properties(netlib_share2b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bore3d_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_symphony.log)

set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1373.080394(2)?")
set_tests_properties(netlib_bore3d_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_d2q06c_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_symphony.log)

set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 122784.236(15)?")
set_tests_properties(netlib_d2q06c_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc50b_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_symphony.log)

set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -70")
set_tests_properties(netlib_sc50b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilot_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot_symphony.log)

set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -557.4043(0007)?")
set_tests_properties(netlib_pilot_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bnl1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_symphony.log)

set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1977.6292(856)?")
set_tests_properties(netlib_bnl1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship04l_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_symphony.log)

set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1793324.538(0)?")
set_tests_properties(netlib_ship04l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc105_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc105_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc105_symphony.log)

set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -52.20206121(2)?")
set_tests_properties(netlib_sc105_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_boeing2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_symphony.log)

set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -315.018728(02)?")
set_tests_properties(netlib_boeing2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_nesm_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_nesm_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_nesm_symphony.log)

set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 14076073.0(35)?")
set_tests_properties(netlib_nesm_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc205_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc205_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc205_symphony.log)

set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -52.202061(212)?")
set_tests_properties(netlib_sc205_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_finnis_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_finnis_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_finnis_symphony.log)

set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 172790.9(6547)?")
set_tests_properties(netlib_finnis_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_degen2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_degen2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_degen2_symphony.log)

set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -1435.178(0000)?")
set_tests_properties(netlib_degen2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_maros-r7_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps
              ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_symphony.log)

set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1497185.166(5)?")
set_tests_properties(netlib_maros-r7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship04s_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_symphony.log)

set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1798714.7(004)?")
set_tests_properties(netlib_ship04s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_wood1p_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_symphony.log)

set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1.44290241(16)?")
set_tests_properties(netlib_wood1p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_lotfi_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_symphony.log)

set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -25.26470606(2)?")
set_tests_properties(netlib_lotfi_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_gfrd_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps
              ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_symphony.log)

set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 6902235.9(995)?")
set_tests_properties(netlib_gfrd_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_etamacro_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_symphony.log)

set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -755.7152(1774)?")
set_tests_properties(netlib_etamacro_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_grow7_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow7_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_grow7_symphony.log)

set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -47787811.81(5)?")
set_tests_properties(netlib_grow7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_dfl001_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_symphony.log)

set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES LABELS "MPS")
# (there's a ** in the readme file in the netlib website)
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 112664396.0(5)?") # Symphony value
set_tests_properties(netlib_dfl001_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_agg_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_agg_symphony.log)

set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -35991767.2(87)?")
set_tests_properties(netlib_agg_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_standgub_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standgub_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_standgub_symphony.log)

set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES LABELS "MPS")
# Nothing in the readme - Symphony value
set(TEST_REGEX "")
add_regex(TEST_REGEX "1257.6995")
set_tests_properties(netlib_standgub_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship12l_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_symphony.log)

set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1470187.919(3)?")
set_tests_properties(netlib_ship12l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_standmps_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standmps_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_standmps_symphony.log)

set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1406.0175(000)?")
set_tests_properties(netlib_standmps_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scagr25_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_symphony.log)

set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -14753433.06(1)?")
set_tests_properties(netlib_scagr25_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_capri_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_capri_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_capri_symphony.log)

set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2690.01291(38)?")
set_tests_properties(netlib_capri_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_cycle_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_cycle_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_cycle_symphony.log)

set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -5.22639302(49)?")
set_tests_properties(netlib_cycle_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_greenbeb_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_symphony.log)

set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -4302147.6065")
set_tests_properties(netlib_greenbeb_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_agg2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_agg2_symphony.log)

set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -20239252.3(56)?")
set_tests_properties(netlib_agg2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_stair_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stair_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_stair_symphony.log)

set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -251.266951(19)?")
set_tests_properties(netlib_stair_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_shell_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_shell_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_shell_symphony.log)

set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1208825346(.0)?")
set_tests_properties(netlib_shell_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sierra_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sierra_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sierra_symphony.log)

set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 15394362.18(4)?")
set_tests_properties(netlib_sierra_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_afiro_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_afiro_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_afiro_symphony.log)

set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -464.753142(86)?")
set_tests_properties(netlib_afiro_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scsd1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_symphony.log)

set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8.666666674(3)?")
set_tests_properties(netlib_scsd1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scsd8_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_symphony.log)

set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 904.9999999(3)?")
set_tests_properties(netlib_scsd8_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship08l_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_symphony.log)

set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1909055.211(4)?")
set_tests_properties(netlib_ship08l_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_25fv47_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_symphony.log)

set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 5501.845888(3)?")
set_tests_properties(netlib_25fv47_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_czprob_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_czprob_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_czprob_symphony.log)

set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2185196.69(89)?")
set_tests_properties(netlib_czprob_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_adlittle_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_symphony.log)

set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 225494.963(16)?")
set_tests_properties(netlib_adlittle_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_d6cube_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_symphony.log)

set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 315.491666(67)?")
set_tests_properties(netlib_d6cube_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scorpion_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_symphony.log)

set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1878.12482(27)?")
set_tests_properties(netlib_scorpion_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sctap3_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_symphony.log)

set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1424(.0)?")
set_tests_properties(netlib_sctap3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_seba_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_seba_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_seba_symphony.log)

set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 15711.6")
set_tests_properties(netlib_seba_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_modszk1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_symphony.log)

set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 320.619729(06)?")
set_tests_properties(netlib_modszk1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilotnov_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_symphony.log)

set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -4497.276188(2)?")
set_tests_properties(netlib_pilotnov_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_beaconfd_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_symphony.log)

set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 33592.4858(07)?")
set_tests_properties(netlib_beaconfd_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_e226_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_e226_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_e226_symphony.log)

set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -18.751929(066)?")
set_tests_properties(netlib_e226_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_degen3_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_degen3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_degen3_symphony.log)

set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -987.294(00000)?")
set_tests_properties(netlib_degen3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scfxm2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_symphony.log)

set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 36660.26156(5)?")
set_tests_properties(netlib_scfxm2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fffff800_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_symphony.log)

set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 555679.611(65)?")
set_tests_properties(netlib_fffff800_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_kb2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_kb2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_kb2_symphony.log)

set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -1749.9001(299)?")
set_tests_properties(netlib_kb2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ganges_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ganges_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ganges_symphony.log)

set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -109586.363(56)?")
set_tests_properties(netlib_ganges_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_stocfor1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_symphony.log)

set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -41131.9762(19)?")
set_tests_properties(netlib_stocfor1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scsd6_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_symphony.log)

set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 50.5000000(78)?")
set_tests_properties(netlib_scsd6_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_80bau3b_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_symphony.log)

set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 987232.160(72)?")
set_tests_properties(netlib_80bau3b_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship12s_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_symphony.log)

set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1489236.134(4)?")
set_tests_properties(netlib_ship12s_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_agg3_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_agg3_symphony.log)

set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 10312115.9(35)?")
set_tests_properties(netlib_agg3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_maros_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_maros_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_maros_symphony.log)

set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -58063.7437(01)?")
set_tests_properties(netlib_maros_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_perold_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_perold_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_perold_symphony.log)

set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -9380.758(0773)?")
set_tests_properties(netlib_perold_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scagr7_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_symphony.log)

set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2331389.25(48)?")
set_tests_properties(netlib_scagr7_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scfxm3_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_symphony.log)

set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 54901.25455(0)?")
set_tests_properties(netlib_scfxm3_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_grow15_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow15_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_grow15_symphony.log)

set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -106870941(.29)?")
set_tests_properties(netlib_grow15_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fit2p_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_symphony.log)

set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 68464.2932(32)?")
set_tests_properties(netlib_fit2p_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_boeing1_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_symphony.log)

set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -335.2135675(1)?")
set_tests_properties(netlib_boeing1_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc50a_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_symphony.log)

set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -64.5750770(59)?")
set_tests_properties(netlib_sc50a_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_vtpbase_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_symphony.log)

set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 129831.462(46)?")
set_tests_properties(netlib_vtpbase_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_blend_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_blend_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_blend_symphony.log)

set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -30.8121498(46)?")
set_tests_properties(netlib_blend_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bnl2_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_symphony.log)

set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1811.23654(04)?")
set_tests_properties(netlib_bnl2_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_israel_mps_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_israel_symphony.out
              ${CMAKE_BINARY_DIR}/tests/netlib_israel_symphony.log)

set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -896644.821(86)?")
set_tests_properties(netlib_israel_mps_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

#
# miplib3 tests
#

add_coin_test(miplib3_10teams_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_symphony.log)

set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 924")
set_tests_properties(miplib3_10teams_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_air03_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air03_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_air03_symphony.log)

set_tests_properties(miplib3_air03_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_air03_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 340160")
set_tests_properties(miplib3_air03_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_air04_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air04_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_air04_symphony.log)

set_tests_properties(miplib3_air04_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air04_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 56137")
set_tests_properties(miplib3_air04_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_air05_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air05_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_air05_symphony.log)

set_tests_properties(miplib3_air05_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air05_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 26374")
set_tests_properties(miplib3_air05_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_arki001_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_symphony.log)

set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7580813.0459") # Not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_arki001_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_bell3a_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_symphony.log)

set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 878430.32")
set_tests_properties(miplib3_bell3a_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_bell5_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_symphony.log)

set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8966406.49")
set_tests_properties(miplib3_bell5_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_blend2_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_symphony.log)

set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7.598985")
set_tests_properties(miplib3_blend2_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_cap6000_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_symphony.log)

set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2451377")
set_tests_properties(miplib3_cap6000_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_dano3mip_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_symphony.log)

set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 728.1111") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_dano3mip_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_danoint_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_symphony.log)

set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 65.67")
set_tests_properties(miplib3_danoint_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_dcmulti_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_symphony.log)

set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 188182")
set_tests_properties(miplib3_dcmulti_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_dsbmip_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_symphony.log)

set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -305.19817501")
set_tests_properties(miplib3_dsbmip_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_egout_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_egout_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_egout_symphony.log)

set_tests_properties(miplib3_egout_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_egout_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 568.101")
set_tests_properties(miplib3_egout_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_enigma_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_symphony.log)

set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 0.0")
set_tests_properties(miplib3_enigma_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_fast0507_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_symphony.log)

set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 174")
set_tests_properties(miplib3_fast0507_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_fiber_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_symphony.log)

set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 405935.18000")
set_tests_properties(miplib3_fiber_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_fixnet6_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_symphony.log)

set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3983")
set_tests_properties(miplib3_fixnet6_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_flugpl_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_symphony.log)

set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1201500")
set_tests_properties(miplib3_flugpl_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gen_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gen_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gen_symphony.log)

set_tests_properties(miplib3_gen_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gen_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 112313")
set_tests_properties(miplib3_gen_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa2_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_symphony.log)

set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 25779856.372")
set_tests_properties(miplib3_gesa2_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa2_o_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_symphony.log)

set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 25779856.372")
set_tests_properties(miplib3_gesa2_o_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa3_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_symphony.log)

set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 27991042.648")
set_tests_properties(miplib3_gesa3_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa3_o_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_symphony.log)

set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 27991042.648")
set_tests_properties(miplib3_gesa3_o_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gt2_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_symphony.log)

set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 21166.000")
set_tests_properties(miplib3_gt2_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_harp2_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_symphony.log)

set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -73899798.00")
set_tests_properties(miplib3_harp2_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_khb05250_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_symphony.log)

set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 106940226")
set_tests_properties(miplib3_khb05250_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_l152lav_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_symphony.log)

set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 4722")
set_tests_properties(miplib3_l152lav_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_lseu_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_symphony.log)

set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1120")
set_tests_properties(miplib3_lseu_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_markshare1_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_symphony.log)

set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1")
set_tests_properties(miplib3_markshare1_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_markshare2_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_symphony.log)

set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1")
set_tests_properties(miplib3_markshare2_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mas74_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_symphony.log)

set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 11801.1857")
set_tests_properties(miplib3_mas74_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mas76_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_symphony.log)

set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 4005.1")
set_tests_properties(miplib3_mas76_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_misc03_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_symphony.log)

set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3360")
set_tests_properties(miplib3_misc03_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_misc06_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_symphony.log)

set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 12850.8607")
set_tests_properties(miplib3_misc06_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_misc07_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_symphony.log)

set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2810")
set_tests_properties(miplib3_misc07_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mitre_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_symphony.log)

set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 115155")
set_tests_properties(miplib3_mitre_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mkc_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_symphony.log)

set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -553.75") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_mkc_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mod008_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_symphony.log)

set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 307")
set_tests_properties(miplib3_mod008_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mod010_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_symphony.log)

set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 6548")
set_tests_properties(miplib3_mod010_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mod011_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_symphony.log)

set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -54558535")
set_tests_properties(miplib3_mod011_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_modglob_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_symphony.log)

set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 20740508")
set_tests_properties(miplib3_modglob_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_noswot_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_symphony.log)

set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -43")
set_tests_properties(miplib3_noswot_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_nw04_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_symphony.log)

set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 16862")
set_tests_properties(miplib3_nw04_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0033_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_symphony.log)

set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3089")
set_tests_properties(miplib3_p0033_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0201_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_symphony.log)

set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7615")
set_tests_properties(miplib3_p0201_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0282_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_symphony.log)

set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 258411")
set_tests_properties(miplib3_p0282_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0548_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_symphony.log)

set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8691")
set_tests_properties(miplib3_p0548_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p2756_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_symphony.log)

set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3124")
set_tests_properties(miplib3_p2756_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_pk1_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_symphony.log)

set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 11.0")
set_tests_properties(miplib3_pk1_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_pp08aCUTS_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_symphony.log)

set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7350.0")
set_tests_properties(miplib3_pp08aCUTS_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_pp08a_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_symphony.log)

set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7350.0")
set_tests_properties(miplib3_pp08a_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_qiu_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_symphony.log)

set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -132.873137")
set_tests_properties(miplib3_qiu_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_qnet1_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_symphony.log)

set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 16029.692681")
set_tests_properties(miplib3_qnet1_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_qnet1_o_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_symphony.log)

set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 16029.692681")
set_tests_properties(miplib3_qnet1_o_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_rentacar_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_symphony.log)

set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 30356761")
set_tests_properties(miplib3_rentacar_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_rgn_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_symphony.log)

set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 82.1999")
set_tests_properties(miplib3_rgn_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_rout_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rout_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_rout_symphony.log)

set_tests_properties(miplib3_rout_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_rout_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1077.56")
set_tests_properties(miplib3_rout_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_set1ch_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_symphony.log)

set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 54537.75")
set_tests_properties(miplib3_set1ch_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_seymour_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_symphony.log)

set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 423") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_seymour_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_stein27_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_symphony.log)

set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 18")
set_tests_properties(miplib3_stein27_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_stein45_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_symphony.log)

set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 30")
set_tests_properties(miplib3_stein45_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_swath_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_swath_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_swath_symphony.log)

set_tests_properties(miplib3_swath_symphony_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_symphony_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 497.603") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_swath_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_vpm1_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_symphony.log)

set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 20")
set_tests_properties(miplib3_vpm1_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_vpm2_symphony_standard symphony
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_symphony.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_symphony.log)

set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 13.75")
set_tests_properties(miplib3_vpm2_symphony_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
