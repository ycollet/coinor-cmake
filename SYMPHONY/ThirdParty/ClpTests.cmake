include(coin-macros)

set(CLP_INSTANCES_DIR "${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST")

#
# Infeas tests
#

add_coin_test(infeas_chemcom_mps_clp_standard clp
             ${CLP_INSTANCES_DIR}/Infeas/chemcom.mps)

set_tests_properties(infeas_chemcom_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_chemcom_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_pilot4i_mps_clp_standard clp
             ${CLP_INSTANCES_DIR}/Infeas/pilot4i.mps)

set_tests_properties(infeas_pilot4i_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pilot4i_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_reactor_mps_clp_standard clp
             ${CLP_INSTANCES_DIR}/Infeas/reactor.mps)

set_tests_properties(infeas_reactor_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_reactor_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_bgetam_mps_clp_standard clp
             ${CLP_INSTANCES_DIR}/Infeas/bgetam.mps)

set_tests_properties(infeas_bgetam_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgetam_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_refinery_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/refinery.mps)

set_tests_properties(infeas_refinery_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_refinery_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_cplex2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/cplex2.mps)

set_tests_properties(infeas_cplex2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_forest6_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/forest6.mps)

set_tests_properties(infeas_forest6_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_forest6_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_cplex1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/cplex1.mps)

set_tests_properties(infeas_cplex1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_cplex1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_box1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/box1.mps)

set_tests_properties(infeas_box1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_box1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_itest6_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/itest6.mps)

set_tests_properties(infeas_itest6_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest6_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_bgindy_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/bgindy.mps)

set_tests_properties(infeas_bgindy_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgindy_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_klein2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/klein2.mps)

set_tests_properties(infeas_klein2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_ceria3d_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/ceria3d.mps)

set_tests_properties(infeas_ceria3d_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ceria3d_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_ex72a_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/ex72a.mps)

set_tests_properties(infeas_ex72a_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex72a_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_greenbea_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/greenbea.mps)

set_tests_properties(infeas_greenbea_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_greenbea_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS;LONG")

add_coin_test(infeas_klein3_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/klein3.mps)

set_tests_properties(infeas_klein3_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein3_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_itest2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/itest2.mps)

set_tests_properties(infeas_itest2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_itest2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_ex73a_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/ex73a.mps)

set_tests_properties(infeas_ex73a_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_ex73a_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_klein1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/klein1.mps)

set_tests_properties(infeas_klein1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_klein1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_woodinfe_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/woodinfe.mps)

set_tests_properties(infeas_woodinfe_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_woodinfe_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_bgprtr_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/bgprtr.mps)

set_tests_properties(infeas_bgprtr_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgprtr_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_galenet_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/galenet.mps)

set_tests_properties(infeas_galenet_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_galenet_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_gran_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/gran.mps)

set_tests_properties(infeas_gran_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gran_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_mondou2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/mondou2.mps)

set_tests_properties(infeas_mondou2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_mondou2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_qual_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/qual.mps)

set_tests_properties(infeas_qual_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_qual_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_vol1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/vol1.mps)

set_tests_properties(infeas_vol1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_vol1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_pang_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/pang.mps)

set_tests_properties(infeas_pang_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_pang_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_bgdbg1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/bgdbg1.mps)

set_tests_properties(infeas_bgdbg1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_bgdbg1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

add_coin_test(infeas_gosh_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Infeas/gosh.mps)

set_tests_properties(infeas_gosh_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(infeas_gosh_mps_clp_standard PROPERTIES LABELS "MPS;CLP;INFEAS")

#
# Big test
#

add_coin_test(big_mkc7_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Big/mkc7.mps.gz)

set_tests_properties(big_mkc7_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(big_mkc7_mps_clp_standard PROPERTIES LABELS "MPS;CLP;BIG;LONG")

#
# Sample tests
#

add_coin_test(sample_scOneInt_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/scOneInt.mps)

set_tests_properties(sample_scOneInt_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_scOneInt_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_p0201_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/p0201.mps)

set_tests_properties(sample_p0201_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0201_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_p0548_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/p0548.mps)

set_tests_properties(sample_p0548_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0548_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_hello_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/hello.mps)

set_tests_properties(sample_hello_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_hello_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_e226_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/e226.mps)

set_tests_properties(sample_e226_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_e226_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_tp3_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/tp3.mps)

set_tests_properties(sample_tp3_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp3_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_tp4_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/tp4.mps)

set_tests_properties(sample_tp4_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp4_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_finnis_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/finnis.mps)

set_tests_properties(sample_finnis_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_finnis_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_5_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/exmip1.5)

set_tests_properties(sample_5_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_5_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_exmip1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/exmip1.mps)

set_tests_properties(sample_exmip1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_exmip1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_share2qp_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/share2qp.mps)

set_tests_properties(sample_share2qp_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_share2qp_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_afiro_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/afiro.mps)

set_tests_properties(sample_afiro_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_afiro_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_nw460_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/nw460.mps)

set_tests_properties(sample_nw460_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_nw460_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_brandy_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/brandy.mps)

set_tests_properties(sample_brandy_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_brandy_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_tp5_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/tp5.mps)

set_tests_properties(sample_tp5_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_tp5_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_pack1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/pack1.mps)

set_tests_properties(sample_pack1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_pack1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

add_coin_test(sample_p0033_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Sample/p0033.mps)

set_tests_properties(sample_p0033_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(sample_p0033_mps_clp_standard PROPERTIES LABELS "MPS;CLP;SAMPLE")

#
# Netlib tests
#

# Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme

add_coin_test(netlib_fit2d_mps_clp_standard clp
             ${CLP_INSTANCES_DIR}/Netlib/fit2d.mps.gz)

set_tests_properties(netlib_fit2d_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2d_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_fit2d_mps_clp_standard "01_Analysis" "Optimal objective <number>" -68464.293294 1e-6)
set_tests_properties(netlib_fit2d_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_forplan_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/forplan.mps.gz)

set_tests_properties(netlib_forplan_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_forplan_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_forplan_mps_clp_standard "01_Analysis" "Optimal objective <number>" -664.21873953 1e-6)
set_tests_properties(netlib_forplan_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_ship08s_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ship08s.mps.gz)

set_tests_properties(netlib_ship08s_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08s_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ship08s_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1920098.2105 1e-6)
set_tests_properties(netlib_ship08s_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_fit1d_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/fit1d.mps.gz)

set_tests_properties(netlib_fit1d_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1d_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_fit1d_mps_clp_standard "01_Analysis" "Optimal objective <number>" -9146.3780924 1e-6)
set_tests_properties(netlib_fit1d_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_brandy_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/brandy.mps.gz)

set_tests_properties(netlib_brandy_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_brandy_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_brandy_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1518.5098965 1e-6)
set_tests_properties(netlib_brandy_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scfxm1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scfxm1.mps.gz)

set_tests_properties(netlib_scfxm1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scfxm1_mps_clp_standard "01_Analysis" "Optimal objective <number>" 18416.759028 1e-6)
set_tests_properties(netlib_scfxm1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_grow22_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/grow22.mps.gz)

set_tests_properties(netlib_grow22_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow22_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_grow22_mps_clp_standard "01_Analysis" "Optimal objective <number>" -160834336.48 1e-6)
set_tests_properties(netlib_grow22_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_bandm_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/bandm.mps.gz)

set_tests_properties(netlib_bandm_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bandm_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_bandm_mps_clp_standard "01_Analysis" "Optimal objective <number>" -158.62801845 1e-6)
set_tests_properties(netlib_bandm_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_fit1p_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/fit1p.mps.gz)

set_tests_properties(netlib_fit1p_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit1p_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_fit1p_mps_clp_standard "01_Analysis" "Optimal objective <number>" 9146.3780924 1e-6)
set_tests_properties(netlib_fit1p_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_standata_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/standata.mps.gz)

set_tests_properties(netlib_standata_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standata_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_standata_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1257.6995000 1e-6)
set_tests_properties(netlib_standata_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_pilot4_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/pilot4.mps.gz)

set_tests_properties(netlib_pilot4_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot4_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_pilot4_mps_clp_standard "01_Analysis" "Optimal objective <number>" -2581.1392641 1e-6)
set_tests_properties(netlib_pilot4_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_stocfor2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/stocfor2.mps.gz)

set_tests_properties(netlib_stocfor2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_stocfor2_mps_clp_standard "01_Analysis" "Optimal objective <number>" -39024.408538 1e-6)
set_tests_properties(netlib_stocfor2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sctap1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sctap1.mps.gz)

set_tests_properties(netlib_sctap1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sctap1_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1412.2500000 1e-6)
set_tests_properties(netlib_sctap1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scrs8_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scrs8.mps.gz)

set_tests_properties(netlib_scrs8_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scrs8_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scrs8_mps_clp_standard "01_Analysis" "Optimal objective <number>" 904.29998619 1e-6)
set_tests_properties(netlib_scrs8_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sctap2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sctap2.mps.gz)

set_tests_properties(netlib_sctap2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sctap2_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1724.8071429 1e-6)
set_tests_properties(netlib_sctap2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_pilot87_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/pilot87.mps.gz)

set_tests_properties(netlib_pilot87_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot87_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_pilot87_mps_clp_standard "01_Analysis" "Optimal objective <number>" 301.71072827 1e-6)
set_tests_properties(netlib_pilot87_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_greenbea_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/greenbea.mps.gz)

set_tests_properties(netlib_greenbea_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbea_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_greenbea_mps_clp_standard "01_Analysis" "Optimal objective <number>" -72462405.908 1e-6)
set_tests_properties(netlib_greenbea_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_woodw_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/woodw.mps.gz)

set_tests_properties(netlib_woodw_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_woodw_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_woodw_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1.3044763331 1e-6)
set_tests_properties(netlib_woodw_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_recipe_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/recipe.mps.gz)

set_tests_properties(netlib_recipe_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_recipe_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_recipe_mps_clp_standard "01_Analysis" "Optimal objective <number>" -266.61600000 1e-6)
set_tests_properties(netlib_recipe_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_share1b_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/share1b.mps.gz)

set_tests_properties(netlib_share1b_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share1b_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_share1b_mps_clp_standard "01_Analysis" "Optimal objective <number>" -76589.318579 1e-6)
set_tests_properties(netlib_share1b_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_tuff_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/tuff.mps.gz)

set_tests_properties(netlib_tuff_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_tuff_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_tuff_mps_clp_standard "01_Analysis" "Optimal objective <number>" 0.29214776509 1e-6)
set_tests_properties(netlib_tuff_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_share2b_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/share2b.mps.gz)

set_tests_properties(netlib_share2b_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_share2b_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_share2b_mps_clp_standard "01_Analysis" "Optimal objective <number>" -415.73224074 1e-6)
set_tests_properties(netlib_share2b_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_bore3d_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/bore3d.mps.gz)

set_tests_properties(netlib_bore3d_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bore3d_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_bore3d_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1373.0803942 1e-6)
set_tests_properties(netlib_bore3d_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_d2q06c_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/d2q06c.mps.gz)

set_tests_properties(netlib_d2q06c_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d2q06c_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_d2q06c_mps_clp_standard "01_Analysis" "Optimal objective <number>" 122784.23615 1e-6)
set_tests_properties(netlib_d2q06c_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sc50b_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sc50b.mps.gz)

set_tests_properties(netlib_sc50b_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50b_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sc50b_mps_clp_standard "01_Analysis" "Optimal objective <number>" -70 1e-6)
set_tests_properties(netlib_sc50b_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_pilot_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/pilot.mps.gz)

set_tests_properties(netlib_pilot_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilot_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_pilot_mps_clp_standard "01_Analysis" "Optimal objective <number>" -557.40430007 1e-6)
set_tests_properties(netlib_pilot_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_bnl1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/bnl1.mps.gz)

set_tests_properties(netlib_bnl1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_bnl1_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1977.6292856 1e-6)
set_tests_properties(netlib_bnl1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_ship04l_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ship04l.mps.gz)

set_tests_properties(netlib_ship04l_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04l_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ship04l_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1793324.5380 1e-6)
set_tests_properties(netlib_ship04l_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sc105_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sc105.mps.gz)

set_tests_properties(netlib_sc105_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc105_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sc105_mps_clp_standard "01_Analysis" "Optimal objective <number>" -52.202061212 1e-6)
set_tests_properties(netlib_sc105_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_boeing2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/boeing2.mps.gz)

set_tests_properties(netlib_boeing2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_boeing2_mps_clp_standard "01_Analysis" "Optimal objective <number>" -315.01872802 1e-6)
set_tests_properties(netlib_boeing2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_nesm_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/nesm.mps.gz)

set_tests_properties(netlib_nesm_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_nesm_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_nesm_mps_clp_standard "01_Analysis" "Optimal objective <number>" 14076073.035 1e-6)
set_tests_properties(netlib_nesm_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sc205_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sc205.mps.gz)

set_tests_properties(netlib_sc205_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc205_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sc205_mps_clp_standard "01_Analysis" "Optimal objective <number>" -52.202061212 1e-6)
set_tests_properties(netlib_sc205_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_finnis_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/finnis.mps.gz)

set_tests_properties(netlib_finnis_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_finnis_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_finnis_mps_clp_standard "01_Analysis" "Optimal objective <number>" 172790.96547 1e-6)
set_tests_properties(netlib_finnis_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_degen2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/degen2.mps.gz)

set_tests_properties(netlib_degen2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_degen2_mps_clp_standard "01_Analysis" "Optimal objective <number>" -1435.1780000 1e-6)
set_tests_properties(netlib_degen2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_maros-r7_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/maros-r7.mps)

set_tests_properties(netlib_maros-r7_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros-r7_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_maros-r7_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1497185.1665 1e-6)
set_tests_properties(netlib_maros-r7_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_ship04s_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ship04s.mps.gz)

set_tests_properties(netlib_ship04s_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship04s_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ship04s_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1798714.7004 1e-6)
set_tests_properties(netlib_ship04s_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_wood1p_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/wood1p.mps.gz)

set_tests_properties(netlib_wood1p_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_wood1p_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_wood1p_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1.4429024116 1e-6)
set_tests_properties(netlib_wood1p_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_lotfi_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/lotfi.mps.gz)

set_tests_properties(netlib_lotfi_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_lotfi_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_lotfi_mps_clp_standard "01_Analysis" "Optimal objective <number>" -25.264706062 1e-6)
set_tests_properties(netlib_lotfi_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_gfrd-pnc_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/gfrd-pnc.mps)

set_tests_properties(netlib_gfrd-pnc_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_gfrd-pnc_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_gfrd-pnc_mps_clp_standard "01_Analysis" "Optimal objective <number>" 6902235.9995 1e-6)
set_tests_properties(netlib_gfrd-pnc_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_etamacro_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/etamacro.mps.gz)

set_tests_properties(netlib_etamacro_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_etamacro_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_etamacro_mps_clp_standard "01_Analysis" "Optimal objective <number>" -755.71521774 1e-6)
set_tests_properties(netlib_etamacro_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_grow7_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/grow7.mps.gz)

set_tests_properties(netlib_grow7_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow7_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_grow7_mps_clp_standard "01_Analysis" "Optimal objective <number>" -47787811.815 1e-6)
set_tests_properties(netlib_grow7_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_dfl001_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/dfl001.mps.gz)

set_tests_properties(netlib_dfl001_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_dfl001_mps_clp_standard PROPERTIES LABELS "MPS;CLP;WARNING")
# (there's a ** in the readme file in the netlib website)

create_log_analysis(netlib_dfl001_mps_clp_standard "01_Analysis" "Optimal objective <number>" 11266396.05 1e-6)
set_tests_properties(netlib_dfl001_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;WARNING")

add_coin_test(netlib_agg_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/agg.mps.gz)

set_tests_properties(netlib_agg_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_agg_mps_clp_standard "01_Analysis" "Optimal objective <number>" -35991767.287 1e-6)
set_tests_properties(netlib_agg_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_standgub_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/standgub.mps.gz)

set_tests_properties(netlib_standgub_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standgub_mps_clp_standard PROPERTIES LABELS "MPS;CLP;WARNING")
# Nothing in the readme - Clp value

create_log_analysis(netlib_standgub_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1257.6995 1e-6)
set_tests_properties(netlib_standgub_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;WARNING")

add_coin_test(netlib_ship12l_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ship12l.mps.gz)

set_tests_properties(netlib_ship12l_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12l_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ship12l_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1470187.9193 1e-6)
set_tests_properties(netlib_ship12l_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_standmps_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/standmps.mps.gz)

set_tests_properties(netlib_standmps_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_standmps_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_standmps_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1406.0175000 1e-6)
set_tests_properties(netlib_standmps_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scagr25_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scagr25.mps.gz)

set_tests_properties(netlib_scagr25_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr25_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scagr25_mps_clp_standard "01_Analysis" "Optimal objective <number>" -14753433.061 1e-6)
set_tests_properties(netlib_scagr25_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_capri_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/capri.mps.gz)

set_tests_properties(netlib_capri_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_capri_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_capri_mps_clp_standard "01_Analysis" "Optimal objective <number>" 2690.0129138 1e-6)
set_tests_properties(netlib_capri_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_cycle_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/cycle.mps.gz)

set_tests_properties(netlib_cycle_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_cycle_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_cycle_mps_clp_standard "01_Analysis" "Optimal objective <number>" -5.2263930249 1e-6)
set_tests_properties(netlib_cycle_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_greenbeb_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/greenbeb.mps.gz)

set_tests_properties(netlib_greenbeb_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_greenbeb_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_greenbeb_mps_clp_standard "01_Analysis" "Optimal objective <number>" -4302147.6065 1e-6)
set_tests_properties(netlib_greenbeb_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_agg2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/agg2.mps.gz)

set_tests_properties(netlib_agg2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_agg2_mps_clp_standard "01_Analysis" "Optimal objective <number>" -20239252.356 1e-6)
set_tests_properties(netlib_agg2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_stair_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/stair.mps.gz)

set_tests_properties(netlib_stair_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stair_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_stair_mps_clp_standard "01_Analysis" "Optimal objective <number>" -251.26695119 1e-6)
set_tests_properties(netlib_stair_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_shell_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/shell.mps.gz)

set_tests_properties(netlib_shell_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_shell_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_shell_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1208825346.0 1e-6)
set_tests_properties(netlib_shell_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sierra_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sierra.mps.gz)

set_tests_properties(netlib_sierra_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sierra_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sierra_mps_clp_standard "01_Analysis" "Optimal objective <number>" 15394362.184 1e-6)
set_tests_properties(netlib_sierra_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_afiro_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/afiro.mps.gz)

set_tests_properties(netlib_afiro_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_afiro_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_afiro_mps_clp_standard "01_Analysis" "Optimal objective <number>" -464.75314286 1e-6)
set_tests_properties(netlib_afiro_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scsd1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scsd1.mps.gz)

set_tests_properties(netlib_scsd1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scsd1_mps_clp_standard "01_Analysis" "Optimal objective <number>" 8.6666666743 1e-6)
set_tests_properties(netlib_scsd1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scsd8_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scsd8.mps.gz)

set_tests_properties(netlib_scsd8_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd8_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scsd8_mps_clp_standard "01_Analysis" "Optimal objective <number>" 904.99999993 1e-6)
set_tests_properties(netlib_scsd8_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_ship08l_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ship08l.mps.gz)

set_tests_properties(netlib_ship08l_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship08l_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ship08l_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1909055.2114 1e-6)
set_tests_properties(netlib_ship08l_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_25fv47_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/25fv47.mps.gz)

set_tests_properties(netlib_25fv47_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_25fv47_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_25fv47_mps_clp_standard "01_Analysis" "Optimal objective <number>" 5501.8458883 1e-6)
set_tests_properties(netlib_25fv47_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_czprob_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/czprob.mps.gz)

set_tests_properties(netlib_czprob_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_czprob_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_czprob_mps_clp_standard "01_Analysis" "Optimal objective <number>" 2185196.6989 1e-6)
set_tests_properties(netlib_czprob_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_adlittle_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/adlittle.mps.gz)

set_tests_properties(netlib_adlittle_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_adlittle_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_adlittle_mps_clp_standard "01_Analysis" "Optimal objective <number>" 225494.96316 1e-6)
set_tests_properties(netlib_adlittle_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_d6cube_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/d6cube.mps.gz)

set_tests_properties(netlib_d6cube_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_d6cube_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_d6cube_mps_clp_standard "01_Analysis" "Optimal objective <number>" 315.49166667 1e-6)
set_tests_properties(netlib_d6cube_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scorpion_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scorpion.mps.gz)

set_tests_properties(netlib_scorpion_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scorpion_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scorpion_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1878.1248227 1e-6)
set_tests_properties(netlib_scorpion_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sctap3_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sctap3.mps.gz)

set_tests_properties(netlib_sctap3_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sctap3_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sctap3_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1424.0 1e-6)
set_tests_properties(netlib_sctap3_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_seba_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/seba.mps.gz)

set_tests_properties(netlib_seba_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_seba_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_seba_mps_clp_standard "01_Analysis" "Optimal objective <number>" 15711.6 1e-6)
set_tests_properties(netlib_seba_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_modszk1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/modszk1.mps.gz)

set_tests_properties(netlib_modszk1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_modszk1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_modszk1_mps_clp_standard "01_Analysis" "Optimal objective <number>" 320.61972906 1e-6)
set_tests_properties(netlib_modszk1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_pilotnov_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/pilotnov.mps.gz)

set_tests_properties(netlib_pilotnov_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_pilotnov_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_pilotnov_mps_clp_standard "01_Analysis" "Optimal objective <number>" -4497.2761882 1e-6)
set_tests_properties(netlib_pilotnov_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_beaconfd_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/beaconfd.mps.gz)

set_tests_properties(netlib_beaconfd_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_beaconfd_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_beaconfd_mps_clp_standard "01_Analysis" "Optimal objective <number>" 33592.485807 1e-6)
set_tests_properties(netlib_beaconfd_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_e226_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/e226.mps.gz)

set_tests_properties(netlib_e226_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_e226_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_e226_mps_clp_standard "01_Analysis" "Optimal objective <number>" -18.751929066 1e-6)
set_tests_properties(netlib_e226_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_degen3_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/degen3.mps.gz)

set_tests_properties(netlib_degen3_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_degen3_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_degen3_mps_clp_standard "01_Analysis" "Optimal objective <number>" -987.29400000 1e-6)
set_tests_properties(netlib_degen3_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scfxm2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scfxm2.mps.gz)

set_tests_properties(netlib_scfxm2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scfxm2_mps_clp_standard "01_Analysis" "Optimal objective <number>" 36660.261565 1e-6)
set_tests_properties(netlib_scfxm2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_fffff800_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/fffff800.mps.gz)

set_tests_properties(netlib_fffff800_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fffff800_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_fffff800_mps_clp_standard "01_Analysis" "Optimal objective <number>" 555679.61165 1e-6)
set_tests_properties(netlib_fffff800_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_kb2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/kb2.mps.gz)

set_tests_properties(netlib_kb2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_kb2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_kb2_mps_clp_standard "01_Analysis" "Optimal objective <number>" -1749.9001299 1e-6)
set_tests_properties(netlib_kb2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_ganges_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ganges.mps.gz)

set_tests_properties(netlib_ganges_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ganges_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ganges_mps_clp_standard "01_Analysis" "Optimal objective <number>" -109586.36356 1e-6)
set_tests_properties(netlib_ganges_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_stocfor1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/stocfor1.mps.gz)

set_tests_properties(netlib_stocfor1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_stocfor1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_stocfor1_mps_clp_standard "01_Analysis" "Optimal objective <number>" -41131.976219 1e-6)
set_tests_properties(netlib_stocfor1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scsd6_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scsd6.mps.gz)

set_tests_properties(netlib_scsd6_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scsd6_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scsd6_mps_clp_standard "01_Analysis" "Optimal objective <number>" 50.500000078 1e-6)
set_tests_properties(netlib_scsd6_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_80bau3b_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/80bau3b.mps.gz)

set_tests_properties(netlib_80bau3b_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_80bau3b_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_80bau3b_mps_clp_standard "01_Analysis" "Optimal objective <number>" 987232.16072 1e-6)
set_tests_properties(netlib_80bau3b_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_ship12s_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/ship12s.mps.gz)

set_tests_properties(netlib_ship12s_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_ship12s_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_ship12s_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1489236.1344 1e-6)
set_tests_properties(netlib_ship12s_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_agg3_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/agg3.mps.gz)

set_tests_properties(netlib_agg3_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_agg3_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_agg3_mps_clp_standard "01_Analysis" "Optimal objective <number>" 10312115.935 1e-6)
set_tests_properties(netlib_agg3_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_maros_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/maros.mps.gz)

set_tests_properties(netlib_maros_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_maros_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_maros_mps_clp_standard "01_Analysis" "Optimal objective <number>" -58063.743701 1e-6)
set_tests_properties(netlib_maros_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_perold_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/perold.mps.gz)

set_tests_properties(netlib_perold_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_perold_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_perold_mps_clp_standard "01_Analysis" "Optimal objective <number>" -9380.7580773 1e-6)
set_tests_properties(netlib_perold_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scagr7_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scagr7.mps.gz)

set_tests_properties(netlib_scagr7_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scagr7_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scagr7_mps_clp_standard "01_Analysis" "Optimal objective <number>" -2331389.2548 1e-6)
set_tests_properties(netlib_scagr7_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_scfxm3_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/scfxm3.mps.gz)

set_tests_properties(netlib_scfxm3_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_scfxm3_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_scfxm3_mps_clp_standard "01_Analysis" "Optimal objective <number>" 54901.254550 1e-6)
set_tests_properties(netlib_scfxm3_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_grow15_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/grow15.mps.gz)

set_tests_properties(netlib_grow15_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_grow15_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_grow15_mps_clp_standard "01_Analysis" "Optimal objective <number>" -106870941.29 1e-6)
set_tests_properties(netlib_grow15_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_fit2p_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/fit2p.mps.gz)

set_tests_properties(netlib_fit2p_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_fit2p_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_fit2p_mps_clp_standard "01_Analysis" "Optimal objective <number>" 68464.293232 1e-6)
set_tests_properties(netlib_fit2p_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_boeing1_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/boeing1.mps.gz)

set_tests_properties(netlib_boeing1_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_boeing1_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_boeing1_mps_clp_standard "01_Analysis" "Optimal objective <number>" -335.21356751 1e-6)
set_tests_properties(netlib_boeing1_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_sc50a_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/sc50a.mps.gz)

set_tests_properties(netlib_sc50a_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_sc50a_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_sc50a_mps_clp_standard "01_Analysis" "Optimal objective <number>" -64.575077059 1e-6)
set_tests_properties(netlib_sc50a_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_vtpbase_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/vtpbase.mps.gz)

set_tests_properties(netlib_vtpbase_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_vtpbase_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_vtpbase_mps_clp_standard "01_Analysis" "Optimal objective <number>" 129831.46246 1e-6)
set_tests_properties(netlib_vtpbase_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_blend_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/blend.mps.gz)

set_tests_properties(netlib_blend_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_blend_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_blend_mps_clp_standard "01_Analysis" "Optimal objective <number>" -30.812149846 1e-6)
set_tests_properties(netlib_blend_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_bnl2_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/bnl2.mps.gz)

set_tests_properties(netlib_bnl2_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_bnl2_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_bnl2_mps_clp_standard "01_Analysis" "Optimal objective <number>" 1811.2365404 1e-6)
set_tests_properties(netlib_bnl2_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

add_coin_test(netlib_israel_mps_clp_standard clp
              ${CLP_INSTANCES_DIR}/Netlib/israel.mps.gz)

set_tests_properties(netlib_israel_mps_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(netlib_israel_mps_clp_standard PROPERTIES LABELS "MPS;CLP;NETLIB")

create_log_analysis(netlib_israel_mps_clp_standard "01_Analysis" "Optimal objective <number>" -896644.82186 1e-6)
set_tests_properties(netlib_israel_mps_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;NETLIB")

#
# miplib3 tests
#

add_coin_test(miplib3_10teams_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/10teams.gz)

set_tests_properties(miplib3_10teams_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_10teams_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_10teams_clp_standard "01_Analysis" "Optimal objective <number>" 917 1e-6)
set_tests_properties(miplib3_10teams_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_air03_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/air03.gz)

set_tests_properties(miplib3_air03_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_air03_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_air03_clp_standard "01_Analysis" "Optimal objective <number>" 338864.25 1e-6)
set_tests_properties(miplib3_air03_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_air04_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/air04.gz)

set_tests_properties(miplib3_air04_clp_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air04_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_air04_clp_standard "01_Analysis" "Optimal objective <number>" 55535.436 1e-6)
set_tests_properties(miplib3_air04_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_air05_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/air05.gz)

set_tests_properties(miplib3_air05_clp_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_air05_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_air05_clp_standard "01_Analysis" "Optimal objective <number>" 25877.609 1e-6)
set_tests_properties(miplib3_air05_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_arki001_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/arki001.gz)

set_tests_properties(miplib3_arki001_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_arki001_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

# Not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_arki001_clp_standard "01_Analysis" "Optimal objective <number>" 7579599.80787 1e-6)
set_tests_properties(miplib3_arki001_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_bell3a_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/bell3a.gz)

set_tests_properties(miplib3_bell3a_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell3a_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_bell3a_clp_standard "01_Analysis" "Optimal objective <number>" 862578.64 1e-6)
set_tests_properties(miplib3_bell3a_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_bell5_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/bell5.gz)

set_tests_properties(miplib3_bell5_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_bell5_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_bell5_clp_standard "01_Analysis" "Optimal objective <number>" 8608417.95 1e-6)
set_tests_properties(miplib3_bell5_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_blend2_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/blend2.gz)

set_tests_properties(miplib3_blend2_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_blend2_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_blend2_clp_standard "01_Analysis" "Optimal objective <number>" 6.9156751140 1e-6)
set_tests_properties(miplib3_blend2_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_cap6000_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/cap6000.gz)

set_tests_properties(miplib3_cap6000_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_cap6000_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_cap6000_clp_standard "01_Analysis" "Optimal objective <number>" -2451537.325 1e-6)
set_tests_properties(miplib3_cap6000_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_dano3mip_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/dano3mip.gz)

set_tests_properties(miplib3_dano3mip_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_dano3mip_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_dano3mip_clp_standard "01_Analysis" "Optimal objective <number>" 576.23162474 1e-6)
set_tests_properties(miplib3_dano3mip_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_danoint_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/danoint.gz)

set_tests_properties(miplib3_danoint_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_danoint_clp_standard "01_Analysis" "Optimal objective <number>" 62.637280418 1e-6)
set_tests_properties(miplib3_danoint_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_dcmulti_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/dcmulti.gz)

set_tests_properties(miplib3_dcmulti_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dcmulti_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_dcmulti_clp_standard "01_Analysis" "Optimal objective <number>" 183975.5397 1e-6)
set_tests_properties(miplib3_dcmulti_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_dsbmip_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/dsbmip.gz)

set_tests_properties(miplib3_dsbmip_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_dsbmip_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_dsbmip_clp_standard "01_Analysis" "Optimal objective <number>" -305.19817501 1e-6)
set_tests_properties(miplib3_dsbmip_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_egout_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/egout.gz)

set_tests_properties(miplib3_egout_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_egout_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_egout_clp_standard "01_Analysis" "Optimal objective <number>" 149.589 1e-6)
set_tests_properties(miplib3_egout_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_enigma_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/enigma.gz)

set_tests_properties(miplib3_enigma_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_enigma_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_enigma_clp_standard "01_Analysis" "Optimal objective <number>" 0.0 1e-6)
set_tests_properties(miplib3_enigma_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_fast0507_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/fast0507.gz)

set_tests_properties(miplib3_fast0507_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_fast0507_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_fast0507_clp_standard "01_Analysis" "Optimal objective <number>" 172.14556668 1e-6)
set_tests_properties(miplib3_fast0507_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_fiber_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/fiber.gz)

set_tests_properties(miplib3_fiber_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fiber_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_fiber_clp_standard "01_Analysis" "Optimal objective <number>" 156082.51759 1e-6)
set_tests_properties(miplib3_fiber_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_fixnet6_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/fixnet6.gz)

set_tests_properties(miplib3_fixnet6_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_fixnet6_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_fixnet6_clp_standard "01_Analysis" "Optimal objective <number>" 1200.88 1e-6)
set_tests_properties(miplib3_fixnet6_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_flugpl_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/flugpl.gz)

set_tests_properties(miplib3_flugpl_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_flugpl_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_flugpl_clp_standard "01_Analysis" "Optimal objective <number>" 1167185.73 1e-6)
set_tests_properties(miplib3_flugpl_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_gen_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/gen.gz)

set_tests_properties(miplib3_gen_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gen_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_gen_clp_standard "01_Analysis" "Optimal objective <number>" 112130.0 1e-6)
set_tests_properties(miplib3_gen_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_gesa2_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/gesa2.gz)

set_tests_properties(miplib3_gesa2_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_gesa2_clp_standard "01_Analysis" "Optimal objective <number>" 25476489.678 1e-6)
set_tests_properties(miplib3_gesa2_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_gesa2_o_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/gesa2_o.gz)

set_tests_properties(miplib3_gesa2_o_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa2_o_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_gesa2_o_clp_standard "01_Analysis" "Optimal objective <number>" 25476489.678 1e-6)
set_tests_properties(miplib3_gesa2_o_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_gesa3_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/gesa3.gz)

set_tests_properties(miplib3_gesa3_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_gesa3_clp_standard "01_Analysis" "Optimal objective <number>" 27833632.451 1e-6)
set_tests_properties(miplib3_gesa3_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_gesa3_o_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/gesa3_o.gz)

set_tests_properties(miplib3_gesa3_o_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gesa3_o_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_gesa3_o_clp_standard "01_Analysis" "Optimal objective <number>" 27833632.451 1e-6)
set_tests_properties(miplib3_gesa3_o_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_gt2_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/gt2.gz)

set_tests_properties(miplib3_gt2_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_gt2_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_gt2_clp_standard "01_Analysis" "Optimal objective <number>" 13460.233074 1e-6)
set_tests_properties(miplib3_gt2_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_harp2_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/harp2.gz)

set_tests_properties(miplib3_harp2_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_harp2_clp_standard "01_Analysis" "Optimal objective <number>" -74353341.502 1e-6)
set_tests_properties(miplib3_harp2_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_khb05250_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/khb05250.gz)

set_tests_properties(miplib3_khb05250_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_khb05250_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_khb05250_clp_standard "01_Analysis" "Optimal objective <number>" 95919464.0 1e-6)
set_tests_properties(miplib3_khb05250_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_l152lav_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/l152lav.gz)

set_tests_properties(miplib3_l152lav_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_l152lav_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_l152lav_clp_standard "01_Analysis" "Optimal objective <number>" 4656.36 1e-6)
set_tests_properties(miplib3_l152lav_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_lseu_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/lseu.gz)

set_tests_properties(miplib3_lseu_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_lseu_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_lseu_clp_standard "01_Analysis" "Optimal objective <number>" 834.68 1e-6)
set_tests_properties(miplib3_lseu_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_markshare1_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/markshare1.gz)

set_tests_properties(miplib3_markshare1_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_markshare1_clp_standard "01_Analysis" "Optimal objective <number>" 0 1e-6)
set_tests_properties(miplib3_markshare1_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_markshare2_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/markshare2.gz)

set_tests_properties(miplib3_markshare2_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_markshare2_clp_standard "01_Analysis" "Optimal objective <number>" 0 1e-6)
set_tests_properties(miplib3_markshare2_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_mas74_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mas74.gz)

set_tests_properties(miplib3_mas74_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_mas74_clp_standard "01_Analysis" "Optimal objective <number>" 10482.795280 1e-6)
set_tests_properties(miplib3_mas74_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_mas76_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mas76.gz)

set_tests_properties(miplib3_mas76_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mas76_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_mas76_clp_standard "01_Analysis" "Optimal objective <number>" 38893.903641 1e-6)
set_tests_properties(miplib3_mas76_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_misc03_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/misc03.gz)

set_tests_properties(miplib3_misc03_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc03_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_misc03_clp_standard "01_Analysis" "Optimal objective <number>" 1910.0 1e-6)
set_tests_properties(miplib3_misc03_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_misc06_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/misc06.gz)

set_tests_properties(miplib3_misc06_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_misc06_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_misc06_clp_standard "01_Analysis" "Optimal objective <number>" 12841.69 1e-6)
set_tests_properties(miplib3_misc06_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_misc07_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/misc07.gz)

set_tests_properties(miplib3_misc07_clp_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_misc07_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_misc07_clp_standard "01_Analysis" "Optimal objective <number>" 1415 1e-6)
set_tests_properties(miplib3_misc07_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_mitre_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mitre.gz)

set_tests_properties(miplib3_mitre_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mitre_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_mitre_clp_standard "01_Analysis" "Optimal objective <number>" 114740.51848 1e-6)
set_tests_properties(miplib3_mitre_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_mkc_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mkc.gz)

set_tests_properties(miplib3_mkc_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mkc_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_mkc_clp_standard "01_Analysis" "Optimal objective <number>" -611.85000000 1e-6)
set_tests_properties(miplib3_mkc_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_mod008_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mod008.gz)

set_tests_properties(miplib3_mod008_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod008_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_mod008_clp_standard "01_Analysis" "Optimal objective <number>" 290.93 1e-6)
set_tests_properties(miplib3_mod008_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_mod010_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mod010.gz)

set_tests_properties(miplib3_mod010_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_mod010_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_mod010_clp_standard "01_Analysis" "Optimal objective <number>" 6532.08 1e-6)
set_tests_properties(miplib3_mod010_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_mod011_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/mod011.gz)

set_tests_properties(miplib3_mod011_clp_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_mod011_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_mod011_clp_standard "01_Analysis" "Optimal objective <number>" -62121982.552 1e-6)
set_tests_properties(miplib3_mod011_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_modglob_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/modglob.gz)

set_tests_properties(miplib3_modglob_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_modglob_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_modglob_clp_standard "01_Analysis" "Optimal objective <number>" 20430947.0 1e-6)
set_tests_properties(miplib3_modglob_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_noswot_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/noswot.gz)

set_tests_properties(miplib3_noswot_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_noswot_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_noswot_clp_standard "01_Analysis" "Optimal objective <number>" -43.0 1e-6)
set_tests_properties(miplib3_noswot_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_nw04_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/nw04.gz)

set_tests_properties(miplib3_nw04_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_nw04_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_nw04_clp_standard "01_Analysis" "Optimal objective <number>" 16310.66667 1e-6)
set_tests_properties(miplib3_nw04_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_p0033_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/p0033.gz)

set_tests_properties(miplib3_p0033_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0033_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_p0033_clp_standard "01_Analysis" "Optimal objective <number>" 2520.57 1e-6)
set_tests_properties(miplib3_p0033_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_p0201_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/p0201.gz)

set_tests_properties(miplib3_p0201_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0201_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_p0201_clp_standard "01_Analysis" "Optimal objective <number>" 6875.0 1e-6)
set_tests_properties(miplib3_p0201_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_p0282_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/p0282.gz)

set_tests_properties(miplib3_p0282_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0282_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_p0282_clp_standard "01_Analysis" "Optimal objective <number>" 176867.50 1e-6)
set_tests_properties(miplib3_p0282_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_p0548_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/p0548.gz)

set_tests_properties(miplib3_p0548_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p0548_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_p0548_clp_standard "01_Analysis" "Optimal objective <number>" 315.29 1e-6)
set_tests_properties(miplib3_p0548_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_p2756_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/p2756.gz)

set_tests_properties(miplib3_p2756_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_p2756_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_p2756_clp_standard "01_Analysis" "Optimal objective <number>" 2688.75 1e-6)
set_tests_properties(miplib3_p2756_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_pk1_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/pk1.gz)

set_tests_properties(miplib3_pk1_clp_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_pk1_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_pk1_clp_standard "01_Analysis" "Optimal objective <number>" 0.0 1e-6)
set_tests_properties(miplib3_pk1_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_pp08aCUTS_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/pp08aCUTS.gz)

set_tests_properties(miplib3_pp08aCUTS_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08aCUTS_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_pp08aCUTS_clp_standard "01_Analysis" "Optimal objective <number>" 5480.6061563 1e-6)
set_tests_properties(miplib3_pp08aCUTS_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_pp08a_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/pp08a.gz)

set_tests_properties(miplib3_pp08a_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_pp08a_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_pp08a_clp_standard "01_Analysis" "Optimal objective <number>" 2748.3452381 1e-6)
set_tests_properties(miplib3_pp08a_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_qiu_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/qiu.gz)

set_tests_properties(miplib3_qiu_clp_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qiu_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_qiu_clp_standard "01_Analysis" "Optimal objective <number>" -931.638857 1e-6)
set_tests_properties(miplib3_qiu_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_qnet1_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/qnet1.gz)

set_tests_properties(miplib3_qnet1_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_qnet1_clp_standard "01_Analysis" "Optimal objective <number>" 14274.102667 1e-6)
set_tests_properties(miplib3_qnet1_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_qnet1_o_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/qnet1_o.gz)

set_tests_properties(miplib3_qnet1_o_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_qnet1_o_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_qnet1_o_clp_standard "01_Analysis" "Optimal objective <number>" 12095.571667 1e-6)
set_tests_properties(miplib3_qnet1_o_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_rentacar_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/rentacar.gz)

set_tests_properties(miplib3_rentacar_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rentacar_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_rentacar_clp_standard "01_Analysis" "Optimal objective <number>" 28806137.644 1e-6)
set_tests_properties(miplib3_rentacar_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_rgn_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/rgn.gz)

set_tests_properties(miplib3_rgn_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_rgn_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_rgn_clp_standard "01_Analysis" "Optimal objective <number>" 48.7999 1e-6)
set_tests_properties(miplib3_rgn_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_rout_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/rout.gz)

set_tests_properties(miplib3_rout_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_rout_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_rout_clp_standard "01_Analysis" "Optimal objective <number>" 981.86428571 1e-6)
set_tests_properties(miplib3_rout_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_set1ch_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/set1ch.gz)

set_tests_properties(miplib3_set1ch_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

create_log_analysis(miplib3_set1ch_clp_standard "01_Analysis" "Optimal objective <number>" 32007.73 1e-6)
set_tests_properties(miplib3_set1ch_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG")

add_coin_test(miplib3_seymour_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/seymour.gz)

set_tests_properties(miplib3_seymour_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_seymour_clp_standard "01_Analysis" "Optimal objective <number>" 403.84647413 1e-6)
set_tests_properties(miplib3_seymour_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_stein27_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/stein27.gz)

set_tests_properties(miplib3_stein27_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein27_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_stein27_clp_standard "01_Analysis" "Optimal objective <number>" 13.0 1e-6)
set_tests_properties(miplib3_stein27_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_stein45_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/stein45.gz)

set_tests_properties(miplib3_stein45_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_stein45_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_stein45_clp_standard "01_Analysis" "Optimal objective <number>" 22.0 1e-6)
set_tests_properties(miplib3_stein45_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_swath_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/swath.gz)

set_tests_properties(miplib3_swath_clp_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

# not optimal - has stated in the miplib3 report
create_log_analysis(miplib3_swath_clp_standard "01_Analysis" "Optimal objective <number>" 334.4968581 1e-6)
set_tests_properties(miplib3_swath_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB;LONG;WARNING")

add_coin_test(miplib3_vpm1_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/vpm1.gz)

set_tests_properties(miplib3_vpm1_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm1_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_vpm1_clp_standard "01_Analysis" "Optimal objective <number>" 15.4167 1e-6)
set_tests_properties(miplib3_vpm1_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")

add_coin_test(miplib3_vpm2_clp_standard clp
              ${CLP_INSTANCES_DIR}/miplib3/vpm2.gz)

set_tests_properties(miplib3_vpm2_clp_standard PROPERTIES TIMEOUT 30)
set_tests_properties(miplib3_vpm2_clp_standard PROPERTIES LABELS "MPS;CLP;MIPLIB")

create_log_analysis(miplib3_vpm2_clp_standard "01_Analysis" "Optimal objective <number>" 9.8892645972 1e-6)
set_tests_properties(miplib3_vpm2_clp_standard_01_Analysis PROPERTIES LABELS "MPS;CLP;MIPLIB")
