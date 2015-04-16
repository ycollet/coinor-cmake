include(coin-macros)

#
# Infeas tests
#

add_coin_test(infeas_chemcom_mps_cbc_standard cbc
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_cbc.out
             ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_cbc.log)

set_tests_properties(infeas_chemcom_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_chemcom_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_pilot4i_mps_cbc_standard cbc
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_cbc.out
             ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_cbc.log)

set_tests_properties(infeas_pilot4i_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pilot4i_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_reactor_mps_cbc_standard cbc
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_reactor_cbc.out
             ${CMAKE_BINARY_DIR}/tests/infeas_reactor_cbc.log)

set_tests_properties(infeas_reactor_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_reactor_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgetam_mps_cbc_standard cbc
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_cbc.out
             ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_cbc.log)

set_tests_properties(infeas_bgetam_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgetam_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_refinery_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_refinery_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_refinery_cbc.log)

set_tests_properties(infeas_refinery_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_refinery_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_cplex2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_cbc.log)

set_tests_properties(infeas_cplex2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex2_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_forest6_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_forest6_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_forest6_cbc.log)

set_tests_properties(infeas_forest6_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_forest6_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_cplex1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_cbc.log)

set_tests_properties(infeas_cplex1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_box1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_box1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_box1_cbc.log)

set_tests_properties(infeas_box1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_box1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_itest6_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_itest6_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_itest6_cbc.log)

set_tests_properties(infeas_itest6_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest6_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgindy_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_cbc.log)

set_tests_properties(infeas_bgindy_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgindy_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_klein2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_klein2_cbc.log)

set_tests_properties(infeas_klein2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein2_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_ceria3d_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_cbc.log)

set_tests_properties(infeas_ceria3d_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ceria3d_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_ex72a_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_cbc.log)

set_tests_properties(infeas_ex72a_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex72a_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_greenbea_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_cbc.log)

set_tests_properties(infeas_greenbea_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_greenbea_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")

add_coin_test(infeas_klein3_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_klein3_cbc.log)

set_tests_properties(infeas_klein3_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein3_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_itest2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_itest2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_itest2_cbc.log)

set_tests_properties(infeas_itest2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest2_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_ex73a_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_cbc.log)

set_tests_properties(infeas_ex73a_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex73a_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_klein1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_klein1_cbc.log)

set_tests_properties(infeas_klein1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_woodinfe_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_cbc.log)

set_tests_properties(infeas_woodinfe_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_woodinfe_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgprtr_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_cbc.log)

set_tests_properties(infeas_bgprtr_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgprtr_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_galenet_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_galenet_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_galenet_cbc.log)

set_tests_properties(infeas_galenet_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_galenet_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_gran_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_gran_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_gran_cbc.log)

set_tests_properties(infeas_gran_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gran_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_mondou2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_cbc.log)

set_tests_properties(infeas_mondou2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_mondou2_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_qual_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_qual_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_qual_cbc.log)

set_tests_properties(infeas_qual_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_qual_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_vol1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_vol1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_vol1_cbc.log)

set_tests_properties(infeas_vol1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_vol1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_pang_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_pang_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_pang_cbc.log)

set_tests_properties(infeas_pang_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pang_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_bgdbg1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_cbc.log)

set_tests_properties(infeas_bgdbg1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgdbg1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(infeas_gosh_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_gosh_cbc.out
              ${CMAKE_BINARY_DIR}/tests/infeas_gosh_cbc.log)

set_tests_properties(infeas_gosh_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gosh_mps_cbc_standard PROPERTIES LABELS "MPS")

#
# Big test
#

add_coin_test(big_mkc7_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/big_mkc7_cbc.out
              ${CMAKE_BINARY_DIR}/tests/big_mkc7_cbc.log)

set_tests_properties(big_mkc7_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(big_mkc7_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")

#
# Sample tests
#

add_coin_test(sample_scOneInt_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps
              ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_cbc.log)

set_tests_properties(sample_scOneInt_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_scOneInt_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_p0201_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0201_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_p0201_cbc.log)

set_tests_properties(sample_p0201_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0201_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_p0548_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0548_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_p0548_cbc.log)

set_tests_properties(sample_p0548_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0548_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_hello_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps
              ${CMAKE_BINARY_DIR}/tests/sample_hello_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_hello_cbc.log)

set_tests_properties(sample_hello_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_hello_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_e226_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps
              ${CMAKE_BINARY_DIR}/tests/sample_e226_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_e226_cbc.log)

set_tests_properties(sample_e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_e226_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_tp3_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_tp3_cbc.log)

set_tests_properties(sample_tp3_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp3_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_tp4_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp4_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_tp4_cbc.log)

set_tests_properties(sample_tp4_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp4_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_finnis_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps
              ${CMAKE_BINARY_DIR}/tests/sample_finnis_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_finnis_cbc.log)

set_tests_properties(sample_finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_finnis_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_5_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_cbc.log)

set_tests_properties(sample_5_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_5_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_exmip1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1_cbc.log)

set_tests_properties(sample_exmip1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_exmip1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_share2qp_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps
              ${CMAKE_BINARY_DIR}/tests/sample_share2qp_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_share2qp_cbc.log)

set_tests_properties(sample_share2qp_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_share2qp_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_afiro_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps
              ${CMAKE_BINARY_DIR}/tests/sample_afiro_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_afiro_cbc.log)

set_tests_properties(sample_afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_afiro_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_nw460_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps
              ${CMAKE_BINARY_DIR}/tests/sample_nw460_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_nw460_cbc.log)

set_tests_properties(sample_nw460_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_nw460_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_brandy_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps
              ${CMAKE_BINARY_DIR}/tests/sample_brandy_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_brandy_cbc.log)

set_tests_properties(sample_brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_brandy_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_tp5_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp5_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_tp5_cbc.log)

set_tests_properties(sample_tp5_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp5_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_pack1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps
              ${CMAKE_BINARY_DIR}/tests/sample_pack1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_pack1_cbc.log)

set_tests_properties(sample_pack1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_pack1_mps_cbc_standard PROPERTIES LABELS "MPS")

add_coin_test(sample_p0033_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0033_cbc.out
              ${CMAKE_BINARY_DIR}/tests/sample_p0033_cbc.log)

set_tests_properties(sample_p0033_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0033_mps_cbc_standard PROPERTIES LABELS "MPS")

#
# Netlib tests
#

# Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme

add_coin_test(netlib_fit2d_mps_cbc_standard cbc
             ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz
             ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc.out
             ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc.log)

set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES LABELS "MPS")

create_log_analysis(netlib_fit2d_mps_cbc_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc.log "Optimal objective <number>" -68464.293294 1e-6)
set_tests_properties(netlib_fit2d_mps_cbc_standard_01_Analysis PROPERTIES LABELS "MPS")

add_coin_test(netlib_forplan_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_forplan_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_forplan_cbc.log)

set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -664.218(73953)?")
set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship08s_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_cbc.log)

set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1920098.21(05)?")
set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fit1d_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_cbc.log)

set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -9146.378092(4)?")
set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_brandy_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_brandy_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_brandy_cbc.log)

set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1518.509896(5)?")
set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scfxm1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_cbc.log)

set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 18416.7590(28)?")
set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_grow22_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow22_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_grow22_cbc.log)

set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -160834336(.48)?")
set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bandm_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bandm_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bandm_cbc.log)

set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -158.628018(45)?")
set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fit1p_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_cbc.log)

set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 9146.378092(4)?")
set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_standata_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standata_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_standata_cbc.log)

set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1257.6995(000)?")
set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilot4_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_cbc.log)

set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2581.13926(41)?")
set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_stocfor2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_cbc.log)

set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -39024.4085(38)?")
set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sctap1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_cbc.log)

set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1412.25(00000)?")
set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scrs8_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_cbc.log)

set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 904.29(998619)?")
set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sctap2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_cbc.log)

set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1724.80714(29)?")
set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilot87_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_cbc.log)

set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 301.710(72827)?")
set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_greenbea_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_cbc.log)

set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -72462405.9(08)?")
set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_woodw_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_woodw_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_woodw_cbc.log)

set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1.304476333(1)?")
set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_recipe_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_recipe_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_recipe_cbc.log)

set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -266.616(00000)?")
set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_share1b_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_share1b_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_share1b_cbc.log)

set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -76589.3185(79)?")
set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_tuff_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_tuff_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_tuff_cbc.log)

set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 0.292147765(09)?")
set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_share2b_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_share2b_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_share2b_cbc.log)

set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -415.7322407(4)?")
set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bore3d_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_cbc.log)

set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1373.080394(2)?")
set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_d2q06c_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_cbc.log)

set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 122784.236(15)?")
set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc50b_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_cbc.log)

set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -70")
set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilot_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot_cbc.log)

set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -557.4043(0007)?")
set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bnl1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_cbc.log)

set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1977.6292(856)?")
set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship04l_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_cbc.log)

set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1793324.538(0)?")
set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc105_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc105_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc105_cbc.log)

set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -52.20206121(2)?")
set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_boeing2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_cbc.log)

set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -315.018728(02)?")
set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_nesm_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_nesm_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_nesm_cbc.log)

set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 14076073.0(35)?")
set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc205_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc205_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc205_cbc.log)

set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -52.202061(212)?")
set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_finnis_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_finnis_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_finnis_cbc.log)

set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 172790.9(6547)?")
set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_degen2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_degen2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_degen2_cbc.log)

set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -1435.178(0000)?")
set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_maros-r7_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps
              ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_cbc.log)

set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1497185.166(5)?")
set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship04s_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_cbc.log)

set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1798714.7(004)?")
set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_wood1p_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_cbc.log)

set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1.44290241(16)?")
set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_lotfi_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_cbc.log)

set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -25.26470606(2)?")
set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_gfrd_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps
              ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_cbc.log)

set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 6902235.9(995)?")
set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_etamacro_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_cbc.log)

set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -755.7152(1774)?")
set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_grow7_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow7_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_grow7_cbc.log)

set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -47787811.81(5)?")
set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_dfl001_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_cbc.log)

set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES LABELS "MPS")
# (there's a ** in the readme file in the netlib website)
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 112664396.0(5)?") # Cbc value
set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_agg_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_agg_cbc.log)

set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -35991767.2(87)?")
set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_standgub_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standgub_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_standgub_cbc.log)

set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES LABELS "MPS")
# Nothing in the readme - Cbc value
set(TEST_REGEX "")
add_regex(TEST_REGEX "1257.6995")
set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship12l_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_cbc.log)

set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1470187.919(3)?")
set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_standmps_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standmps_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_standmps_cbc.log)

set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1406.0175(000)?")
set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scagr25_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_cbc.log)

set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -14753433.06(1)?")
set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_capri_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_capri_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_capri_cbc.log)

set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2690.01291(38)?")
set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_cycle_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_cycle_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_cycle_cbc.log)

set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -5.22639302(49)?")
set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_greenbeb_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_cbc.log)

set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -4302147.6065")
set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_agg2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_agg2_cbc.log)

set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -20239252.3(56)?")
set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_stair_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stair_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_stair_cbc.log)

set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -251.266951(19)?")
set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_shell_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_shell_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_shell_cbc.log)

set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1208825346(.0)?")
set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sierra_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sierra_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sierra_cbc.log)

set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 15394362.18(4)?")
set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_afiro_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_afiro_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_afiro_cbc.log)

set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -464.753142(86)?")
set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scsd1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_cbc.log)

set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8.666666674(3)?")
set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scsd8_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_cbc.log)

set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 904.9999999(3)?")
set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship08l_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_cbc.log)

set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1909055.211(4)?")
set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_25fv47_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_cbc.log)

set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 5501.845888(3)?")
set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_czprob_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_czprob_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_czprob_cbc.log)

set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2185196.69(89)?")
set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_adlittle_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_cbc.log)

set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 225494.963(16)?")
set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_d6cube_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_cbc.log)

set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 315.491666(67)?")
set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scorpion_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_cbc.log)

set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1878.12482(27)?")
set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sctap3_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_cbc.log)

set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1424(.0)?")
set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_seba_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_seba_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_seba_cbc.log)

set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 15711.6")
set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_modszk1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_cbc.log)

set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 320.619729(06)?")
set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_pilotnov_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_cbc.log)

set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -4497.276188(2)?")
set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_beaconfd_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_cbc.log)

set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 33592.4858(07)?")
set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_e226_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_e226_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_e226_cbc.log)

set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -18.751929(066)?")
set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_degen3_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_degen3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_degen3_cbc.log)

set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -987.294(00000)?")
set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scfxm2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_cbc.log)

set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 36660.26156(5)?")
set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fffff800_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_cbc.log)

set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 555679.611(65)?")
set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_kb2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_kb2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_kb2_cbc.log)

set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -1749.9001(299)?")
set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ganges_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ganges_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ganges_cbc.log)

set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -109586.363(56)?")
set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_stocfor1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_cbc.log)

set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -41131.9762(19)?")
set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scsd6_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_cbc.log)

set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 50.5000000(78)?")
set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_80bau3b_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_cbc.log)

set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 987232.160(72)?")
set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_ship12s_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_cbc.log)

set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1489236.134(4)?")
set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_agg3_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_agg3_cbc.log)

set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 10312115.9(35)?")
set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_maros_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_maros_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_maros_cbc.log)

set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -58063.7437(01)?")
set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_perold_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_perold_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_perold_cbc.log)

set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -9380.758(0773)?")
set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scagr7_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_cbc.log)

set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2331389.25(48)?")
set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_scfxm3_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_cbc.log)

set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 54901.25455(0)?")
set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_grow15_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow15_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_grow15_cbc.log)

set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -106870941(.29)?")
set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_fit2p_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_cbc.log)

set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 68464.2932(32)?")
set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_boeing1_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_cbc.log)

set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -335.2135675(1)?")
set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_sc50a_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_cbc.log)

set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -64.5750770(59)?")
set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_vtpbase_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_cbc.log)

set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 129831.462(46)?")
set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_blend_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_blend_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_blend_cbc.log)

set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -30.8121498(46)?")
set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_bnl2_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_cbc.log)

set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1811.23654(04)?")
set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(netlib_israel_mps_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_israel_cbc.out
              ${CMAKE_BINARY_DIR}/tests/netlib_israel_cbc.log)

set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -896644.821(86)?")
set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

#
# miplib3 tests
#

add_coin_test(miplib3_10teams_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_cbc.log)

set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 924")
set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_air03_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air03_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_air03_cbc.log)

set_tests_properties(miplib3_air03_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_air03_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 340160")
set_tests_properties(miplib3_air03_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_air04_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air04_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_air04_cbc.log)

set_tests_properties(miplib3_air04_cbc_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air04_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 56137")
set_tests_properties(miplib3_air04_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_air05_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air05_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_air05_cbc.log)

set_tests_properties(miplib3_air05_cbc_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air05_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 26374")
set_tests_properties(miplib3_air05_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_arki001_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_cbc.log)

set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7580813.0459") # Not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_bell3a_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_cbc.log)

set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 878430.32")
set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_bell5_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_cbc.log)

set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8966406.49")
set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_blend2_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_cbc.log)

set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7.598985")
set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_cap6000_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_cbc.log)

set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -2451377")
set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_dano3mip_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_cbc.log)

set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 728.1111") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_danoint_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_cbc.log)

set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 65.67")
set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_dcmulti_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_cbc.log)

set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 188182")
set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_dsbmip_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_cbc.log)

set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -305.19817501")
set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_egout_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_egout_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_egout_cbc.log)

set_tests_properties(miplib3_egout_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_egout_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 568.101")
set_tests_properties(miplib3_egout_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_enigma_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_cbc.log)

set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 0.0")
set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_fast0507_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_cbc.log)

set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 174")
set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_fiber_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_cbc.log)

set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 405935.18000")
set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_fixnet6_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_cbc.log)

set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3983")
set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_flugpl_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_cbc.log)

set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1201500")
set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gen_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gen_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gen_cbc.log)

set_tests_properties(miplib3_gen_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gen_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 112313")
set_tests_properties(miplib3_gen_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa2_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_cbc.log)

set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 25779856.372")
set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa2_o_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_cbc.log)

set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 25779856.372")
set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa3_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_cbc.log)

set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 27991042.648")
set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gesa3_o_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_cbc.log)

set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 27991042.648")
set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_gt2_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_cbc.log)

set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 21166.000")
set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_harp2_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_cbc.log)

set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -73899798.00")
set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_khb05250_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_cbc.log)

set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 106940226")
set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_l152lav_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_cbc.log)

set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 4722")
set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_lseu_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_cbc.log)

set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1120")
set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_markshare1_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_cbc.log)

set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1")
set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_markshare2_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_cbc.log)

set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1")
set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mas74_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_cbc.log)

set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 11801.1857")
set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mas76_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_cbc.log)

set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 4005.1")
set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_misc03_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_cbc.log)

set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3360")
set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_misc06_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_cbc.log)

set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 12850.8607")
set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_misc07_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_cbc.log)

set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 2810")
set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mitre_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_cbc.log)

set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 115155")
set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mkc_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_cbc.log)

set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -553.75") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mod008_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_cbc.log)

set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 307")
set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mod010_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_cbc.log)

set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 6548")
set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_mod011_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_cbc.log)

set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -54558535")
set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_modglob_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_cbc.log)

set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 20740508")
set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_noswot_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_cbc.log)

set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -43")
set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_nw04_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_cbc.log)

set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 16862")
set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0033_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_cbc.log)

set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3089")
set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0201_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_cbc.log)

set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7615")
set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0282_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_cbc.log)

set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 258411")
set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p0548_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_cbc.log)

set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 8691")
set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_p2756_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_cbc.log)

set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 3124")
set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_pk1_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_cbc.log)

set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 11.0")
set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_pp08aCUTS_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_cbc.log)

set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7350.0")
set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_pp08a_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_cbc.log)

set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 7350.0")
set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_qiu_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_cbc.log)

set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective -132.873137")
set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_qnet1_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_cbc.log)

set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 16029.692681")
set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_qnet1_o_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_cbc.log)

set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 16029.692681")
set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_rentacar_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_cbc.log)

set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 30356761")
set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_rgn_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_cbc.log)

set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 82.1999")
set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_rout_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rout_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_rout_cbc.log)

set_tests_properties(miplib3_rout_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_rout_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 1077.56")
set_tests_properties(miplib3_rout_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_set1ch_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_cbc.log)

set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 54537.75")
set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_seymour_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_cbc.log)

set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 423") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_stein27_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_cbc.log)

set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 18")
set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_stein45_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_cbc.log)

set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 30")
set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_swath_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_swath_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_swath_cbc.log)

set_tests_properties(miplib3_swath_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_cbc_standard PROPERTIES LABELS "MPS;LONG")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 497.603") # not optimal - has stated in the miplib3 report
set_tests_properties(miplib3_swath_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_vpm1_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_cbc.log)

set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 20")
set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

add_coin_test(miplib3_vpm2_cbc_standard cbc
              ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_cbc.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_cbc.log)

set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES LABELS "MPS")
set(TEST_REGEX "")
add_regex(TEST_REGEX "Optimal objective 13.75")
set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

if (CBC_BUILD_CBC_GENERIC) 
  #
  # Infeas tests
  #
  
  add_coin_test(infeas_chemcom_mps_cbc-generic_standard cbc-generic
               ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps
               ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_cbc-generic.out
               ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_cbc-generic.log)
  
  set_tests_properties(infeas_chemcom_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_pilot4i_mps_cbc-generic_standard cbc-generic
               ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps
               ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_cbc-generic.out
               ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_cbc-generic.log)
  
  set_tests_properties(infeas_pilot4i_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_reactor_mps_cbc-generic_standard cbc-generic
               ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps
               ${CMAKE_BINARY_DIR}/tests/infeas_reactor_cbc-generic.out
               ${CMAKE_BINARY_DIR}/tests/infeas_reactor_cbc-generic.log)
  
  set_tests_properties(infeas_reactor_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_bgetam_mps_cbc-generic_standard cbc-generic
               ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps
               ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_cbc-generic.out
               ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_cbc-generic.log)
  
  set_tests_properties(infeas_bgetam_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_refinery_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_refinery_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_refinery_cbc-generic.log)
  
  set_tests_properties(infeas_refinery_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_cplex2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_cbc-generic.log)
  
  set_tests_properties(infeas_cplex2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_forest6_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_forest6_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_forest6_cbc-generic.log)
  
  set_tests_properties(infeas_forest6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_cplex1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_cbc-generic.log)
  
  set_tests_properties(infeas_cplex1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_box1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_box1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_box1_cbc-generic.log)
  
  set_tests_properties(infeas_box1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_itest6_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_itest6_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_itest6_cbc-generic.log)
  
  set_tests_properties(infeas_itest6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_bgindy_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_cbc-generic.log)
  
  set_tests_properties(infeas_bgindy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_klein2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_klein2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_klein2_cbc-generic.log)
  
  set_tests_properties(infeas_klein2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_ceria3d_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_cbc-generic.log)
  
  set_tests_properties(infeas_ceria3d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_ex72a_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_cbc-generic.log)
  
  set_tests_properties(infeas_ex72a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_greenbea_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_cbc-generic.log)
  
  set_tests_properties(infeas_greenbea_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  
  add_coin_test(infeas_klein3_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_klein3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_klein3_cbc-generic.log)
  
  set_tests_properties(infeas_klein3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_itest2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_itest2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_itest2_cbc-generic.log)
  
  set_tests_properties(infeas_itest2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_ex73a_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_cbc-generic.log)
  
  set_tests_properties(infeas_ex73a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_klein1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_klein1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_klein1_cbc-generic.log)
  
  set_tests_properties(infeas_klein1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_woodinfe_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_cbc-generic.log)
  
  set_tests_properties(infeas_woodinfe_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_bgprtr_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_cbc-generic.log)
  
  set_tests_properties(infeas_bgprtr_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_galenet_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_galenet_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_galenet_cbc-generic.log)
  
  set_tests_properties(infeas_galenet_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_gran_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_gran_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_gran_cbc-generic.log)
  
  set_tests_properties(infeas_gran_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_mondou2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_cbc-generic.log)
  
  set_tests_properties(infeas_mondou2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_qual_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_qual_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_qual_cbc-generic.log)
  
  set_tests_properties(infeas_qual_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_vol1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_vol1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_vol1_cbc-generic.log)
  
  set_tests_properties(infeas_vol1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_pang_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_pang_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_pang_cbc-generic.log)
  
  set_tests_properties(infeas_pang_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_bgdbg1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_cbc-generic.log)
  
  set_tests_properties(infeas_bgdbg1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(infeas_gosh_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps
                ${CMAKE_BINARY_DIR}/tests/infeas_gosh_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/infeas_gosh_cbc-generic.log)
  
  set_tests_properties(infeas_gosh_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  #
  # Big test
  #
  
  add_coin_test(big_mkc7_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz
                ${CMAKE_BINARY_DIR}/tests/big_mkc7_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/big_mkc7_cbc-generic.log)
  
  set_tests_properties(big_mkc7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(big_mkc7_mps_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  
  #
  # Sample tests
  #
  
  add_coin_test(sample_scOneInt_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps
                ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_cbc-generic.log)
  
  set_tests_properties(sample_scOneInt_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_p0201_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps
                ${CMAKE_BINARY_DIR}/tests/sample_p0201_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_p0201_cbc-generic.log)
  
  set_tests_properties(sample_p0201_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_p0548_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps
                ${CMAKE_BINARY_DIR}/tests/sample_p0548_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_p0548_cbc-generic.log)
  
  set_tests_properties(sample_p0548_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_hello_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps
                ${CMAKE_BINARY_DIR}/tests/sample_hello_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_hello_cbc-generic.log)
  
  set_tests_properties(sample_hello_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_e226_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps
                ${CMAKE_BINARY_DIR}/tests/sample_e226_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_e226_cbc-generic.log)
  
  set_tests_properties(sample_e226_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_tp3_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps
                ${CMAKE_BINARY_DIR}/tests/sample_tp3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_tp3_cbc-generic.log)
  
  set_tests_properties(sample_tp3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_tp4_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps
                ${CMAKE_BINARY_DIR}/tests/sample_tp4_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_tp4_cbc-generic.log)
  
  set_tests_properties(sample_tp4_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_finnis_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps
                ${CMAKE_BINARY_DIR}/tests/sample_finnis_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_finnis_cbc-generic.log)
  
  set_tests_properties(sample_finnis_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_5_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5
                ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_cbc-generic.log)
  
  set_tests_properties(sample_5_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_exmip1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps
                ${CMAKE_BINARY_DIR}/tests/sample_exmip1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_exmip1_cbc-generic.log)
  
  set_tests_properties(sample_exmip1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_share2qp_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps
                ${CMAKE_BINARY_DIR}/tests/sample_share2qp_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_share2qp_cbc-generic.log)
  
  set_tests_properties(sample_share2qp_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_afiro_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps
                ${CMAKE_BINARY_DIR}/tests/sample_afiro_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_afiro_cbc-generic.log)
  
  set_tests_properties(sample_afiro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_nw460_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps
                ${CMAKE_BINARY_DIR}/tests/sample_nw460_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_nw460_cbc-generic.log)
  
  set_tests_properties(sample_nw460_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_brandy_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps
                ${CMAKE_BINARY_DIR}/tests/sample_brandy_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_brandy_cbc-generic.log)
  
  set_tests_properties(sample_brandy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_tp5_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps
                ${CMAKE_BINARY_DIR}/tests/sample_tp5_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_tp5_cbc-generic.log)
  
  set_tests_properties(sample_tp5_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_pack1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps
                ${CMAKE_BINARY_DIR}/tests/sample_pack1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_pack1_cbc-generic.log)
  
  set_tests_properties(sample_pack1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_coin_test(sample_p0033_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps
                ${CMAKE_BINARY_DIR}/tests/sample_p0033_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/sample_p0033_cbc-generic.log)
  
  set_tests_properties(sample_p0033_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  #
  # Netlib tests
  #
  
  # Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme
  
  add_coin_test(netlib_fit2d_mps_cbc-generic_standard cbc-generic
               ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz
               ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc-generic.out
               ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc-generic.log)
  
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  create_log_analysis(netlib_fit2d_mps_cbc-generic_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc-generic.log "Optimal objective <number>" -68464.293294 1e-6)
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard_01_Analysis PROPERTIES LABELS "MPS")
  
  add_coin_test(netlib_forplan_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_forplan_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_forplan_cbc-generic.log)
  
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -664.218(73953)?")
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ship08s_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_cbc-generic.log)
  
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1920098.21(05)?")
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_fit1d_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_cbc-generic.log)
  
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -9146.378092(4)?")
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_brandy_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_brandy_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_brandy_cbc-generic.log)
  
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1518.509896(5)?")
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scfxm1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_cbc-generic.log)
  
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 18416.7590(28)?")
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_grow22_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_grow22_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_grow22_cbc-generic.log)
  
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -160834336(.48)?")
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_bandm_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_bandm_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_bandm_cbc-generic.log)
  
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -158.628018(45)?")
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_fit1p_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_cbc-generic.log)
  
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 9146.378092(4)?")
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_standata_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_standata_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_standata_cbc-generic.log)
  
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1257.6995(000)?")
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_pilot4_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_cbc-generic.log)
  
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2581.13926(41)?")
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_stocfor2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_cbc-generic.log)
  
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -39024.4085(38)?")
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sctap1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_cbc-generic.log)
  
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1412.25(00000)?")
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scrs8_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_cbc-generic.log)
  
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 904.29(998619)?")
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sctap2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_cbc-generic.log)
  
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1724.80714(29)?")
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_pilot87_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_cbc-generic.log)
  
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 301.710(72827)?")
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_greenbea_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_cbc-generic.log)
  
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -72462405.9(08)?")
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_woodw_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_woodw_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_woodw_cbc-generic.log)
  
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1.304476333(1)?")
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_recipe_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_recipe_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_recipe_cbc-generic.log)
  
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -266.616(00000)?")
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_share1b_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_share1b_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_share1b_cbc-generic.log)
  
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -76589.3185(79)?")
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_tuff_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_tuff_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_tuff_cbc-generic.log)
  
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 0.292147765(09)?")
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_share2b_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_share2b_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_share2b_cbc-generic.log)
  
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -415.7322407(4)?")
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_bore3d_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_cbc-generic.log)
  
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1373.080394(2)?")
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_d2q06c_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_cbc-generic.log)
  
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 122784.236(15)?")
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sc50b_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_cbc-generic.log)
  
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -70")
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_pilot_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_pilot_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_pilot_cbc-generic.log)
  
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -557.4043(0007)?")
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_bnl1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_cbc-generic.log)
  
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1977.6292(856)?")
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ship04l_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_cbc-generic.log)
  
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1793324.538(0)?")
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sc105_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sc105_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sc105_cbc-generic.log)
  
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -52.20206121(2)?")
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_boeing2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_cbc-generic.log)
  
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -315.018728(02)?")
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_nesm_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_nesm_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_nesm_cbc-generic.log)
  
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 14076073.0(35)?")
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sc205_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sc205_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sc205_cbc-generic.log)
  
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -52.202061(212)?")
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_finnis_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_finnis_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_finnis_cbc-generic.log)
  
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 172790.9(6547)?")
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_degen2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_degen2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_degen2_cbc-generic.log)
  
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -1435.178(0000)?")
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_maros-r7_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps
                ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_cbc-generic.log
                ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_cbc-generic.out)
  
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1497185.166(5)?")
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ship04s_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_cbc-generic.log)
  
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1798714.7(004)?")
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_wood1p_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_cbc-generic.log)
  
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1.44290241(16)?")
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_lotfi_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_cbc-generic.log)
  
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -25.26470606(2)?")
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_gfrd_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps
                ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_cbc-generic.log)
  
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 6902235.9(995)?")
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_etamacro_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_cbc-generic.log)
  
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -755.7152(1774)?")
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_grow7_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_grow7_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_grow7_cbc-generic.log)
  
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -47787811.81(5)?")
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_dfl001_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_cbc-generic.log)
  
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  # (there's a ** in the readme file in the netlib website)
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 112664396.0(5)?") # Cbc-Generic value
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_agg_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_agg_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_agg_cbc-generic.log)
  
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -35991767.2(87)?")
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_standgub_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_standgub_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_standgub_cbc-generic.log)
  
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  # Nothing in the readme - Cbc-Generic value
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1257.6995")
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ship12l_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_cbc-generic.log)
  
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1470187.919(3)?")
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_standmps_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_standmps_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_standmps_cbc-generic.log)
  
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1406.0175(000)?")
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scagr25_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_cbc-generic.log)
  
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -14753433.06(1)?")
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_capri_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_capri_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_capri_cbc-generic.log)
  
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2690.01291(38)?")
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_cycle_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_cycle_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_cycle_cbc-generic.log)
  
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -5.22639302(49)?")
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_greenbeb_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_cbc-generic.log)
  
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -4302147.6065")
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_agg2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_agg2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_agg2_cbc-generic.log)
  
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -20239252.3(56)?")
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_stair_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_stair_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_stair_cbc-generic.log)
  
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -251.266951(19)?")
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_shell_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_shell_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_shell_cbc-generic.log)
  
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1208825346(.0)?")
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sierra_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sierra_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sierra_cbc-generic.log)
  
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 15394362.18(4)?")
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_afiro_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_afiro_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_afiro_cbc-generic.log)
  
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -464.753142(86)?")
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scsd1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_cbc-generic.log)
  
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 8.666666674(3)?")
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scsd8_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_cbc-generic.log)
  
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 904.9999999(3)?")
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ship08l_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_cbc-generic.log)
  
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1909055.211(4)?")
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_25fv47_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_cbc-generic.log)
  
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 5501.845888(3)?")
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_czprob_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_czprob_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_czprob_cbc-generic.log)
  
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2185196.69(89)?")
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_adlittle_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_cbc-generic.log)
  
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 225494.963(16)?")
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_d6cube_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_cbc-generic.log)
  
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 315.491666(67)?")
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scorpion_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_cbc-generic.log)
  
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1878.12482(27)?")
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sctap3_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_cbc-generic.log)
  
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1424(.0)?")
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_seba_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_seba_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_seba_cbc-generic.log)
  
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 15711.6")
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_modszk1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_cbc-generic.log)
  
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 320.619729(06)?")
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_pilotnov_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_cbc-generic.log)
  
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -4497.276188(2)?")
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_beaconfd_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_cbc-generic.log)
  
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 33592.4858(07)?")
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_e226_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_e226_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_e226_cbc-generic.log)
  
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -18.751929(066)?")
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_degen3_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_degen3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_degen3_cbc-generic.log)
  
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -987.294(00000)?")
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scfxm2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_cbc-generic.log)
  
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 36660.26156(5)?")
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_fffff800_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_cbc-generic.log)
  
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 555679.611(65)?")
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_kb2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_kb2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_kb2_cbc-generic.log)
  
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -1749.9001(299)?")
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ganges_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ganges_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ganges_cbc-generic.log)
  
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -109586.363(56)?")
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_stocfor1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_cbc-generic.log)
  
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -41131.9762(19)?")
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scsd6_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_cbc-generic.log)
  
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 50.5000000(78)?")
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_80bau3b_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_cbc-generic.log)
  
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 987232.160(72)?")
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_ship12s_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_cbc-generic.log)
  
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1489236.134(4)?")
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_agg3_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_agg3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_agg3_cbc-generic.log)
  
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 10312115.9(35)?")
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_maros_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_maros_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_maros_cbc-generic.log)
  
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -58063.7437(01)?")
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_perold_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_perold_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_perold_cbc-generic.log)
  
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -9380.758(0773)?")
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scagr7_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_cbc-generic.log)
  
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2331389.25(48)?")
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_scfxm3_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_cbc-generic.log)
  
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 54901.25455(0)?")
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_grow15_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_grow15_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_grow15_cbc-generic.log)
  
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -106870941(.29)?")
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_fit2p_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_cbc-generic.log)
  
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 68464.2932(32)?")
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_boeing1_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_cbc-generic.log)
  
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -335.2135675(1)?")
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_sc50a_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_cbc-generic.log)
  
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -64.5750770(59)?")
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_vtpbase_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_cbc-generic.log)
  
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 129831.462(46)?")
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_blend_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_blend_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_blend_cbc-generic.log)
  
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -30.8121498(46)?")
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_bnl2_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_cbc-generic.log)
  
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1811.23654(04)?")
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(netlib_israel_mps_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz
                ${CMAKE_BINARY_DIR}/tests/netlib_israel_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/netlib_israel_cbc-generic.log)
  
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -896644.821(86)?")
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  #
  # miplib3 tests
  #
  
  add_coin_test(miplib3_10teams_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_cbc-generic.log)
  
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 924")
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_air03_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_air03_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_air03_cbc-generic.log)
  
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 340160")
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_air04_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_air04_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_air04_cbc-generic.log)
  
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 56137")
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_air05_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_air05_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_air05_cbc-generic.log)
  
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 26374")
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_arki001_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_cbc-generic.log)
  
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 7580813.0459") # Not optimal - has stated in the miplib3 report
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_bell3a_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_cbc-generic.log)
  
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 878430.32")
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_bell5_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_cbc-generic.log)
  
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 8966406.49")
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_blend2_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_cbc-generic.log)
  
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 7.598985")
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_cap6000_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_cbc-generic.log)
  
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2451377")
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_dano3mip_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_cbc-generic.log)
  
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 728.1111") # not optimal - has stated in the miplib3 report
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_danoint_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_cbc-generic.log)
  
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 65.67")
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_dcmulti_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_cbc-generic.log)
  
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 188182")
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_dsbmip_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_cbc-generic.log)
  
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -305.19817501")
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_egout_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_egout_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_egout_cbc-generic.log)
  
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 568.101")
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_enigma_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_cbc-generic.log)
  
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 0.0")
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_fast0507_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_cbc-generic.log)
  
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 174")
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_fiber_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_cbc-generic.log)
  
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 405935.18000")
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_fixnet6_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_cbc-generic.log)
  
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 3983")
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_flugpl_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_cbc-generic.log)
  
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1201500")
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_gen_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_gen_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_gen_cbc-generic.log)
  
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 112313")
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_gesa2_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_cbc-generic.log)
  
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 25779856.372")
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_gesa2_o_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_cbc-generic.log)
  
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 25779856.372")
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_gesa3_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_cbc-generic.log)
  
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 27991042.648")
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_gesa3_o_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_cbc-generic.log)
  
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 27991042.648")
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_gt2_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_cbc-generic.log)
  
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 21166.000")
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_harp2_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_cbc-generic.log)
  
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -73899798.00")
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_khb05250_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_cbc-generic.log)
  
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 106940226")
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_l152lav_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_cbc-generic.log)
  
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 4722")
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_lseu_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_cbc-generic.log)
  
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1120")
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_markshare1_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_cbc-generic.log)
  
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1")
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_markshare2_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_cbc-generic.log)
  
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1")
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mas74_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_cbc-generic.log)
  
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 11801.1857")
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mas76_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_cbc-generic.log)
  
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 4005.1")
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_misc03_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_cbc-generic.log)
  
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 3360")
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_misc06_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_cbc-generic.log)
  
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 12850.8607")
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_misc07_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_cbc-generic.log)
  
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2810")
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mitre_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_cbc-generic.log)
  
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 115155")
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mkc_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_cbc-generic.log)
  
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -553.75") # not optimal - has stated in the miplib3 report
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mod008_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_cbc-generic.log)
  
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 307")
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mod010_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_cbc-generic.log)
  
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 6548")
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_mod011_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_cbc-generic.log)
  
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -54558535")
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_modglob_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_cbc-generic.log)
  
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 20740508")
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_noswot_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_cbc-generic.log)
  
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -43")
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_nw04_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_cbc-generic.log)
  
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 16862")
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_p0033_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_cbc-generic.log)
  
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 3089")
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_p0201_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_cbc-generic.log)
  
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 7615")
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_p0282_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_cbc-generic.log)
  
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 258411")
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_p0548_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_cbc-generic.log)
  
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 8691")
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_p2756_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_cbc-generic.log)
  
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 3124")
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_pk1_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_cbc-generic.log)
  
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 11.0")
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_pp08aCUTS_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_cbc-generic.log)
  
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 7350.0")
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_pp08a_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_cbc-generic.log)
  
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 7350.0")
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_qiu_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_cbc-generic.log)
  
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -132.873137")
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_qnet1_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_cbc-generic.log)
  
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 16029.692681")
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_qnet1_o_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_cbc-generic.log)
  
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 16029.692681")
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_rentacar_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_cbc-generic.log)
  
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 30356761")
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_rgn_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_cbc-generic.log)
  
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 82.1999")
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_rout_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_rout_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_rout_cbc-generic.log)
  
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1077.56")
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_set1ch_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_cbc-generic.log)
  
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 54537.75")
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_seymour_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_cbc-generic.log)
  
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 423") # not optimal - has stated in the miplib3 report
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_stein27_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_cbc-generic.log)
  
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 18")
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_stein45_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_cbc-generic.log)
  
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 30")
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_swath_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_swath_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_swath_cbc-generic.log)
  
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 497.603") # not optimal - has stated in the miplib3 report
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_vpm1_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_cbc-generic.log)
  
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 20")
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_coin_test(miplib3_vpm2_cbc-generic_standard cbc-generic
                ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz
                ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_cbc-generic.out
                ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_cbc-generic.log)
  
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 13.75")
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
endif ()
