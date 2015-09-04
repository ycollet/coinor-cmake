include(glpk-macros)

#
# Infeas tests
#

add_coin_test(infeas_chemcom_mps_glpk
             ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_glpk.log)

set_tests_properties(infeas_chemcom_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_chemcom_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_pilot4i_mps_glpk
             ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_glpk.log)

set_tests_properties(infeas_pilot4i_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pilot4i_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_reactor_mps_glpk
             ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_reactor_glpk.log)

set_tests_properties(infeas_reactor_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_reactor_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_bgetam_mps_glpk
             ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps
             ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_glpk.log)

set_tests_properties(infeas_bgetam_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgetam_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_refinery_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_refinery_glpk.log)

set_tests_properties(infeas_refinery_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_refinery_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_cplex2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_glpk.log)

set_tests_properties(infeas_cplex2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex2_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_forest6_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_forest6_glpk.log)

set_tests_properties(infeas_forest6_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_forest6_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_cplex1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_glpk.log)

set_tests_properties(infeas_cplex1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex1_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_box1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_box1_glpk.log)

set_tests_properties(infeas_box1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_box1_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_itest6_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_itest6_glpk.log)

set_tests_properties(infeas_itest6_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest6_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_bgindy_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_glpk.log)

set_tests_properties(infeas_bgindy_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgindy_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_klein2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein2_glpk.log)

set_tests_properties(infeas_klein2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein2_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_ceria3d_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_glpk.log)

set_tests_properties(infeas_ceria3d_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ceria3d_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_ex72a_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_glpk.log)

set_tests_properties(infeas_ex72a_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex72a_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_greenbea_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_glpk.log)

set_tests_properties(infeas_greenbea_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_greenbea_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS;LONG")

add_coin_test(infeas_klein3_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein3_glpk.log)

set_tests_properties(infeas_klein3_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein3_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_itest2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_itest2_glpk.log)

set_tests_properties(infeas_itest2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest2_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_ex73a_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_glpk.log)

set_tests_properties(infeas_ex73a_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex73a_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_klein1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_klein1_glpk.log)

set_tests_properties(infeas_klein1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein1_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_woodinfe_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_glpk.log)

set_tests_properties(infeas_woodinfe_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_woodinfe_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_bgprtr_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_glpk.log)

set_tests_properties(infeas_bgprtr_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgprtr_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_galenet_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_galenet_glpk.log)

set_tests_properties(infeas_galenet_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_galenet_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_gran_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_gran_glpk.log)

set_tests_properties(infeas_gran_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gran_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_mondou2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_glpk.log)

set_tests_properties(infeas_mondou2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_mondou2_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_qual_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_qual_glpk.log)

set_tests_properties(infeas_qual_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_qual_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_vol1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_vol1_glpk.log)

set_tests_properties(infeas_vol1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_vol1_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_pang_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_pang_glpk.log)

set_tests_properties(infeas_pang_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pang_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_bgdbg1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_glpk.log)

set_tests_properties(infeas_bgdbg1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgdbg1_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

add_coin_test(infeas_gosh_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps
              ${CMAKE_BINARY_DIR}/tests/infeas_gosh_glpk.log)

set_tests_properties(infeas_gosh_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gosh_mps_glpk PROPERTIES LABELS "MPS;GLPK;INFEAS")

#
# Big test
#

add_coin_test(big_mkc7_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/big_mkc7_glpk.log)

set_tests_properties(big_mkc7_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(big_mkc7_mps_glpk PROPERTIES LABELS "MPS;GLPK;BIG;LONG")

#
# Sample tests
#

add_coin_test(sample_scOneInt_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps
              ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_glpk.log)

set_tests_properties(sample_scOneInt_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_scOneInt_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_p0201_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0201_glpk.log)

set_tests_properties(sample_p0201_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0201_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_p0548_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0548_glpk.log)

set_tests_properties(sample_p0548_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0548_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_hello_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps
              ${CMAKE_BINARY_DIR}/tests/sample_hello_glpk.log)

set_tests_properties(sample_hello_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_hello_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_e226_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps
              ${CMAKE_BINARY_DIR}/tests/sample_e226_glpk.log)

set_tests_properties(sample_e226_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_e226_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_tp3_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp3_glpk.log)

set_tests_properties(sample_tp3_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp3_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_tp4_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp4_glpk.log)

set_tests_properties(sample_tp4_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp4_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_finnis_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps
              ${CMAKE_BINARY_DIR}/tests/sample_finnis_glpk.log)

set_tests_properties(sample_finnis_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_finnis_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_5_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1.5_glpk.log)

set_tests_properties(sample_5_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_5_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_exmip1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps
              ${CMAKE_BINARY_DIR}/tests/sample_exmip1_glpk.log)

set_tests_properties(sample_exmip1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_exmip1_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_share2qp_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps
              ${CMAKE_BINARY_DIR}/tests/sample_share2qp_glpk.log)

set_tests_properties(sample_share2qp_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_share2qp_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_afiro_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps
              ${CMAKE_BINARY_DIR}/tests/sample_afiro_glpk.log)

set_tests_properties(sample_afiro_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_afiro_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_nw460_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps
              ${CMAKE_BINARY_DIR}/tests/sample_nw460_glpk.log)

set_tests_properties(sample_nw460_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_nw460_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_brandy_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps
              ${CMAKE_BINARY_DIR}/tests/sample_brandy_glpk.log)

set_tests_properties(sample_brandy_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_brandy_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_tp5_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps
              ${CMAKE_BINARY_DIR}/tests/sample_tp5_glpk.log)

set_tests_properties(sample_tp5_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp5_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_pack1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps
              ${CMAKE_BINARY_DIR}/tests/sample_pack1_glpk.log)

set_tests_properties(sample_pack1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_pack1_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

add_coin_test(sample_p0033_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps
              ${CMAKE_BINARY_DIR}/tests/sample_p0033_glpk.log)

set_tests_properties(sample_p0033_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0033_mps_glpk PROPERTIES LABELS "MPS;GLPK;SAMPLE")

#
# Netlib tests
#

# Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme

add_coin_test(netlib_fit2d_mps_glpk
             ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz
             ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_glpk.log)

set_tests_properties(netlib_fit2d_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2d_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_fit2d_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_glpk.log "<number> \\\\\\(MINimum\\\\\\)" -68464.293294 1e-1)
set_tests_properties(netlib_fit2d_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_forplan_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_forplan_glpk.log)

set_tests_properties(netlib_forplan_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_forplan_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_forplan_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_forplan_glpk.log "<number> \\\\(MINimum\\\\)" -664.21873953 1e-6)
set_tests_properties(netlib_forplan_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_ship08s_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_glpk.log)

set_tests_properties(netlib_ship08s_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08s_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ship08s_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_glpk.log "<number> \\\\(MINimum\\\\)" 1920098.2105 1e-6)
set_tests_properties(netlib_ship08s_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_fit1d_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_glpk.log)

set_tests_properties(netlib_fit1d_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1d_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_fit1d_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_glpk.log "<number> \\\\(MINimum\\\\)" -9146.3780924 1e-6)
set_tests_properties(netlib_fit1d_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_brandy_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_brandy_glpk.log)

set_tests_properties(netlib_brandy_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_brandy_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_brandy_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_brandy_glpk.log "<number> \\\\(MINimum\\\\)" 1518.5098965 1e-6)
set_tests_properties(netlib_brandy_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scfxm1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_glpk.log)

set_tests_properties(netlib_scfxm1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scfxm1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_glpk.log "<number> \\\\(MINimum\\\\)" 18416.759028 1e-6)
set_tests_properties(netlib_scfxm1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_grow22_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow22_glpk.log)

set_tests_properties(netlib_grow22_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow22_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_grow22_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_grow22_glpk.log "<number> \\\\(MINimum\\\\)" -160834336.48 1e-6)
set_tests_properties(netlib_grow22_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_bandm_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bandm_glpk.log)

set_tests_properties(netlib_bandm_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bandm_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_bandm_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_bandm_glpk.log "<number> \\\\(MINimum\\\\)" -158.62801845 1e-6)
set_tests_properties(netlib_bandm_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_fit1p_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_glpk.log)

set_tests_properties(netlib_fit1p_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1p_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_fit1p_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_glpk.log "<number> \\\\(MINimum\\\\)" 9146.3780924 1e-6)
set_tests_properties(netlib_fit1p_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_standata_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standata_glpk.log)

set_tests_properties(netlib_standata_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standata_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_standata_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_standata_glpk.log "<number> \\\\(MINimum\\\\)" 1257.6995000 1e-6)
set_tests_properties(netlib_standata_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_pilot4_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_glpk.log)

set_tests_properties(netlib_pilot4_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot4_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_pilot4_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_glpk.log "<number> \\\\(MINimum\\\\)" -2581.1392641 1e-6)
set_tests_properties(netlib_pilot4_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_stocfor2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_glpk.log)

set_tests_properties(netlib_stocfor2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_stocfor2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_glpk.log "<number> \\\\(MINimum\\\\)" -39024.408538 1e-6)
set_tests_properties(netlib_stocfor2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sctap1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_glpk.log)

set_tests_properties(netlib_sctap1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sctap1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_glpk.log "<number> \\\\(MINimum\\\\)" 1412.2500000 1e-6)
set_tests_properties(netlib_sctap1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scrs8_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_glpk.log)

set_tests_properties(netlib_scrs8_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scrs8_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scrs8_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_glpk.log "<number> \\\\(MINimum\\\\)" 904.29998619 1e-6)
set_tests_properties(netlib_scrs8_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sctap2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_glpk.log)

set_tests_properties(netlib_sctap2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sctap2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_glpk.log "<number> \\\\(MINimum\\\\)" 1724.8071429 1e-6)
set_tests_properties(netlib_sctap2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_pilot87_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_glpk.log)

set_tests_properties(netlib_pilot87_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot87_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_pilot87_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_glpk.log "<number> \\\\(MINimum\\\\)" 301.71072827 1e-6)
set_tests_properties(netlib_pilot87_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_greenbea_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_glpk.log)

set_tests_properties(netlib_greenbea_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbea_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_greenbea_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_glpk.log "<number> \\\\(MINimum\\\\)" -72462405.908 1e-6)
set_tests_properties(netlib_greenbea_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_woodw_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_woodw_glpk.log)

set_tests_properties(netlib_woodw_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_woodw_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_woodw_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_woodw_glpk.log "<number> \\\\(MINimum\\\\)" 1.3044763331 1e-6)
set_tests_properties(netlib_woodw_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_recipe_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_recipe_glpk.log)

set_tests_properties(netlib_recipe_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_recipe_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_recipe_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_recipe_glpk.log "<number> \\\\(MINimum\\\\)" -266.61600000 1e-6)
set_tests_properties(netlib_recipe_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_share1b_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_share1b_glpk.log)

set_tests_properties(netlib_share1b_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share1b_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_share1b_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_share1b_glpk.log "<number> \\\\(MINimum\\\\)" -76589.318579 1e-6)
set_tests_properties(netlib_share1b_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_tuff_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_tuff_glpk.log)

set_tests_properties(netlib_tuff_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_tuff_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_tuff_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_tuff_glpk.log "<number> \\\\(MINimum\\\\)" 0.29214776509 1e-6)
set_tests_properties(netlib_tuff_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_share2b_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_share2b_glpk.log)

set_tests_properties(netlib_share2b_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share2b_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_share2b_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_share2b_glpk.log "<number> \\\\(MINimum\\\\)" -415.73224074 1e-6)
set_tests_properties(netlib_share2b_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_bore3d_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_glpk.log)

set_tests_properties(netlib_bore3d_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bore3d_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_bore3d_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_glpk.log "<number> \\\\(MINimum\\\\)" 1373.0803942 1e-6)
set_tests_properties(netlib_bore3d_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_d2q06c_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_glpk.log)

set_tests_properties(netlib_d2q06c_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d2q06c_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_d2q06c_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_glpk.log "<number> \\\\(MINimum\\\\)" 122784.23615 1e-6)
set_tests_properties(netlib_d2q06c_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sc50b_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_glpk.log)

set_tests_properties(netlib_sc50b_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50b_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sc50b_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_glpk.log "<number> \\\\(MINimum\\\\)" -70 1e-6)
set_tests_properties(netlib_sc50b_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_pilot_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilot_glpk.log)

set_tests_properties(netlib_pilot_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_pilot_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_pilot_glpk.log "<number> \\\\(MINimum\\\\)" -557.40430007 1e-6)
set_tests_properties(netlib_pilot_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_bnl1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_glpk.log)

set_tests_properties(netlib_bnl1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_bnl1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_glpk.log "<number> \\\\(MINimum\\\\)" 1977.6292856 1e-6)
set_tests_properties(netlib_bnl1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_ship04l_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_glpk.log)

set_tests_properties(netlib_ship04l_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04l_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ship04l_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_glpk.log "<number> \\\\(MINimum\\\\)" 1793324.5380 1e-6)
set_tests_properties(netlib_ship04l_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sc105_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc105_glpk.log)

set_tests_properties(netlib_sc105_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc105_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sc105_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sc105_glpk.log "<number> \\\\(MINimum\\\\)" -52.202061212 1e-6)
set_tests_properties(netlib_sc105_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_boeing2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_glpk.log)

set_tests_properties(netlib_boeing2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_boeing2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_glpk.log "<number> \\\\(MINimum\\\\)" -315.01872802 1e-6)
set_tests_properties(netlib_boeing2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_nesm_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_nesm_glpk.log)

set_tests_properties(netlib_nesm_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_nesm_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_nesm_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_nesm_glpk.log "<number> \\\\(MINimum\\\\)" 14076073.035 1e-6)
set_tests_properties(netlib_nesm_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sc205_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc205_glpk.log)

set_tests_properties(netlib_sc205_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc205_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sc205_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sc205_glpk.log "<number> \\\\(MINimum\\\\)" -52.202061212 1e-6)
set_tests_properties(netlib_sc205_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_finnis_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_finnis_glpk.log)

set_tests_properties(netlib_finnis_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_finnis_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_finnis_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_finnis_glpk.log "<number> \\\\(MINimum\\\\)" 172790.96547 1e-6)
set_tests_properties(netlib_finnis_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_degen2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_degen2_glpk.log)

set_tests_properties(netlib_degen2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_degen2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_degen2_glpk.log "<number> \\\\(MINimum\\\\)" -1435.1780000 1e-6)
set_tests_properties(netlib_degen2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_maros-r7_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps
              ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_glpk.log)

set_tests_properties(netlib_maros-r7_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros-r7_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_maros-r7_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_glpk.log "<number> \\\\(MINimum\\\\)" 1497185.1665 1e-6)
set_tests_properties(netlib_maros-r7_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_ship04s_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_glpk.log)

set_tests_properties(netlib_ship04s_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04s_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ship04s_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_glpk.log "<number> \\\\(MINimum\\\\)" 1798714.7004 1e-6)
set_tests_properties(netlib_ship04s_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_wood1p_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_glpk.log)

set_tests_properties(netlib_wood1p_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_wood1p_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_wood1p_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_glpk.log "<number> \\\\(MINimum\\\\)" 1.4429024116 1e-6)
set_tests_properties(netlib_wood1p_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_lotfi_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_glpk.log)

set_tests_properties(netlib_lotfi_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_lotfi_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_lotfi_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_glpk.log "<number> \\\\(MINimum\\\\)" -25.264706062 1e-6)
set_tests_properties(netlib_lotfi_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_gfrd-pnc_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps
              ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_glpk.log)

set_tests_properties(netlib_gfrd-pnc_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_gfrd-pnc_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_gfrd-pnc_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_gfrd-pnc_glpk.log "<number> \\\\(MINimum\\\\)" 6902235.9995 1e-6)
set_tests_properties(netlib_gfrd-pnc_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_etamacro_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_glpk.log)

set_tests_properties(netlib_etamacro_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_etamacro_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_etamacro_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_glpk.log "<number> \\\\(MINimum\\\\)" -755.71521774 1e-6)
set_tests_properties(netlib_etamacro_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_grow7_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow7_glpk.log)

set_tests_properties(netlib_grow7_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow7_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_grow7_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_grow7_glpk.log "<number> \\\\(MINimum\\\\)" -47787811.815 1e-6)
set_tests_properties(netlib_grow7_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_dfl001_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_glpk.log)

set_tests_properties(netlib_dfl001_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_dfl001_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB;WARNING")
# (there's a ** in the readme file in the netlib website)

create_log_analysis(netlib_dfl001_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_glpk.log "<number> \\\\(MINimum\\\\)" 112664396.05 1e-6)
set_tests_properties(netlib_dfl001_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB;WARNING")

add_coin_test(netlib_agg_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg_glpk.log)

set_tests_properties(netlib_agg_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_agg_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_agg_glpk.log "<number> \\\\(MINimum\\\\)" -35991767.287 1e-6)
set_tests_properties(netlib_agg_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_standgub_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standgub_glpk.log)

set_tests_properties(netlib_standgub_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standgub_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB;WARNING")
# Nothing in the readme - value

create_log_analysis(netlib_standgub_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_standgub_glpk.log "<number> \\\\(MINimum\\\\)" 1257.6995 1e-6)
set_tests_properties(netlib_standgub_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB;WARNING")

add_coin_test(netlib_ship12l_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_glpk.log)

set_tests_properties(netlib_ship12l_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12l_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ship12l_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_glpk.log "<number> \\\\(MINimum\\\\)" 1470187.9193 1e-6)
set_tests_properties(netlib_ship12l_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_standmps_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_standmps_glpk.log)

set_tests_properties(netlib_standmps_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standmps_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_standmps_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_standmps_glpk.log "<number> \\\\(MINimum\\\\)" 1406.0175000 1e-6)
set_tests_properties(netlib_standmps_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scagr25_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_glpk.log)

set_tests_properties(netlib_scagr25_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr25_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scagr25_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_glpk.log "<number> \\\\(MINimum\\\\)" -14753433.061 1e-6)
set_tests_properties(netlib_scagr25_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_capri_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_capri_glpk.log)

set_tests_properties(netlib_capri_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_capri_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_capri_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_capri_glpk.log "<number> \\\\(MINimum\\\\)" 2690.0129138 1e-6)
set_tests_properties(netlib_capri_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_cycle_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_cycle_glpk.log)

set_tests_properties(netlib_cycle_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_cycle_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_cycle_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_cycle_glpk.log "<number> \\\\(MINimum\\\\)" -5.2263930249 1e-6)
set_tests_properties(netlib_cycle_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_greenbeb_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_glpk.log)

set_tests_properties(netlib_greenbeb_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbeb_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_greenbeb_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_glpk.log "<number> \\\\(MINimum\\\\)" -4302147.6065 1e-6)
set_tests_properties(netlib_greenbeb_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_agg2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg2_glpk.log)

set_tests_properties(netlib_agg2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_agg2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_agg2_glpk.log "<number> \\\\(MINimum\\\\)" -20239252.356 1e-6)
set_tests_properties(netlib_agg2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_stair_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stair_glpk.log)

set_tests_properties(netlib_stair_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stair_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_stair_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_stair_glpk.log "<number> \\\\(MINimum\\\\)" -251.26695119 1e-6)
set_tests_properties(netlib_stair_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_shell_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_shell_glpk.log)

set_tests_properties(netlib_shell_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_shell_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_shell_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_shell_glpk.log "<number> \\\\(MINimum\\\\)" 1208825346.0 1e-6)
set_tests_properties(netlib_shell_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sierra_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sierra_glpk.log)

set_tests_properties(netlib_sierra_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sierra_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sierra_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sierra_glpk.log "<number> \\\\(MINimum\\\\)" 15394362.184 1e-6)
set_tests_properties(netlib_sierra_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_afiro_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_afiro_glpk.log)

set_tests_properties(netlib_afiro_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_afiro_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_afiro_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_afiro_glpk.log "<number> \\\\(MINimum\\\\)" -464.75314286 1e-6)
set_tests_properties(netlib_afiro_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scsd1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_glpk.log)

set_tests_properties(netlib_scsd1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scsd1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_glpk.log "<number> \\\\(MINimum\\\\)" 8.6666666743 1e-6)
set_tests_properties(netlib_scsd1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scsd8_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_glpk.log)

set_tests_properties(netlib_scsd8_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd8_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scsd8_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_glpk.log "<number> \\\\(MINimum\\\\)" 904.99999993 1e-6)
set_tests_properties(netlib_scsd8_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_ship08l_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_glpk.log)

set_tests_properties(netlib_ship08l_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08l_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ship08l_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_glpk.log "<number> \\\\(MINimum\\\\)" 1909055.2114 1e-6)
set_tests_properties(netlib_ship08l_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_25fv47_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_glpk.log)

set_tests_properties(netlib_25fv47_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_25fv47_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_25fv47_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_glpk.log "<number> \\\\(MINimum\\\\)" 5501.8458883 1e-6)
set_tests_properties(netlib_25fv47_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_czprob_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_czprob_glpk.log)

set_tests_properties(netlib_czprob_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_czprob_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_czprob_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_czprob_glpk.log "<number> \\\\(MINimum\\\\)" 2185196.6989 1e-6)
set_tests_properties(netlib_czprob_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_adlittle_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_glpk.log)

set_tests_properties(netlib_adlittle_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_adlittle_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_adlittle_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_glpk.log "<number> \\\\(MINimum\\\\)" 225494.96316 1e-6)
set_tests_properties(netlib_adlittle_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_d6cube_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_glpk.log)

set_tests_properties(netlib_d6cube_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d6cube_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_d6cube_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_glpk.log "<number> \\\\(MINimum\\\\)" 315.49166667 1e-6)
set_tests_properties(netlib_d6cube_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scorpion_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_glpk.log)

set_tests_properties(netlib_scorpion_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scorpion_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scorpion_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_glpk.log "<number> \\\\(MINimum\\\\)" 1878.1248227 1e-6)
set_tests_properties(netlib_scorpion_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sctap3_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_glpk.log)

set_tests_properties(netlib_sctap3_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap3_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sctap3_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_glpk.log "<number> \\\\(MINimum\\\\)" 1424.0 1e-6)
set_tests_properties(netlib_sctap3_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_seba_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_seba_glpk.log)

set_tests_properties(netlib_seba_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_seba_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_seba_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_seba_glpk.log "<number> \\\\(MINimum\\\\)" 15711.6 1e-6)
set_tests_properties(netlib_seba_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_modszk1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_glpk.log)

set_tests_properties(netlib_modszk1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_modszk1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_modszk1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_glpk.log "<number> \\\\(MINimum\\\\)" 320.61972906 1e-6)
set_tests_properties(netlib_modszk1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_pilotnov_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_glpk.log)

set_tests_properties(netlib_pilotnov_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilotnov_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_pilotnov_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_glpk.log "<number> \\\\(MINimum\\\\)" -4497.2761882 1e-6)
set_tests_properties(netlib_pilotnov_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_beaconfd_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_glpk.log)

set_tests_properties(netlib_beaconfd_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_beaconfd_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_beaconfd_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_glpk.log "<number> \\\\(MINimum\\\\)" 33592.485807 1e-6)
set_tests_properties(netlib_beaconfd_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_e226_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_e226_glpk.log)

set_tests_properties(netlib_e226_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_e226_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_e226_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_e226_glpk.log "<number> \\\\(MINimum\\\\)" -18.751929066 1e-6)
set_tests_properties(netlib_e226_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_degen3_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_degen3_glpk.log)

set_tests_properties(netlib_degen3_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen3_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_degen3_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_degen3_glpk.log "<number> \\\\(MINimum\\\\)" -987.29400000 1e-6)
set_tests_properties(netlib_degen3_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scfxm2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_glpk.log)

set_tests_properties(netlib_scfxm2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scfxm2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_glpk.log "<number> \\\\(MINimum\\\\)" 36660.261565 1e-6)
set_tests_properties(netlib_scfxm2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_fffff800_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_glpk.log)

set_tests_properties(netlib_fffff800_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fffff800_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_fffff800_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_glpk.log "<number> \\\\(MINimum\\\\)" 555679.61165 1e-6)
set_tests_properties(netlib_fffff800_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_kb2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_kb2_glpk.log)

set_tests_properties(netlib_kb2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_kb2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_kb2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_kb2_glpk.log "<number> \\\\(MINimum\\\\)" -1749.9001299 1e-6)
set_tests_properties(netlib_kb2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_ganges_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ganges_glpk.log)

set_tests_properties(netlib_ganges_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ganges_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ganges_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ganges_glpk.log "<number> \\\\(MINimum\\\\)" -109586.36356 1e-6)
set_tests_properties(netlib_ganges_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_stocfor1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_glpk.log)

set_tests_properties(netlib_stocfor1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_stocfor1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_glpk.log "<number> \\\\(MINimum\\\\)" -41131.976219 1e-6)
set_tests_properties(netlib_stocfor1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scsd6_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_glpk.log)

set_tests_properties(netlib_scsd6_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd6_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scsd6_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_glpk.log "<number> \\\\(MINimum\\\\)" 50.500000078 1e-6)
set_tests_properties(netlib_scsd6_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_80bau3b_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_glpk.log)

set_tests_properties(netlib_80bau3b_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_80bau3b_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_80bau3b_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_glpk.log "<number> \\\\(MINimum\\\\)" 987232.16072 1e-6)
set_tests_properties(netlib_80bau3b_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_ship12s_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_glpk.log)

set_tests_properties(netlib_ship12s_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12s_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_ship12s_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_glpk.log "<number> \\\\(MINimum\\\\)" 1489236.1344 1e-6)
set_tests_properties(netlib_ship12s_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_agg3_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_agg3_glpk.log)

set_tests_properties(netlib_agg3_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg3_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_agg3_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_agg3_glpk.log "<number> \\\\(MINimum\\\\)" 10312115.935 1e-6)
set_tests_properties(netlib_agg3_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_maros_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_maros_glpk.log)

set_tests_properties(netlib_maros_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_maros_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_maros_glpk.log "<number> \\\\(MINimum\\\\)" -58063.743701 1e-6)
set_tests_properties(netlib_maros_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_perold_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_perold_glpk.log)

set_tests_properties(netlib_perold_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_perold_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_perold_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_perold_glpk.log "<number> \\\\(MINimum\\\\)" -9380.7580773 1e-6)
set_tests_properties(netlib_perold_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scagr7_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_glpk.log)

set_tests_properties(netlib_scagr7_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr7_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scagr7_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_glpk.log "<number> \\\\(MINimum\\\\)" -2331389.2548 1e-6)
set_tests_properties(netlib_scagr7_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_scfxm3_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_glpk.log)

set_tests_properties(netlib_scfxm3_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm3_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_scfxm3_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_glpk.log "<number> \\\\(MINimum\\\\)" 54901.254550 1e-6)
set_tests_properties(netlib_scfxm3_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_grow15_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_grow15_glpk.log)

set_tests_properties(netlib_grow15_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow15_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_grow15_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_grow15_glpk.log "<number> \\\\(MINimum\\\\)" -106870941.29 1e-6)
set_tests_properties(netlib_grow15_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_fit2p_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_glpk.log)

set_tests_properties(netlib_fit2p_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2p_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_fit2p_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_glpk.log "<number> \\\\(MINimum\\\\)" 68464.293232 1e-6)
set_tests_properties(netlib_fit2p_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_boeing1_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_glpk.log)

set_tests_properties(netlib_boeing1_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing1_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_boeing1_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_glpk.log "<number> \\\\(MINimum\\\\)" -335.21356751 1e-6)
set_tests_properties(netlib_boeing1_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_sc50a_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_glpk.log)

set_tests_properties(netlib_sc50a_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50a_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_sc50a_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_glpk.log "<number> \\\\(MINimum\\\\)" -64.575077059 1e-6)
set_tests_properties(netlib_sc50a_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_vtpbase_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_glpk.log)

set_tests_properties(netlib_vtpbase_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_vtpbase_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_vtpbase_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_glpk.log "<number> \\\\(MINimum\\\\)" 129831.46246 1e-6)
set_tests_properties(netlib_vtpbase_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_blend_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_blend_glpk.log)

set_tests_properties(netlib_blend_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_blend_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_blend_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_blend_glpk.log "<number> \\\\(MINimum\\\\)" -30.812149846 1e-6)
set_tests_properties(netlib_blend_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_bnl2_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_glpk.log)

set_tests_properties(netlib_bnl2_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl2_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_bnl2_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_glpk.log "<number> \\\\(MINimum\\\\)" 1811.2365404 1e-6)
set_tests_properties(netlib_bnl2_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

add_coin_test(netlib_israel_mps_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz
              ${CMAKE_BINARY_DIR}/tests/netlib_israel_glpk.log)

set_tests_properties(netlib_israel_mps_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_israel_mps_glpk PROPERTIES LABELS "MPS;GLPK;NETLIB")

create_log_analysis(netlib_israel_mps_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/netlib_israel_glpk.log "<number> \\\\(MINimum\\\\)" -896644.82186 1e-6)
set_tests_properties(netlib_israel_mps_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;NETLIB")

#
# miplib3 tests
#

add_coin_test(miplib3_10teams_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_glpk.log)

set_tests_properties(miplib3_10teams_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_10teams_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_10teams_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_glpk.log "<number> \\\\(MINimum\\\\)" 924 1e-6)
set_tests_properties(miplib3_10teams_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_air03_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air03_glpk.log)

set_tests_properties(miplib3_air03_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_air03_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_air03_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_air03_glpk.log "<number> \\\\(MINimum\\\\)" 340160 1e-6)
set_tests_properties(miplib3_air03_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_air04_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air04_glpk.log)

set_tests_properties(miplib3_air04_glpk PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air04_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_air04_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_air04_glpk.log "<number> \\\\(MINimum\\\\)" 56137 1e-6)
set_tests_properties(miplib3_air04_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_air05_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_air05_glpk.log)

set_tests_properties(miplib3_air05_glpk PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air05_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_air05_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_air05_glpk.log "<number> \\\\(MINimum\\\\)" 26374 1e-6)
set_tests_properties(miplib3_air05_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_arki001_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_glpk.log)

set_tests_properties(miplib3_arki001_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_arki001_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

# Not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_arki001_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_glpk.log "<number> \\\\(MINimum\\\\)" 7580813.0459 1e-6)
set_tests_properties(miplib3_arki001_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_bell3a_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_glpk.log)

set_tests_properties(miplib3_bell3a_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell3a_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_bell3a_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_glpk.log "<number> \\\\(MINimum\\\\)" 878430.32 1e-6)
set_tests_properties(miplib3_bell3a_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_bell5_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_glpk.log)

set_tests_properties(miplib3_bell5_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell5_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_bell5_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_glpk.log "<number> \\\\(MINimum\\\\)" 8966406.49 1e-6)
set_tests_properties(miplib3_bell5_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_blend2_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_glpk.log)

set_tests_properties(miplib3_blend2_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_blend2_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_blend2_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_glpk.log "<number> \\\\(MINimum\\\\)" 7.598985 1e-6)
set_tests_properties(miplib3_blend2_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_cap6000_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_glpk.log)

set_tests_properties(miplib3_cap6000_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_cap6000_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_cap6000_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_glpk.log "<number> \\\\(MINimum\\\\)" -2451377 1e-6)
set_tests_properties(miplib3_cap6000_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_dano3mip_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_glpk.log)

set_tests_properties(miplib3_dano3mip_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dano3mip_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_dano3mip_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_glpk.log "<number> \\\\(MINimum\\\\)" 728.1111 1e-6)
set_tests_properties(miplib3_dano3mip_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_danoint_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_glpk.log)

set_tests_properties(miplib3_danoint_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_danoint_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_glpk.log "<number> \\\\(MINimum\\\\)" 65.67 1e-6)
set_tests_properties(miplib3_danoint_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_dcmulti_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_glpk.log)

set_tests_properties(miplib3_dcmulti_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dcmulti_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_dcmulti_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_glpk.log "<number> \\\\(MINimum\\\\)" 188182 1e-6)
set_tests_properties(miplib3_dcmulti_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_dsbmip_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_glpk.log)

set_tests_properties(miplib3_dsbmip_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dsbmip_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_dsbmip_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_glpk.log "<number> \\\\(MINimum\\\\)" -305.19817501 1e-6)
set_tests_properties(miplib3_dsbmip_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_egout_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_egout_glpk.log)

set_tests_properties(miplib3_egout_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_egout_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_egout_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_egout_glpk.log "<number> \\\\(MINimum\\\\)" 568.101 1e-6)
set_tests_properties(miplib3_egout_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_enigma_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_glpk.log)

set_tests_properties(miplib3_enigma_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_enigma_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_enigma_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_glpk.log "<number> \\\\(MINimum\\\\)" 0.0 1e-6)
set_tests_properties(miplib3_enigma_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_fast0507_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_glpk.log)

set_tests_properties(miplib3_fast0507_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_fast0507_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_fast0507_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_glpk.log "<number> \\\\(MINimum\\\\)" 174 1e-6)
set_tests_properties(miplib3_fast0507_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_fiber_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_glpk.log)

set_tests_properties(miplib3_fiber_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fiber_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_fiber_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_glpk.log "<number> \\\\(MINimum\\\\)" 405935.18000 1e-6)
set_tests_properties(miplib3_fiber_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_fixnet6_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_glpk.log)

set_tests_properties(miplib3_fixnet6_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fixnet6_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_fixnet6_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_glpk.log "<number> \\\\(MINimum\\\\)" 3983 1e-6)
set_tests_properties(miplib3_fixnet6_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_flugpl_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_glpk.log)

set_tests_properties(miplib3_flugpl_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_flugpl_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_flugpl_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_glpk.log "<number> \\\\(MINimum\\\\)" 1201500 1e-6)
set_tests_properties(miplib3_flugpl_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_gen_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gen_glpk.log)

set_tests_properties(miplib3_gen_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gen_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_gen_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_gen_glpk.log "<number> \\\\(MINimum\\\\)" 112313 1e-6)
set_tests_properties(miplib3_gen_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_gesa2_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_glpk.log)

set_tests_properties(miplib3_gesa2_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_gesa2_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_glpk.log "<number> \\\\(MINimum\\\\)" 25779856.372 1e-6)
set_tests_properties(miplib3_gesa2_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_gesa2_o_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_glpk.log)

set_tests_properties(miplib3_gesa2_o_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_o_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_gesa2_o_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_glpk.log "<number> \\\\(MINimum\\\\)" 25779856.372 1e-6)
set_tests_properties(miplib3_gesa2_o_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_gesa3_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_glpk.log)

set_tests_properties(miplib3_gesa3_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_gesa3_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_glpk.log "<number> \\\\(MINimum\\\\)" 27991042.648 1e-6)
set_tests_properties(miplib3_gesa3_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_gesa3_o_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_glpk.log)

set_tests_properties(miplib3_gesa3_o_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_o_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_gesa3_o_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_glpk.log "<number> \\\\(MINimum\\\\)" 27991042.648 1e-6)
set_tests_properties(miplib3_gesa3_o_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_gt2_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_glpk.log)

set_tests_properties(miplib3_gt2_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gt2_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_gt2_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_glpk.log "<number> \\\\(MINimum\\\\)" 21166.000 1e-6)
set_tests_properties(miplib3_gt2_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_harp2_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_glpk.log)

set_tests_properties(miplib3_harp2_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_harp2_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_glpk.log "<number> \\\\(MINimum\\\\)" -73899798.00 1e-6)
set_tests_properties(miplib3_harp2_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_khb05250_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_glpk.log)

set_tests_properties(miplib3_khb05250_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_khb05250_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_khb05250_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_glpk.log "<number> \\\\(MINimum\\\\)" 106940226 1e-6)
set_tests_properties(miplib3_khb05250_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_l152lav_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_glpk.log)

set_tests_properties(miplib3_l152lav_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_l152lav_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_l152lav_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_glpk.log "<number> \\\\(MINimum\\\\)" 4722 1e-6)
set_tests_properties(miplib3_l152lav_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_lseu_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_glpk.out
              ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_glpk.log)

set_tests_properties(miplib3_lseu_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_lseu_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_lseu_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_glpk.log "<number> \\\\(MINimum\\\\)" 1120 1e-6)
set_tests_properties(miplib3_lseu_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_markshare1_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_glpk.log)

set_tests_properties(miplib3_markshare1_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_markshare1_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_glpk.log "<number> \\\\(MINimum\\\\)" 1 1e-6)
set_tests_properties(miplib3_markshare1_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_markshare2_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_glpk.log)

set_tests_properties(miplib3_markshare2_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_markshare2_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_glpk.log "<number> \\\\(MINimum\\\\)" 1 1e-6)
set_tests_properties(miplib3_markshare2_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_mas74_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_glpk.log)

set_tests_properties(miplib3_mas74_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_mas74_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_glpk.log "<number> \\\\(MINimum\\\\)" 11801.1857 1e-6)
set_tests_properties(miplib3_mas74_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_mas76_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_glpk.log)

set_tests_properties(miplib3_mas76_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mas76_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_mas76_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_glpk.log "<number> \\\\(MINimum\\\\)" 4005.1 1e-6)
set_tests_properties(miplib3_mas76_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_misc03_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_glpk.log)

set_tests_properties(miplib3_misc03_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc03_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_misc03_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_glpk.log "<number> \\\\(MINimum\\\\)" 3360 1e-6)
set_tests_properties(miplib3_misc03_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_misc06_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_glpk.log)

set_tests_properties(miplib3_misc06_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc06_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_misc06_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_glpk.log "<number> \\\\(MINimum\\\\)" 12850.8607 1e-6)
set_tests_properties(miplib3_misc06_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_misc07_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_glpk.log)

set_tests_properties(miplib3_misc07_glpk PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_misc07_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_misc07_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_glpk.log "<number> \\\\(MINimum\\\\)" 2810 1e-6)
set_tests_properties(miplib3_misc07_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_mitre_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_glpk.log)

set_tests_properties(miplib3_mitre_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mitre_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_mitre_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_glpk.log "<number> \\\\(MINimum\\\\)" 115155 1e-6)
set_tests_properties(miplib3_mitre_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_mkc_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_glpk.log)

set_tests_properties(miplib3_mkc_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mkc_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_mkc_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_glpk.log "<number> \\\\(MINimum\\\\)" -553.75 1e-6)
set_tests_properties(miplib3_mkc_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_mod008_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_glpk.log)

set_tests_properties(miplib3_mod008_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod008_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_mod008_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_glpk.log "<number> \\\\(MINimum\\\\)" 307 1e-6)
set_tests_properties(miplib3_mod008_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_mod010_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_glpk.log)

set_tests_properties(miplib3_mod010_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod010_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_mod010_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_glpk.log "<number> \\\\(MINimum\\\\)" 6548 1e-6)
set_tests_properties(miplib3_mod010_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_mod011_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_glpk.log)

set_tests_properties(miplib3_mod011_glpk PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_mod011_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_mod011_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_glpk.log "<number> \\\\(MINimum\\\\)" -54558535 1e-6)
set_tests_properties(miplib3_mod011_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_modglob_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_glpk.log)

set_tests_properties(miplib3_modglob_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_modglob_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_modglob_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_glpk.log "<number> \\\\(MINimum\\\\)" 20740508 1e-6)
set_tests_properties(miplib3_modglob_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_noswot_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_glpk.log)

set_tests_properties(miplib3_noswot_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_noswot_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_noswot_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_glpk.log "<number> \\\\(MINimum\\\\)" -43 1e-6)
set_tests_properties(miplib3_noswot_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_nw04_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_glpk.log)

set_tests_properties(miplib3_nw04_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_nw04_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_nw04_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_glpk.log "<number> \\\\(MINimum\\\\)" 16862 1e-6)
set_tests_properties(miplib3_nw04_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_p0033_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_glpk.log)

set_tests_properties(miplib3_p0033_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0033_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_p0033_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_glpk.log "<number> \\\\(MINimum\\\\)" 3089 1e-6)
set_tests_properties(miplib3_p0033_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_p0201_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_glpk.log)

set_tests_properties(miplib3_p0201_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0201_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_p0201_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_glpk.log "<number> \\\\(MINimum\\\\)" 7615 1e-6)
set_tests_properties(miplib3_p0201_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_p0282_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_glpk.log)

set_tests_properties(miplib3_p0282_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0282_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_p0282_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_glpk.log "<number> \\\\(MINimum\\\\)" 258411 1e-6)
set_tests_properties(miplib3_p0282_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_p0548_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_glpk.log)

set_tests_properties(miplib3_p0548_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0548_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_p0548_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_glpk.log "<number> \\\\(MINimum\\\\)" 8691 1e-6)
set_tests_properties(miplib3_p0548_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_p2756_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_glpk.log)

set_tests_properties(miplib3_p2756_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p2756_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_p2756_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_glpk.log "<number> \\\\(MINimum\\\\)" 3124 1e-6)
set_tests_properties(miplib3_p2756_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_pk1_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_glpk.log)

set_tests_properties(miplib3_pk1_glpk PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_pk1_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_pk1_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_glpk.log "<number> \\\\(MINimum\\\\)" 11.0 1e-6)
set_tests_properties(miplib3_pk1_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_pp08aCUTS_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_glpk.log)

set_tests_properties(miplib3_pp08aCUTS_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08aCUTS_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_pp08aCUTS_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_glpk.log "<number> \\\\(MINimum\\\\)" 7350.0 1e-6)
set_tests_properties(miplib3_pp08aCUTS_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_pp08a_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_glpk.log)

set_tests_properties(miplib3_pp08a_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08a_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_pp08a_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_glpk.log "<number> \\\\(MINimum\\\\)" 7350.0 1e-6)
set_tests_properties(miplib3_pp08a_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_qiu_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_glpk.log)

set_tests_properties(miplib3_qiu_glpk PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qiu_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_qiu_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_glpk.log "<number> \\\\(MINimum\\\\)" -132.873137 1e-6)
set_tests_properties(miplib3_qiu_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_qnet1_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_glpk.log)

set_tests_properties(miplib3_qnet1_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_qnet1_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_glpk.log "<number> \\\\(MINimum\\\\)" 16029.692681 1e-6)
set_tests_properties(miplib3_qnet1_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_qnet1_o_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_glpk.log)

set_tests_properties(miplib3_qnet1_o_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_o_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_qnet1_o_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_glpk.log "<number> \\\\(MINimum\\\\)" 16029.692681 1e-6)
set_tests_properties(miplib3_qnet1_o_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_rentacar_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_glpk.log)

set_tests_properties(miplib3_rentacar_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rentacar_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_rentacar_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_glpk.log "<number> \\\\(MINimum\\\\)" 30356761 1e-6)
set_tests_properties(miplib3_rentacar_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_rgn_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_glpk.log)

set_tests_properties(miplib3_rgn_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rgn_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_rgn_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_glpk.log "<number> \\\\(MINimum\\\\)" 82.1999 1e-6)
set_tests_properties(miplib3_rgn_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_rout_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_rout_glpk.log)

set_tests_properties(miplib3_rout_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_rout_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_rout_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_rout_glpk.log "<number> \\\\(MINimum\\\\)" 1077.56 1e-6)
set_tests_properties(miplib3_rout_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_set1ch_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_glpk.log)

set_tests_properties(miplib3_set1ch_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

create_log_analysis(miplib3_set1ch_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_glpk.log "<number> \\\\(MINimum\\\\)" 54537.75 1e-6)
set_tests_properties(miplib3_set1ch_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG")

add_coin_test(miplib3_seymour_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_glpk.log)

set_tests_properties(miplib3_seymour_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_seymour_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_glpk.log "<number> \\\\(MINimum\\\\)" 423 1e-6)
set_tests_properties(miplib3_seymour_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_stein27_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_glpk.log)

set_tests_properties(miplib3_stein27_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein27_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_stein27_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_glpk.log "<number> \\\\(MINimum\\\\)" 18 1e-6)
set_tests_properties(miplib3_stein27_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_stein45_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_glpk.log)

set_tests_properties(miplib3_stein45_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein45_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_stein45_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_glpk.log "<number> \\\\(MINimum\\\\)" 30 1e-6)
set_tests_properties(miplib3_stein45_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_swath_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_swath_glpk.log)

set_tests_properties(miplib3_swath_glpk PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_swath_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_swath_glpk.log "<number> \\\\(MINimum\\\\)" 497.603 1e-6)
set_tests_properties(miplib3_swath_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_vpm1_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_glpk.log)

set_tests_properties(miplib3_vpm1_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm1_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_vpm1_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_glpk.log "<number> \\\\(MINimum\\\\)" 20 1e-6)
set_tests_properties(miplib3_vpm1_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")

add_coin_test(miplib3_vpm2_glpk
              ${CMAKE_BINARY_DIR}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz
              ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_glpk.log)

set_tests_properties(miplib3_vpm2_glpk PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm2_glpk PROPERTIES LABELS "MPS;GLPK;MIPLIB")

create_log_analysis(miplib3_vpm2_glpk "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_glpk.log "<number> \\\\(MINimum\\\\)" 13.75 1e-6)
set_tests_properties(miplib3_vpm2_glpk_01_Analysis PROPERTIES LABELS "MPS;GLPK;MIPLIB")
