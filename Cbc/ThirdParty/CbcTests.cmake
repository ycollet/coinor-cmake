if (COIN_HAS_CLP)
  #
  # Infeas tests
  #
  
  add_test(NAME infeas_chemcom_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_chemcom.out -solve)
  set_tests_properties(infeas_chemcom_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pilot4i_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i.out -solve)
  set_tests_properties(infeas_pilot4i_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_reactor_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_reactor.out -solve)
  set_tests_properties(infeas_reactor_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgetam_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgetam.out -solve)
  set_tests_properties(infeas_bgetam_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_refinery_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_refinery.out -solve)
  set_tests_properties(infeas_refinery_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex2.out -solve)
  set_tests_properties(infeas_cplex2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_forest6_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_forest6.out -solve)
  set_tests_properties(infeas_forest6_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex1.out -solve)
  set_tests_properties(infeas_cplex1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_box1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_box1.out -solve)
  set_tests_properties(infeas_box1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest6_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest6.out -solve)
  set_tests_properties(infeas_itest6_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgindy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgindy.out -solve)
  set_tests_properties(infeas_bgindy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein2.out -solve)
  set_tests_properties(infeas_klein2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ceria3d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d.out -solve)
  set_tests_properties(infeas_ceria3d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex72a_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex72a.out -solve)
  set_tests_properties(infeas_ex72a_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_greenbea_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_greenbea.out -solve)
  set_tests_properties(infeas_greenbea_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  
  add_test(NAME infeas_klein3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein3.out -solve)
  set_tests_properties(infeas_klein3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest2.out -solve)
  set_tests_properties(infeas_itest2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex73a_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex73a.out -solve)
  set_tests_properties(infeas_ex73a_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein1.out -solve)
  set_tests_properties(infeas_klein1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_woodinfe_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe.out -solve)
  set_tests_properties(infeas_woodinfe_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgprtr_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr.out -solve)
  set_tests_properties(infeas_bgprtr_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_galenet_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_galenet.out -solve)
  set_tests_properties(infeas_galenet_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gran_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gran.out -solve)
  set_tests_properties(infeas_gran_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_mondou2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_mondou2.out -solve)
  set_tests_properties(infeas_mondou2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_qual_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_qual.out -solve)
  set_tests_properties(infeas_qual_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_vol1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_vol1.out -solve)
  set_tests_properties(infeas_vol1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pang_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pang.out -solve)
  set_tests_properties(infeas_pang_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgdbg1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1.out -solve)
  set_tests_properties(infeas_bgdbg1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gosh_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gosh.out -solve)
  set_tests_properties(infeas_gosh_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  #
  # Big test
  #
  
  add_test(NAME big_mkc7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/big_mkc7.out -solve)
  set_tests_properties(big_mkc7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(big_mkc7_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  
  #
  # Sample tests
  #
  
  add_test(NAME sample_scOneInt_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_scOneInt.out -solve)
  set_tests_properties(sample_scOneInt_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0201_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0201.out -solve)
  set_tests_properties(sample_p0201_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0548_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0548.out -solve)
  set_tests_properties(sample_p0548_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_hello_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_hello.out -solve)
  set_tests_properties(sample_hello_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_e226_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_e226.out -solve)
  set_tests_properties(sample_e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp3.out -solve)
  set_tests_properties(sample_tp3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp4_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp4.out -solve)
  set_tests_properties(sample_tp4_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_finnis_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_finnis.out -solve)
  set_tests_properties(sample_finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_5_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_5.out -solve)
  set_tests_properties(sample_5_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_exmip1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_exmip1.out -solve)
  set_tests_properties(sample_exmip1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_share2qp_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_share2qp.out -solve)
  set_tests_properties(sample_share2qp_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_afiro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_afiro.out -solve)
  set_tests_properties(sample_afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_nw460_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_nw460.out -solve)
  set_tests_properties(sample_nw460_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_brandy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_brandy.out -solve)
  set_tests_properties(sample_brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp5_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp5.out -solve)
  set_tests_properties(sample_tp5_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_pack1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_pack1.out -solve)
  set_tests_properties(sample_pack1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0033_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0033.out -solve)
  set_tests_properties(sample_p0033_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_cbc_standard PROPERTIES LABELS "MPS")

  #
  # Netlib tests
  #
  
  # Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme
  
  add_test(NAME netlib_fit2d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2d.out -solve)
  set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.8464293294e[+]04")
  set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_forplan_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_forplan.out -solve)
  set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.6421873953e[+]02")
  set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  add_test(NAME netlib_ship08s_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08s.out -solve)
  set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9200982105e[+]06")
  set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1d.out -solve)
  set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.1463780924e[+]03")
  set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_brandy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_brandy.out -solve)
  set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5185098965e[+]03")
  set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1.out -solve)
  set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8416759028e[+]04")
  set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow22_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow22.out -solve)
  set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.6083433648e[+]08")
  set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bandm_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bandm.out -solve)
  set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.5862801845e[+]02")
  set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1p_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1p.out -solve)
  set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.1463780924e[+]03")
  set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standata_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standata.out -solve)
  set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2576995000e[+]03")
  set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot4_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot4.out -solve)
  set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5811392641e[+]03")
  set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2.out -solve)
  set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.9024408538e[+]04")
  set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap1.out -solve)
  set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4122500000e[+]03")
  set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scrs8_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scrs8.out -solve)
  set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.0429998619e[+]02")
  set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap2.out -solve)
  set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7248071429e[+]03")
  set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot87_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot87.out -solve)
  set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.0171072827e[+]02")
  set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbea_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbea.out -solve)
  set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.2462405908e[+]07")
  set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_woodw_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_woodw.out -solve)
  set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.3044763331e[+]00")
  set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_recipe_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_recipe.out -solve)
  set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.6661600000e[+]02")
  set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share1b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share1b.out -solve)
  set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.6589318579e[+]04")
  set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_tuff_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_tuff.out -solve)
  set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.9214776509e-01")
  set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share2b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share2b.out -solve)
  set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.1573224074e[+]02")
  set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bore3d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bore3d.out -solve)
  set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.3730803942e[+]03")
  set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d2q06c_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c.out -solve)
  set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2278423615e[+]05")
  set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50b.out -solve)
  set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.0000000000e[+]01")
  set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot.out -solve)
  set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.5740430007e[+]02")
  set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl1.out -solve)
  set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9776292856e[+]03")
  set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04l_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04l.out -solve)
  set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7933245380e[+]06")
  set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc105_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc105.out -solve)
  set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2202061212e[+]01")
  set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing2.out -solve)
  set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.1501872802e[+]02")
  set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_nesm_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_nesm.out -solve)
  set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4076073035e[+]07")
  set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc205_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc205.out -solve)
  set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2202061212e[+]01")
  set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_finnis_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_finnis.out -solve)
  set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7279096547e[+]05")
  set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen2.out -solve)
  set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.4351780000e[+]03")
  set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros-r7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7.out -solve)
  set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4971851665e[+]06")
  set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04s_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04s.out -solve)
  set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7987147004e[+]06")
  set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_wood1p_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_wood1p.out -solve)
  set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4429024116e[+]00")
  set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_lotfi_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_lotfi.out -solve)
  set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5264706062e[+]01")
  set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_gfrd_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pnc.out -solve)
  set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "6.9022359995e[+]06")
  set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_etamacro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_etamacro.out -solve)
  set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.5571521774e[+]02")
  set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow7.out -solve)
  set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.7787811815e[+]07")
  set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_dfl001_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_dfl001.out -solve)
  set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES LABELS "MPS")
  # (there's a ** in the readme file in the netlib website)
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.12664e[+]07")
  set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg.out -solve)
  set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.5991767287e[+]07")
  set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standgub_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standgub.out -solve)
  set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES LABELS "MPS")
  # Nothing in the readme
  
  add_test(NAME netlib_ship12l_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12l.out -solve)
  set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4701879193e[+]06")
  set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standmps_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standmps.out -solve)
  set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4060175000e[+]03")
  set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr25_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr25.out -solve)
  set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.4753433061e[+]07")
  set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_capri_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_capri.out -solve)
  set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.6900129138e[+]03")
  set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_cycle_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_cycle.out -solve)
  set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2263930249e[+]00")
  set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbeb_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb.out -solve)
  set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.3021476065e[+]06")
  set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg2.out -solve)
  set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.0239252356e[+]07")
  set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stair_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stair.out -solve)
  set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5126695119e[+]02")
  set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_shell_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_shell.out -solve)
  set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2088253460e[+]09")
  set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sierra_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sierra.out -solve)
  set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5394362184e[+]07")
  set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_afiro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_afiro.out -solve)
  set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.6475314286e[+]02")
  set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd1.out -solve)
  set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "8.6666666743e[+]00")
  set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd8_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd8.out -solve)
  set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.0499999993e[+]02")
  set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship08l_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08l.out -solve)
  set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9090552114e[+]06")
  set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_25fv47_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_25fv47.out -solve)
  set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.5018458883e[+]03")
  set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_czprob_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_czprob.out -solve)
  set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.1851966989e[+]06")
  set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_adlittle_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_adlittle.out -solve)
  set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.2549496316e[+]05")
  set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d6cube_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d6cube.out -solve)
  set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.1549166667e[+]02")
  set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scorpion_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scorpion.out -solve)
  set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8781248227e[+]03")
  set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap3.out -solve)
  set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4240000000e[+]03")
  set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_seba_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_seba.out -solve)
  set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5711600000e[+]04")
  set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_modszk1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_modszk1.out -solve)
  set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.2061972906e[+]02")
  set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilotnov_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov.out -solve)
  set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.4972761882e[+]03")
  set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_beaconfd_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd.out -solve)
  set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.3592485807e[+]04")
  set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_e226_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_e226.out -solve)
  set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.8751929066e[+]01")
  set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen3.out -solve)
  set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.8729400000e[+]02")
  set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2.out -solve)
  set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.6660261565e[+]04")
  set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fffff800_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fffff800.out -solve)
  set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.5567961165e[+]05")
  set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_kb2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_kb2.out -solve)
  set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.7499001299e[+]03")
  set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ganges_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ganges.out -solve)
  set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.0958636356e[+]05")
  set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1.out -solve)
  set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.1131976219e[+]04")
  set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd6_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd6.out -solve)
  set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.0500000078e[+]01")
  set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_80bau3b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b.out -solve)
  set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.8723216072e[+]05")
  set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12s_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12s.out -solve)
  set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4892361344e[+]06")
  set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg3.out -solve)
  set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.0312115935e[+]07")
  set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros.out -solve)
  set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.8063743701e[+]04")
  set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_perold_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_perold.out -solve)
  set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.3807580773e[+]03")
  set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr7.out -solve)
  set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.3313892548e[+]06")
  set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3.out -solve)
  set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.4901254550e[+]04")
  set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow15_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow15.out -solve)
  set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.0687094129e[+]08")
  set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit2p_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2p.out -solve)
  set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "6.8464293232e[+]04")
  set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing1.out -solve)
  set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.3521356751e[+]02")
  set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50a_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50a.out -solve)
  set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.4575077059e[+]01")
  set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_vtpbase_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase.out -solve)
  set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2983146246e[+]05")
  set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_blend_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_blend.out -solve)
  set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.0812149846e[+]01")
  set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl2.out -solve)
  set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8112365404e[+]03")
  set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_israel_mps_cbc_standard 
           COMMAND $<TARGET_FILE:clp> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_israel.out -solve)
  set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-8.9664482186e[+]05")
  set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  #
  # miplib3 tests
  #
  
  add_test(NAME miplib3_10teams_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_10teams.out -solve)
  set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air03_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air03.out -solve)
  set_tests_properties(miplib3_air03_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air03_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air04_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air04.out -solve)
  set_tests_properties(miplib3_air04_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air04_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air05_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air05.out -solve)
  set_tests_properties(miplib3_air05_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air05_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_arki001_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_arki001.out -solve)
  set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_bell3a_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a.out -solve)
  set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_bell5_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell5.out -solve)
  set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_blend2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_blend2.out -solve)
  set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_cap6000_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000.out -solve)
  set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dano3mip_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip.out -solve)
  set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_danoint_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_danoint.out -solve)
  set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dcmulti_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti.out -solve)
  set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dsbmip_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip.out -solve)
  set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_egout_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_egout.out -solve)
  set_tests_properties(miplib3_egout_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_egout_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_enigma_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_enigma.out -solve)
  set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fast0507_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507.out -solve)
  set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fiber_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fiber.out -solve)
  set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fixnet6_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6.out -solve)
  set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_flugpl_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl.out -solve)
  set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gen_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gen.out -solve)
  set_tests_properties(miplib3_gen_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gen_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2.out -solve)
  set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_o_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o.out -solve)
  set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3.out -solve)
  set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_o_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o.out -solve)
  set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gt2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gt2.out -solve)
  set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_harp2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_harp2.out -solve)
  set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_khb05250_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250.out -solve)
  set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_l152lav_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav.out -solve)
  set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_lseu_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_lseu.out -solve)
  set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_markshare1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1.out -solve)
  set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_markshare2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2.out -solve)
  set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mas74_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas74.out -solve)
  set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mas76_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas76.out -solve)
  set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc03_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc03.out -solve)
  set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc06_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc06.out -solve)
  set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc07_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc07.out -solve)
  set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mitre_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mitre.out -solve)
  set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mkc_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mkc.out -solve)
  set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod008_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod008.out -solve)
  set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod010_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod010.out -solve)
  set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod011_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod011.out -solve)
  set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_modglob_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_modglob.out -solve)
  set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_noswot_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_noswot.out -solve)
  set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_nw04_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_nw04.out -solve)
  set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0033_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0033.out -solve)
  set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0201_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0201.out -solve)
  set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0282_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0282.out -solve)
  set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0548_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0548.out -solve)
  set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p2756_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p2756.out -solve)
  set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pk1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pk1.out -solve)
  set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08aCUTS_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS.out -solve)
  set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08a_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a.out -solve)
  set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qiu_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qiu.out -solve)
  set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1.out -solve)
  set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_o_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o.out -solve)
  set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rentacar_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar.out -solve)
  set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rgn_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rgn.out -solve)
  set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rout_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rout.out -solve)
  set_tests_properties(miplib3_rout_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rout_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_set1ch_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch.out -solve)
  set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_seymour_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_seymour.out -solve)
  set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_stein27_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein27.out -solve)
  set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_stein45_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein45.out -solve)
  set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_swath_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_swath.out -solve)
  set_tests_properties(miplib3_swath_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_swath_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_vpm1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1.out -solve)
  set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_vpm2_cbc_standard 
           COMMAND $<TARGET_FILE:symphon> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2.out -solve)
  set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES LABELS "MPS")
endif ()

if (CBC_BUILD_CBC_GENERIC) 
  #
  # Infeas tests
  #
  
  add_test(NAME infeas_chemcom_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_chemcom.out -solve)
  set_tests_properties(infeas_chemcom_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pilot4i_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i.out -solve)
  set_tests_properties(infeas_pilot4i_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_reactor_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_reactor.out -solve)
  set_tests_properties(infeas_reactor_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgetam_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgetam.out -solve)
  set_tests_properties(infeas_bgetam_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_refinery_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_refinery.out -solve)
  set_tests_properties(infeas_refinery_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex2.out -solve)
  set_tests_properties(infeas_cplex2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_forest6_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_forest6.out -solve)
  set_tests_properties(infeas_forest6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex1.out -solve)
  set_tests_properties(infeas_cplex1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_box1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_box1.out -solve)
  set_tests_properties(infeas_box1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest6_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest6.out -solve)
  set_tests_properties(infeas_itest6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgindy_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgindy.out -solve)
  set_tests_properties(infeas_bgindy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein2.out -solve)
  set_tests_properties(infeas_klein2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ceria3d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d.out -solve)
  set_tests_properties(infeas_ceria3d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex72a_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex72a.out -solve)
  set_tests_properties(infeas_ex72a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_greenbea_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_greenbea.out -solve)
  set_tests_properties(infeas_greenbea_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  
  add_test(NAME infeas_klein3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein3.out -solve)
  set_tests_properties(infeas_klein3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest2.out -solve)
  set_tests_properties(infeas_itest2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex73a_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex73a.out -solve)
  set_tests_properties(infeas_ex73a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein1.out -solve)
  set_tests_properties(infeas_klein1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_woodinfe_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe.out -solve)
  set_tests_properties(infeas_woodinfe_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgprtr_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr.out -solve)
  set_tests_properties(infeas_bgprtr_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_galenet_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_galenet.out -solve)
  set_tests_properties(infeas_galenet_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gran_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gran.out -solve)
  set_tests_properties(infeas_gran_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_mondou2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_mondou2.out -solve)
  set_tests_properties(infeas_mondou2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_qual_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_qual.out -solve)
  set_tests_properties(infeas_qual_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_vol1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_vol1.out -solve)
  set_tests_properties(infeas_vol1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pang_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pang.out -solve)
  set_tests_properties(infeas_pang_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgdbg1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1.out -solve)
  set_tests_properties(infeas_bgdbg1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gosh_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gosh.out -solve)
  set_tests_properties(infeas_gosh_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  #
  # Big test
  #
  
  add_test(NAME big_mkc7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/big_mkc7.out -solve)
  set_tests_properties(big_mkc7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(big_mkc7_mps_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  
  #
  # Sample tests
  #
  
  add_test(NAME sample_scOneInt_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_scOneInt.out -solve)
  set_tests_properties(sample_scOneInt_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0201_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0201.out -solve)
  set_tests_properties(sample_p0201_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0548_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0548.out -solve)
  set_tests_properties(sample_p0548_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_hello_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_hello.out -solve)
  set_tests_properties(sample_hello_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_e226_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_e226.out -solve)
  set_tests_properties(sample_e226_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp3.out -solve)
  set_tests_properties(sample_tp3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp4_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp4.out -solve)
  set_tests_properties(sample_tp4_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_finnis_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_finnis.out -solve)
  set_tests_properties(sample_finnis_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_5_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_5.out -solve)
  set_tests_properties(sample_5_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_exmip1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_exmip1.out -solve)
  set_tests_properties(sample_exmip1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_share2qp_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_share2qp.out -solve)
  set_tests_properties(sample_share2qp_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_afiro_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_afiro.out -solve)
  set_tests_properties(sample_afiro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_nw460_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_nw460.out -solve)
  set_tests_properties(sample_nw460_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_brandy_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_brandy.out -solve)
  set_tests_properties(sample_brandy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp5_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp5.out -solve)
  set_tests_properties(sample_tp5_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_pack1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_pack1.out -solve)
  set_tests_properties(sample_pack1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0033_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0033.out -solve)
  set_tests_properties(sample_p0033_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_cbc-generic_standard PROPERTIES LABELS "MPS")

  #
  # Netlib tests
  #
  
  # Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme
  
  add_test(NAME netlib_fit2d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2d.out -solve)
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.8464293294e[+]04")
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_forplan_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_forplan.out -solve)
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.6421873953e[+]02")
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  add_test(NAME netlib_ship08s_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08s.out -solve)
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9200982105e[+]06")
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1d.out -solve)
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.1463780924e[+]03")
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_brandy_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_brandy.out -solve)
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5185098965e[+]03")
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1.out -solve)
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8416759028e[+]04")
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow22_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow22.out -solve)
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.6083433648e[+]08")
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bandm_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bandm.out -solve)
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.5862801845e[+]02")
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1p_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1p.out -solve)
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.1463780924e[+]03")
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standata_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standata.out -solve)
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2576995000e[+]03")
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot4_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot4.out -solve)
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5811392641e[+]03")
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2.out -solve)
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.9024408538e[+]04")
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap1.out -solve)
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4122500000e[+]03")
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scrs8_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scrs8.out -solve)
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.0429998619e[+]02")
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap2.out -solve)
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7248071429e[+]03")
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot87_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot87.out -solve)
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.0171072827e[+]02")
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbea_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbea.out -solve)
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.2462405908e[+]07")
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_woodw_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_woodw.out -solve)
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.3044763331e[+]00")
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_recipe_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_recipe.out -solve)
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.6661600000e[+]02")
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share1b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share1b.out -solve)
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.6589318579e[+]04")
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_tuff_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_tuff.out -solve)
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.9214776509e-01")
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share2b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share2b.out -solve)
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.1573224074e[+]02")
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bore3d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bore3d.out -solve)
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.3730803942e[+]03")
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d2q06c_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c.out -solve)
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2278423615e[+]05")
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50b.out -solve)
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.0000000000e[+]01")
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot.out -solve)
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.5740430007e[+]02")
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl1.out -solve)
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9776292856e[+]03")
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04l_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04l.out -solve)
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7933245380e[+]06")
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc105_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc105.out -solve)
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2202061212e[+]01")
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing2.out -solve)
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.1501872802e[+]02")
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_nesm_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_nesm.out -solve)
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4076073035e[+]07")
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc205_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc205.out -solve)
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2202061212e[+]01")
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_finnis_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_finnis.out -solve)
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7279096547e[+]05")
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen2.out -solve)
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.4351780000e[+]03")
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros-r7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7.out -solve)
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4971851665e[+]06")
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04s_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04s.out -solve)
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.7987147004e[+]06")
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_wood1p_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_wood1p.out -solve)
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4429024116e[+]00")
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_lotfi_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_lotfi.out -solve)
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5264706062e[+]01")
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_gfrd_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pnc.out -solve)
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "6.9022359995e[+]06")
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_etamacro_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_etamacro.out -solve)
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-7.5571521774e[+]02")
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow7.out -solve)
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.7787811815e[+]07")
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_dfl001_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_dfl001.out -solve)
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  # (there's a ** in the readme file in the netlib website)
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.12664e[+]07")
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg.out -solve)
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.5991767287e[+]07")
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standgub_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standgub.out -solve)
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  # Nothing in the readme
  
  add_test(NAME netlib_ship12l_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12l.out -solve)
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4701879193e[+]06")
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standmps_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standmps.out -solve)
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4060175000e[+]03")
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr25_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr25.out -solve)
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.4753433061e[+]07")
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_capri_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_capri.out -solve)
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.6900129138e[+]03")
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_cycle_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_cycle.out -solve)
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.2263930249e[+]00")
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbeb_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb.out -solve)
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.3021476065e[+]06")
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg2.out -solve)
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.0239252356e[+]07")
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stair_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stair.out -solve)
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.5126695119e[+]02")
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_shell_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_shell.out -solve)
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2088253460e[+]09")
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sierra_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sierra.out -solve)
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5394362184e[+]07")
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_afiro_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_afiro.out -solve)
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.6475314286e[+]02")
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd1.out -solve)
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "8.6666666743e[+]00")
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd8_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd8.out -solve)
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.0499999993e[+]02")
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship08l_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08l.out -solve)
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.9090552114e[+]06")
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_25fv47_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_25fv47.out -solve)
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.5018458883e[+]03")
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_czprob_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_czprob.out -solve)
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.1851966989e[+]06")
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_adlittle_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_adlittle.out -solve)
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "2.2549496316e[+]05")
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d6cube_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d6cube.out -solve)
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.1549166667e[+]02")
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scorpion_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scorpion.out -solve)
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8781248227e[+]03")
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap3.out -solve)
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4240000000e[+]03")
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_seba_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_seba.out -solve)
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.5711600000e[+]04")
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_modszk1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_modszk1.out -solve)
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.2061972906e[+]02")
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilotnov_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov.out -solve)
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.4972761882e[+]03")
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_beaconfd_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd.out -solve)
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.3592485807e[+]04")
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_e226_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_e226.out -solve)
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.8751929066e[+]01")
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen3.out -solve)
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.8729400000e[+]02")
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2.out -solve)
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "3.6660261565e[+]04")
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fffff800_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fffff800.out -solve)
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.5567961165e[+]05")
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_kb2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_kb2.out -solve)
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.7499001299e[+]03")
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ganges_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ganges.out -solve)
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.0958636356e[+]05")
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1.out -solve)
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-4.1131976219e[+]04")
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd6_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd6.out -solve)
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.0500000078e[+]01")
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_80bau3b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b.out -solve)
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "9.8723216072e[+]05")
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12s_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12s.out -solve)
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.4892361344e[+]06")
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg3.out -solve)
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.0312115935e[+]07")
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros.out -solve)
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-5.8063743701e[+]04")
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_perold_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_perold.out -solve)
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-9.3807580773e[+]03")
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr7.out -solve)
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-2.3313892548e[+]06")
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3.out -solve)
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "5.4901254550e[+]04")
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow15_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow15.out -solve)
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-1.0687094129e[+]08")
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit2p_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2p.out -solve)
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "6.8464293232e[+]04")
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing1.out -solve)
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.3521356751e[+]02")
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50a_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50a.out -solve)
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-6.4575077059e[+]01")
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_vtpbase_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase.out -solve)
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.2983146246e[+]05")
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_blend_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_blend.out -solve)
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-3.0812149846e[+]01")
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl2.out -solve)
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1.8112365404e[+]03")
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_israel_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_israel.out -solve)
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "-8.9664482186e[+]05")
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  #
  # miplib3 tests
  #
  
  add_test(NAME miplib3_10teams_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_10teams.out -solve)
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air03_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air03.out -solve)
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air04_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air04.out -solve)
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air05_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air05.out -solve)
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_arki001_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_arki001.out -solve)
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_bell3a_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a.out -solve)
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_bell5_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell5.out -solve)
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_blend2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_blend2.out -solve)
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_cap6000_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000.out -solve)
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dano3mip_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip.out -solve)
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_danoint_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_danoint.out -solve)
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dcmulti_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti.out -solve)
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dsbmip_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip.out -solve)
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_egout_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_egout.out -solve)
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_enigma_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_enigma.out -solve)
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fast0507_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507.out -solve)
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fiber_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fiber.out -solve)
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fixnet6_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6.out -solve)
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_flugpl_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl.out -solve)
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gen_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gen.out -solve)
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2.out -solve)
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_o_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o.out -solve)
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3.out -solve)
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_o_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o.out -solve)
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gt2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gt2.out -solve)
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_harp2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_harp2.out -solve)
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_khb05250_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250.out -solve)
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_l152lav_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav.out -solve)
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_lseu_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_lseu.out -solve)
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_markshare1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1.out -solve)
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_markshare2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2.out -solve)
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mas74_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas74.out -solve)
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mas76_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas76.out -solve)
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc03_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc03.out -solve)
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc06_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc06.out -solve)
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc07_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc07.out -solve)
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mitre_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mitre.out -solve)
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mkc_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mkc.out -solve)
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod008_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod008.out -solve)
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod010_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod010.out -solve)
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod011_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod011.out -solve)
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_modglob_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_modglob.out -solve)
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_noswot_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_noswot.out -solve)
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_nw04_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_nw04.out -solve)
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0033_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0033.out -solve)
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0201_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0201.out -solve)
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0282_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0282.out -solve)
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0548_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0548.out -solve)
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p2756_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p2756.out -solve)
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pk1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pk1.out -solve)
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08aCUTS_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS.out -solve)
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08a_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a.out -solve)
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qiu_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qiu.out -solve)
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1.out -solve)
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_o_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o.out -solve)
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rentacar_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar.out -solve)
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rgn_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rgn.out -solve)
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rout_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rout.out -solve)
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_set1ch_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch.out -solve)
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_seymour_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_seymour.out -solve)
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_stein27_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein27.out -solve)
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_stein45_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein45.out -solve)
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_swath_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_swath.out -solve)
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_vpm1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1.out -solve)
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_vpm2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:symphon> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2.out -solve)
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES LABELS "MPS")
endif ()
