if (COIN_HAS_CLP)
  #
  # Infeas tests
  #
  
  add_test(NAME infeas_chemcom_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_cbc.out -solve)
  set_tests_properties(infeas_chemcom_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pilot4i_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_cbc.out -solve)
  set_tests_properties(infeas_pilot4i_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_reactor_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_reactor_cbc.out -solve)
  set_tests_properties(infeas_reactor_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgetam_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_cbc.out -solve)
  set_tests_properties(infeas_bgetam_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_refinery_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_refinery_cbc.out -solve)
  set_tests_properties(infeas_refinery_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_cbc.out -solve)
  set_tests_properties(infeas_cplex2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_forest6_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_forest6_cbc.out -solve)
  set_tests_properties(infeas_forest6_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_cbc.out -solve)
  set_tests_properties(infeas_cplex1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_box1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_box1_cbc.out -solve)
  set_tests_properties(infeas_box1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest6_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest6_cbc.out -solve)
  set_tests_properties(infeas_itest6_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgindy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_cbc.out -solve)
  set_tests_properties(infeas_bgindy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein2_cbc.out -solve)
  set_tests_properties(infeas_klein2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ceria3d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_cbc.out -solve)
  set_tests_properties(infeas_ceria3d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex72a_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_cbc.out -solve)
  set_tests_properties(infeas_ex72a_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_greenbea_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_cbc.out -solve)
  set_tests_properties(infeas_greenbea_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  
  add_test(NAME infeas_klein3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein3_cbc.out -solve)
  set_tests_properties(infeas_klein3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest2_cbc.out -solve)
  set_tests_properties(infeas_itest2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex73a_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_cbc.out -solve)
  set_tests_properties(infeas_ex73a_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein1_cbc.out -solve)
  set_tests_properties(infeas_klein1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_woodinfe_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_cbc.out -solve)
  set_tests_properties(infeas_woodinfe_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgprtr_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_cbc.out -solve)
  set_tests_properties(infeas_bgprtr_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_galenet_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_galenet_cbc.out -solve)
  set_tests_properties(infeas_galenet_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gran_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gran_cbc.out -solve)
  set_tests_properties(infeas_gran_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_mondou2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_cbc.out -solve)
  set_tests_properties(infeas_mondou2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_qual_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_qual_cbc.out -solve)
  set_tests_properties(infeas_qual_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_vol1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_vol1_cbc.out -solve)
  set_tests_properties(infeas_vol1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pang_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pang_cbc.out -solve)
  set_tests_properties(infeas_pang_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgdbg1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_cbc.out -solve)
  set_tests_properties(infeas_bgdbg1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gosh_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gosh_cbc.out -solve)
  set_tests_properties(infeas_gosh_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  #
  # Big test
  #
  
  add_test(NAME big_mkc7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/big_mkc7_cbc.out -solve)
  set_tests_properties(big_mkc7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(big_mkc7_mps_cbc_standard PROPERTIES LABELS "MPS;LONG")
  
  #
  # Sample tests
  #
  
  add_test(NAME sample_scOneInt_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_cbc.out -solve)
  set_tests_properties(sample_scOneInt_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0201_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0201_cbc.out -solve)
  set_tests_properties(sample_p0201_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0548_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0548_cbc.out -solve)
  set_tests_properties(sample_p0548_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_hello_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_hello_cbc.out -solve)
  set_tests_properties(sample_hello_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_e226_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_e226_cbc.out -solve)
  set_tests_properties(sample_e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp3_cbc.out -solve)
  set_tests_properties(sample_tp3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp4_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp4_cbc.out -solve)
  set_tests_properties(sample_tp4_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_finnis_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_finnis_cbc.out -solve)
  set_tests_properties(sample_finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_5_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_5_cbc.out -solve)
  set_tests_properties(sample_5_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_exmip1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_exmip1_cbc.out -solve)
  set_tests_properties(sample_exmip1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_share2qp_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_share2qp_cbc.out -solve)
  set_tests_properties(sample_share2qp_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_afiro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_afiro_cbc.out -solve)
  set_tests_properties(sample_afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_nw460_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_nw460_cbc.out -solve)
  set_tests_properties(sample_nw460_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_brandy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_brandy_cbc.out -solve)
  set_tests_properties(sample_brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp5_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp5_cbc.out -solve)
  set_tests_properties(sample_tp5_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_pack1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_pack1_cbc.out -solve)
  set_tests_properties(sample_pack1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0033_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0033_cbc.out -solve)
  set_tests_properties(sample_p0033_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_cbc_standard PROPERTIES LABELS "MPS")

  #
  # Netlib tests
  #
  
  # Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme
  
  add_test(NAME netlib_fit2d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc.out -solve)
  set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES LABELS "MPS")
  
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -68464.29329(4)?")
  set_tests_properties(netlib_fit2d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_forplan_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_forplan_cbc.out -solve)
  set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -664.218(73953)?")
  set_tests_properties(netlib_forplan_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  add_test(NAME netlib_ship08s_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_cbc.out -solve)
  set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1920098.21(05)?")
  set_tests_properties(netlib_ship08s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_cbc.out -solve)
  set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -9146.378092(4)?")
  set_tests_properties(netlib_fit1d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_brandy_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_brandy_cbc.out -solve)
  set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1518.509896(5)?")
  set_tests_properties(netlib_brandy_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_cbc.out -solve)
  set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 18416.7590(28)?")
  set_tests_properties(netlib_scfxm1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow22_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow22_cbc.out -solve)
  set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -160834336(.48)?")
  set_tests_properties(netlib_grow22_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bandm_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bandm_cbc.out -solve)
  set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -158.628018(45)?")
  set_tests_properties(netlib_bandm_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1p_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_cbc.out -solve)
  set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 9146.378092(4)?")
  set_tests_properties(netlib_fit1p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standata_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standata_cbc.out -solve)
  set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1257.6995(000)?")
  set_tests_properties(netlib_standata_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot4_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_cbc.out -solve)
  set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2581.13926(41)?")
  set_tests_properties(netlib_pilot4_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_cbc.out -solve)
  set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -39024.4085(38)?")
  set_tests_properties(netlib_stocfor2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_cbc.out -solve)
  set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1412.25(00000)?")
  set_tests_properties(netlib_sctap1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scrs8_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_cbc.out -solve)
  set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 904.29(998619)?")
  set_tests_properties(netlib_scrs8_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_cbc.out -solve)
  set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1724.80714(29)?")
  set_tests_properties(netlib_sctap2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot87_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_cbc.out -solve)
  set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 301.710(72827)?")
  set_tests_properties(netlib_pilot87_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbea_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_cbc.out -solve)
  set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -72462405.9(08)?")
  set_tests_properties(netlib_greenbea_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_woodw_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_woodw_cbc.out -solve)
  set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1.304476333(1)?")
  set_tests_properties(netlib_woodw_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_recipe_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_recipe_cbc.out -solve)
  set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -266.616(00000)?")
  set_tests_properties(netlib_recipe_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share1b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share1b_cbc.out -solve)
  set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -76589.3185(79)?")
  set_tests_properties(netlib_share1b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_tuff_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_tuff_cbc.out -solve)
  set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 0.292147765(09)?")
  set_tests_properties(netlib_tuff_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share2b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share2b_cbc.out -solve)
  set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -415.7322407(4)?")
  set_tests_properties(netlib_share2b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bore3d_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_cbc.out -solve)
  set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1373.080394(2)?")
  set_tests_properties(netlib_bore3d_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d2q06c_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_cbc.out -solve)
  set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 122784.236(15)?")
  set_tests_properties(netlib_d2q06c_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_cbc.out -solve)
  set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -70")
  set_tests_properties(netlib_sc50b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot_cbc.out -solve)
  set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -557.4043(0007)?")
  set_tests_properties(netlib_pilot_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_cbc.out -solve)
  set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1977.6292(856)?")
  set_tests_properties(netlib_bnl1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04l_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_cbc.out -solve)
  set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1793324.538(0)?")
  set_tests_properties(netlib_ship04l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc105_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc105_cbc.out -solve)
  set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -52.20206121(2)?")
  set_tests_properties(netlib_sc105_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_cbc.out -solve)
  set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -315.018728(02)?")
  set_tests_properties(netlib_boeing2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_nesm_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_nesm_cbc.out -solve)
  set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 14076073.0(35)?")
  set_tests_properties(netlib_nesm_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc205_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc205_cbc.out -solve)
  set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -52.202061(212)?")
  set_tests_properties(netlib_sc205_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_finnis_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_finnis_cbc.out -solve)
  set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 172790.9(6547)?")
  set_tests_properties(netlib_finnis_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen2_cbc.out -solve)
  set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -1435.178(0000)?")
  set_tests_properties(netlib_degen2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros-r7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_cbc.out -solve)
  set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1497185.166(5)?")
  set_tests_properties(netlib_maros-r7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04s_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_cbc.out -solve)
  set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1798714.7(004)?")
  set_tests_properties(netlib_ship04s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_wood1p_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_cbc.out -solve)
  set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1.44290241(16)?")
  set_tests_properties(netlib_wood1p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_lotfi_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_cbc.out -solve)
  set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -25.26470606(2)?")
  set_tests_properties(netlib_lotfi_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_gfrd_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pnc_cbc.out -solve)
  set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 6902235.9(995)?")
  set_tests_properties(netlib_gfrd_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_etamacro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_cbc.out -solve)
  set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -755.7152(1774)?")
  set_tests_properties(netlib_etamacro_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow7_cbc.out -solve)
  set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -47787811.81(5)?")
  set_tests_properties(netlib_grow7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_dfl001_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_cbc.out -solve)
  set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES LABELS "MPS")
  # (there's a ** in the readme file in the netlib website)
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 112664396.0(5)?") # Cbc value
  set_tests_properties(netlib_dfl001_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg_cbc.out -solve)
  set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -35991767.2(87)?")
  set_tests_properties(netlib_agg_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standgub_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standgub_cbc.out -solve)
  set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES LABELS "MPS")
  # Nothing in the readme - Cbc value
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1257.6995")
  set_tests_properties(netlib_standgub_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12l_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_cbc.out -solve)
  set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1470187.919(3)?")
  set_tests_properties(netlib_ship12l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standmps_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standmps_cbc.out -solve)
  set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1406.0175(000)?")
  set_tests_properties(netlib_standmps_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr25_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_cbc.out -solve)
  set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -14753433.06(1)?")
  set_tests_properties(netlib_scagr25_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_capri_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_capri_cbc.out -solve)
  set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2690.01291(38)?")
  set_tests_properties(netlib_capri_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_cycle_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_cycle_cbc.out -solve)
  set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -5.22639302(49)?")
  set_tests_properties(netlib_cycle_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbeb_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_cbc.out -solve)
  set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -4302147.6065")
  set_tests_properties(netlib_greenbeb_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg2_cbc.out -solve)
  set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -20239252.3(56)?")
  set_tests_properties(netlib_agg2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stair_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stair_cbc.out -solve)
  set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -251.266951(19)?")
  set_tests_properties(netlib_stair_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_shell_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_shell_cbc.out -solve)
  set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1208825346(.0)?")
  set_tests_properties(netlib_shell_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sierra_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sierra_cbc.out -solve)
  set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 15394362.18(4)?")
  set_tests_properties(netlib_sierra_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_afiro_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_afiro_cbc.out -solve)
  set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -464.753142(86)?")
  set_tests_properties(netlib_afiro_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_cbc.out -solve)
  set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 8.666666674(3)?")
  set_tests_properties(netlib_scsd1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd8_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_cbc.out -solve)
  set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 904.9999999(3)?")
  set_tests_properties(netlib_scsd8_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship08l_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_cbc.out -solve)
  set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1909055.211(4)?")
  set_tests_properties(netlib_ship08l_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_25fv47_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_cbc.out -solve)
  set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 5501.845888(3)?")
  set_tests_properties(netlib_25fv47_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_czprob_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_czprob_cbc.out -solve)
  set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2185196.69(89)?")
  set_tests_properties(netlib_czprob_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_adlittle_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_cbc.out -solve)
  set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 225494.963(16)?")
  set_tests_properties(netlib_adlittle_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d6cube_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_cbc.out -solve)
  set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 315.491666(67)?")
  set_tests_properties(netlib_d6cube_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scorpion_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_cbc.out -solve)
  set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1878.12482(27)?")
  set_tests_properties(netlib_scorpion_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_cbc.out -solve)
  set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1424(.0)?")
  set_tests_properties(netlib_sctap3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_seba_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_seba_cbc.out -solve)
  set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 15711.6")
  set_tests_properties(netlib_seba_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_modszk1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_cbc.out -solve)
  set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 320.619729(06)?")
  set_tests_properties(netlib_modszk1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilotnov_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_cbc.out -solve)
  set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -4497.276188(2)?")
  set_tests_properties(netlib_pilotnov_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_beaconfd_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_cbc.out -solve)
  set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 33592.4858(07)?")
  set_tests_properties(netlib_beaconfd_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_e226_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_e226_cbc.out -solve)
  set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -18.751929(066)?")
  set_tests_properties(netlib_e226_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen3_cbc.out -solve)
  set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -987.294(00000)?")
  set_tests_properties(netlib_degen3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_cbc.out -solve)
  set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 36660.26156(5)?")
  set_tests_properties(netlib_scfxm2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fffff800_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_cbc.out -solve)
  set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 555679.611(65)?")
  set_tests_properties(netlib_fffff800_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_kb2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_kb2_cbc.out -solve)
  set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -1749.9001(299)?")
  set_tests_properties(netlib_kb2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ganges_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ganges_cbc.out -solve)
  set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -109586.363(56)?")
  set_tests_properties(netlib_ganges_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_cbc.out -solve)
  set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -41131.9762(19)?")
  set_tests_properties(netlib_stocfor1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd6_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_cbc.out -solve)
  set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 50.5000000(78)?")
  set_tests_properties(netlib_scsd6_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_80bau3b_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_cbc.out -solve)
  set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 987232.160(72)?")
  set_tests_properties(netlib_80bau3b_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12s_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_cbc.out -solve)
  set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1489236.134(4)?")
  set_tests_properties(netlib_ship12s_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg3_cbc.out -solve)
  set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 10312115.9(35)?")
  set_tests_properties(netlib_agg3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros_cbc.out -solve)
  set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -58063.7437(01)?")
  set_tests_properties(netlib_maros_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_perold_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_perold_cbc.out -solve)
  set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -9380.758(0773)?")
  set_tests_properties(netlib_perold_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr7_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_cbc.out -solve)
  set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2331389.25(48)?")
  set_tests_properties(netlib_scagr7_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm3_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_cbc.out -solve)
  set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 54901.25455(0)?")
  set_tests_properties(netlib_scfxm3_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow15_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow15_cbc.out -solve)
  set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -106870941(.29)?")
  set_tests_properties(netlib_grow15_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit2p_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_cbc.out -solve)
  set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 68464.2932(32)?")
  set_tests_properties(netlib_fit2p_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing1_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_cbc.out -solve)
  set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -335.2135675(1)?")
  set_tests_properties(netlib_boeing1_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50a_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_cbc.out -solve)
  set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -64.5750770(59)?")
  set_tests_properties(netlib_sc50a_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_vtpbase_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_cbc.out -solve)
  set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 129831.462(46)?")
  set_tests_properties(netlib_vtpbase_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_blend_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_blend_cbc.out -solve)
  set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -30.8121498(46)?")
  set_tests_properties(netlib_blend_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl2_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_cbc.out -solve)
  set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1811.23654(04)?")
  set_tests_properties(netlib_bnl2_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_israel_mps_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_israel_cbc.out -solve)
  set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -896644.821(86)?")
  set_tests_properties(netlib_israel_mps_cbc_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  #
  # miplib3 tests
  #
  
  add_test(NAME miplib3_10teams_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_cbc.out -solve)
  set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_10teams_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air03_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air03_cbc.out -solve)
  set_tests_properties(miplib3_air03_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air03_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air04_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air04_cbc.out -solve)
  set_tests_properties(miplib3_air04_cbc_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air04_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air05_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air05_cbc.out -solve)
  set_tests_properties(miplib3_air05_cbc_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air05_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_arki001_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_cbc.out -solve)
  set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_arki001_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_bell3a_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_cbc.out -solve)
  set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell3a_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_bell5_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_cbc.out -solve)
  set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell5_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_blend2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_cbc.out -solve)
  set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_blend2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_cap6000_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_cbc.out -solve)
  set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_cap6000_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dano3mip_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_cbc.out -solve)
  set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_dano3mip_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_danoint_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_cbc.out -solve)
  set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_danoint_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_dcmulti_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_cbc.out -solve)
  set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dcmulti_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dsbmip_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_cbc.out -solve)
  set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dsbmip_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_egout_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_egout_cbc.out -solve)
  set_tests_properties(miplib3_egout_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_egout_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_enigma_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_cbc.out -solve)
  set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_enigma_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fast0507_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_cbc.out -solve)
  set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_fast0507_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_fiber_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_cbc.out -solve)
  set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fiber_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fixnet6_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_cbc.out -solve)
  set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fixnet6_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_flugpl_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_cbc.out -solve)
  set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_flugpl_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gen_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gen_cbc.out -solve)
  set_tests_properties(miplib3_gen_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gen_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_cbc.out -solve)
  set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_o_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_cbc.out -solve)
  set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_o_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_cbc.out -solve)
  set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_o_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_cbc.out -solve)
  set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_o_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gt2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_cbc.out -solve)
  set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gt2_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_harp2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_cbc.out -solve)
  set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_harp2_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_khb05250_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_cbc.out -solve)
  set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_khb05250_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_l152lav_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_cbc.out -solve)
  set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_l152lav_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_lseu_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_cbc.out -solve)
  set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_lseu_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_markshare1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_cbc.out -solve)
  set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare1_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_markshare2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_cbc.out -solve)
  set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare2_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_mas74_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_cbc.out -solve)
  set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mas74_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_mas76_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_cbc.out -solve)
  set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas76_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc03_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_cbc.out -solve)
  set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc03_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc06_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_cbc.out -solve)
  set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc06_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc07_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_cbc.out -solve)
  set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_misc07_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mitre_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_cbc.out -solve)
  set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mitre_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mkc_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_cbc.out -solve)
  set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mkc_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_mod008_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_cbc.out -solve)
  set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod008_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod010_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_cbc.out -solve)
  set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod010_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod011_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_cbc.out -solve)
  set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_mod011_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_modglob_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_cbc.out -solve)
  set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_modglob_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_noswot_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_cbc.out -solve)
  set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_noswot_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_nw04_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_cbc.out -solve)
  set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_nw04_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0033_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_cbc.out -solve)
  set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0033_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0201_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_cbc.out -solve)
  set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0201_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0282_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_cbc.out -solve)
  set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0282_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0548_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_cbc.out -solve)
  set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0548_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p2756_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_cbc.out -solve)
  set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p2756_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pk1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_cbc.out -solve)
  set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_pk1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08aCUTS_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_cbc.out -solve)
  set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08aCUTS_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08a_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_cbc.out -solve)
  set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08a_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qiu_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_cbc.out -solve)
  set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_qiu_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_cbc.out -solve)
  set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_o_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_cbc.out -solve)
  set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_o_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rentacar_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_cbc.out -solve)
  set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rentacar_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rgn_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_cbc.out -solve)
  set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rgn_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rout_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rout_cbc.out -solve)
  set_tests_properties(miplib3_rout_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_rout_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_set1ch_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_cbc.out -solve)
  set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_set1ch_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_seymour_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_cbc.out -solve)
  set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_seymour_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_stein27_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_cbc.out -solve)
  set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein27_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_stein45_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_cbc.out -solve)
  set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein45_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_swath_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_swath_cbc.out -solve)
  set_tests_properties(miplib3_swath_cbc_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_swath_cbc_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_vpm1_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_cbc.out -solve)
  set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm1_cbc_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_vpm2_cbc_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_cbc.out -solve)
  set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm2_cbc_standard PROPERTIES LABELS "MPS")
endif ()

if (CBC_BUILD_CBC_GENERIC) 
  #
  # Infeas tests
  #
  
  add_test(NAME infeas_chemcom_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/chemcom.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_chemcom_cbc.out -solve)
  set_tests_properties(infeas_chemcom_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_chemcom_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pilot4i_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pilot4i.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pilot4i_cbc.out -solve)
  set_tests_properties(infeas_pilot4i_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pilot4i_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_reactor_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/reactor.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_reactor_cbc.out -solve)
  set_tests_properties(infeas_reactor_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_reactor_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgetam_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgetam.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgetam_cbc.out -solve)
  set_tests_properties(infeas_bgetam_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgetam_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_refinery_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/refinery.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_refinery_cbc.out -solve)
  set_tests_properties(infeas_refinery_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_refinery_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex2_cbc.out -solve)
  set_tests_properties(infeas_cplex2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_forest6_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/forest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_forest6_cbc.out -solve)
  set_tests_properties(infeas_forest6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_forest6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_cplex1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/cplex1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_cplex1_cbc.out -solve)
  set_tests_properties(infeas_cplex1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_cplex1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_box1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/box1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_box1_cbc.out -solve)
  set_tests_properties(infeas_box1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_box1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest6_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest6.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest6_cbc.out -solve)
  set_tests_properties(infeas_itest6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgindy_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgindy.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgindy_cbc.out -solve)
  set_tests_properties(infeas_bgindy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgindy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein2_cbc.out -solve)
  set_tests_properties(infeas_klein2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ceria3d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ceria3d.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ceria3d_cbc.out -solve)
  set_tests_properties(infeas_ceria3d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ceria3d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex72a_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex72a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex72a_cbc.out -solve)
  set_tests_properties(infeas_ex72a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex72a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_greenbea_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/greenbea.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_greenbea_cbc.out -solve)
  set_tests_properties(infeas_greenbea_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_greenbea_mps_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  
  add_test(NAME infeas_klein3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein3.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein3_cbc.out -solve)
  set_tests_properties(infeas_klein3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_itest2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/itest2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_itest2_cbc.out -solve)
  set_tests_properties(infeas_itest2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_itest2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_ex73a_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/ex73a.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_ex73a_cbc.out -solve)
  set_tests_properties(infeas_ex73a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_ex73a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_klein1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/klein1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_klein1_cbc.out -solve)
  set_tests_properties(infeas_klein1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_klein1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_woodinfe_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/woodinfe.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_woodinfe_cbc.out -solve)
  set_tests_properties(infeas_woodinfe_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_woodinfe_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgprtr_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgprtr.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgprtr_cbc.out -solve)
  set_tests_properties(infeas_bgprtr_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgprtr_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_galenet_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/galenet.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_galenet_cbc.out -solve)
  set_tests_properties(infeas_galenet_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_galenet_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gran_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gran.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gran_cbc.out -solve)
  set_tests_properties(infeas_gran_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gran_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_mondou2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/mondou2.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_mondou2_cbc.out -solve)
  set_tests_properties(infeas_mondou2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_mondou2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_qual_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/qual.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_qual_cbc.out -solve)
  set_tests_properties(infeas_qual_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_qual_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_vol1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/vol1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_vol1_cbc.out -solve)
  set_tests_properties(infeas_vol1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_vol1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_pang_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/pang.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_pang_cbc.out -solve)
  set_tests_properties(infeas_pang_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_pang_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_bgdbg1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/bgdbg1.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_bgdbg1_cbc.out -solve)
  set_tests_properties(infeas_bgdbg1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_bgdbg1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME infeas_gosh_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Infeas/gosh.mps -solution ${CMAKE_BINARY_DIR}/tests/infeas_gosh_cbc.out -solve)
  set_tests_properties(infeas_gosh_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(infeas_gosh_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  #
  # Big test
  #
  
  add_test(NAME big_mkc7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Big/mkc7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/big_mkc7_cbc.out -solve)
  set_tests_properties(big_mkc7_mps_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(big_mkc7_mps_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")
  
  #
  # Sample tests
  #
  
  add_test(NAME sample_scOneInt_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/scOneInt.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_scOneInt_cbc.out -solve)
  set_tests_properties(sample_scOneInt_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_scOneInt_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0201_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0201.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0201_cbc.out -solve)
  set_tests_properties(sample_p0201_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0201_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0548_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0548.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0548_cbc.out -solve)
  set_tests_properties(sample_p0548_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0548_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_hello_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/hello.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_hello_cbc.out -solve)
  set_tests_properties(sample_hello_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_hello_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_e226_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/e226.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_e226_cbc.out -solve)
  set_tests_properties(sample_e226_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_e226_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp3.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp3_cbc.out -solve)
  set_tests_properties(sample_tp3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp4_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp4.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp4_cbc.out -solve)
  set_tests_properties(sample_tp4_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp4_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_finnis_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/finnis.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_finnis_cbc.out -solve)
  set_tests_properties(sample_finnis_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_finnis_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_5_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_5_cbc.out -solve)
  set_tests_properties(sample_5_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_5_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_exmip1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/exmip1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_exmip1_cbc.out -solve)
  set_tests_properties(sample_exmip1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_exmip1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_share2qp_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/share2qp.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_share2qp_cbc.out -solve)
  set_tests_properties(sample_share2qp_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_share2qp_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_afiro_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/afiro.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_afiro_cbc.out -solve)
  set_tests_properties(sample_afiro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_afiro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_nw460_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/nw460.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_nw460_cbc.out -solve)
  set_tests_properties(sample_nw460_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_nw460_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_brandy_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/brandy.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_brandy_cbc.out -solve)
  set_tests_properties(sample_brandy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_brandy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_tp5_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/tp5.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_tp5_cbc.out -solve)
  set_tests_properties(sample_tp5_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_tp5_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_pack1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/pack1.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_pack1_cbc.out -solve)
  set_tests_properties(sample_pack1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_pack1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  add_test(NAME sample_p0033_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Sample/p0033.mps -solution ${CMAKE_BINARY_DIR}/tests/sample_p0033_cbc.out -solve)
  set_tests_properties(sample_p0033_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(sample_p0033_mps_cbc-generic_standard PROPERTIES LABELS "MPS")

  #
  # Netlib tests
  #
  
  # Optimal values for objective function can be found at: http://www.netlib.org/lp/data/readme
  
  add_test(NAME netlib_fit2d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2d_cbc.out -solve)
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -6.8464293294e[+]04")
  set_tests_properties(netlib_fit2d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_forplan_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/forplan.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_forplan_cbc.out -solve)
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -664.218(73953)?")
  set_tests_properties(netlib_forplan_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")

  add_test(NAME netlib_ship08s_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08s_cbc.out -solve)
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1920098.21(05)?")
  set_tests_properties(netlib_ship08s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1d_cbc.out -solve)
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -9146.378092(4)?")
  set_tests_properties(netlib_fit1d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_brandy_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/brandy.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_brandy_cbc.out -solve)
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1518.509896(5)?")
  set_tests_properties(netlib_brandy_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm1_cbc.out -solve)
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 18416.7590(28)?")
  set_tests_properties(netlib_scfxm1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow22_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow22.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow22_cbc.out -solve)
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -160834336(.48)?")
  set_tests_properties(netlib_grow22_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bandm_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bandm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bandm_cbc.out -solve)
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -158.628018(45)?")
  set_tests_properties(netlib_bandm_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit1p_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit1p_cbc.out -solve)
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 9146.378092(4)?")
  set_tests_properties(netlib_fit1p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standata_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standata.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standata_cbc.out -solve)
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1257.6995(000)?")
  set_tests_properties(netlib_standata_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot4_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot4.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot4_cbc.out -solve)
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2581.13926(41)?")
  set_tests_properties(netlib_pilot4_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor2_cbc.out -solve)
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -39024.4085(38)?")
  set_tests_properties(netlib_stocfor2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap1_cbc.out -solve)
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1412.25(00000)?")
  set_tests_properties(netlib_sctap1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scrs8_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scrs8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scrs8_cbc.out -solve)
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 904.29(998619)?")
  set_tests_properties(netlib_scrs8_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap2_cbc.out -solve)
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1724.80714(29)?")
  set_tests_properties(netlib_sctap2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot87_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot87.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot87_cbc.out -solve)
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 301.710(72827)?")
  set_tests_properties(netlib_pilot87_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbea_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbea.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbea_cbc.out -solve)
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -72462405.9(08)?")
  set_tests_properties(netlib_greenbea_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_woodw_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/woodw.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_woodw_cbc.out -solve)
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1.304476333(1)?")
  set_tests_properties(netlib_woodw_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_recipe_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/recipe.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_recipe_cbc.out -solve)
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -266.616(00000)?")
  set_tests_properties(netlib_recipe_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share1b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share1b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share1b_cbc.out -solve)
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -76589.3185(79)?")
  set_tests_properties(netlib_share1b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_tuff_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/tuff.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_tuff_cbc.out -solve)
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 0.292147765(09)?")
  set_tests_properties(netlib_tuff_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_share2b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/share2b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_share2b_cbc.out -solve)
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -415.7322407(4)?")
  set_tests_properties(netlib_share2b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bore3d_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bore3d.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bore3d_cbc.out -solve)
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1373.080394(2)?")
  set_tests_properties(netlib_bore3d_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d2q06c_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d2q06c.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d2q06c_cbc.out -solve)
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 122784.236(15)?")
  set_tests_properties(netlib_d2q06c_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50b_cbc.out -solve)
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -70")
  set_tests_properties(netlib_sc50b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilot_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilot.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilot_cbc.out -solve)
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -557.4043(0007)?")
  set_tests_properties(netlib_pilot_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl1_cbc.out -solve)
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1977.6292(856)?")
  set_tests_properties(netlib_bnl1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04l_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04l_cbc.out -solve)
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1793324.538(0)?")
  set_tests_properties(netlib_ship04l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc105_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc105.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc105_cbc.out -solve)
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -52.20206121(2)?")
  set_tests_properties(netlib_sc105_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing2_cbc.out -solve)
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -315.018728(02)?")
  set_tests_properties(netlib_boeing2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_nesm_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/nesm.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_nesm_cbc.out -solve)
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 14076073.0(35)?")
  set_tests_properties(netlib_nesm_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc205_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc205.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc205_cbc.out -solve)
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -52.202061(212)?")
  set_tests_properties(netlib_sc205_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_finnis_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/finnis.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_finnis_cbc.out -solve)
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 172790.9(6547)?")
  set_tests_properties(netlib_finnis_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen2_cbc.out -solve)
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -1435.178(0000)?")
  set_tests_properties(netlib_degen2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros-r7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros-r7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros-r7_cbc.out -solve)
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1497185.166(5)?")
  set_tests_properties(netlib_maros-r7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship04s_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship04s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship04s_cbc.out -solve)
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1798714.7(004)?")
  set_tests_properties(netlib_ship04s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_wood1p_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/wood1p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_wood1p_cbc.out -solve)
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1.44290241(16)?")
  set_tests_properties(netlib_wood1p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_lotfi_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/lotfi.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_lotfi_cbc.out -solve)
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -25.26470606(2)?")
  set_tests_properties(netlib_lotfi_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_gfrd_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/gfrd-pnc.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pnc_cbc.out -solve)
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 6902235.9(995)?")
  set_tests_properties(netlib_gfrd_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_etamacro_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/etamacro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_etamacro_cbc.out -solve)
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -755.7152(1774)?")
  set_tests_properties(netlib_etamacro_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow7_cbc.out -solve)
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -47787811.81(5)?")
  set_tests_properties(netlib_grow7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_dfl001_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/dfl001.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_dfl001_cbc.out -solve)
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  # (there's a ** in the readme file in the netlib website)
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 112664396.0(5)?") # Cbc value
  set_tests_properties(netlib_dfl001_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg_cbc.out -solve)
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -35991767.2(87)?")
  set_tests_properties(netlib_agg_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standgub_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standgub.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standgub_cbc.out -solve)
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  # Nothing in the readme - Cbc value
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "1257.6995")
  set_tests_properties(netlib_standgub_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12l_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12l_cbc.out -solve)
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1470187.919(3)?")
  set_tests_properties(netlib_ship12l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_standmps_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/standmps.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_standmps_cbc.out -solve)
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1406.0175(000)?")
  set_tests_properties(netlib_standmps_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr25_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr25.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr25_cbc.out -solve)
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -14753433.06(1)?")
  set_tests_properties(netlib_scagr25_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_capri_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/capri.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_capri_cbc.out -solve)
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2690.01291(38)?")
  set_tests_properties(netlib_capri_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_cycle_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/cycle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_cycle_cbc.out -solve)
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -5.22639302(49)?")
  set_tests_properties(netlib_cycle_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_greenbeb_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/greenbeb.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_greenbeb_cbc.out -solve)
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -4302147.6065")
  set_tests_properties(netlib_greenbeb_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg2_cbc.out -solve)
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -20239252.3(56)?")
  set_tests_properties(netlib_agg2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stair_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stair.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stair_cbc.out -solve)
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -251.266951(19)?")
  set_tests_properties(netlib_stair_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_shell_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/shell.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_shell_cbc.out -solve)
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1208825346(.0)?")
  set_tests_properties(netlib_shell_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sierra_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sierra.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sierra_cbc.out -solve)
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 15394362.18(4)?")
  set_tests_properties(netlib_sierra_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_afiro_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/afiro.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_afiro_cbc.out -solve)
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -464.753142(86)?")
  set_tests_properties(netlib_afiro_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd1_cbc.out -solve)
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 8.666666674(3)?")
  set_tests_properties(netlib_scsd1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd8_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd8.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd8_cbc.out -solve)
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 904.9999999(3)?")
  set_tests_properties(netlib_scsd8_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship08l_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship08l.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship08l_cbc.out -solve)
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1909055.211(4)?")
  set_tests_properties(netlib_ship08l_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_25fv47_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/25fv47.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_25fv47_cbc.out -solve)
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 5501.845888(3)?")
  set_tests_properties(netlib_25fv47_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_czprob_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/czprob.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_czprob_cbc.out -solve)
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 2185196.69(89)?")
  set_tests_properties(netlib_czprob_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_adlittle_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/adlittle.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_adlittle_cbc.out -solve)
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 225494.963(16)?")
  set_tests_properties(netlib_adlittle_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_d6cube_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/d6cube.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_d6cube_cbc.out -solve)
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 315.491666(67)?")
  set_tests_properties(netlib_d6cube_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scorpion_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scorpion.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scorpion_cbc.out -solve)
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1878.12482(27)?")
  set_tests_properties(netlib_scorpion_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sctap3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sctap3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sctap3_cbc.out -solve)
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1424(.0)?")
  set_tests_properties(netlib_sctap3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_seba_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/seba.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_seba_cbc.out -solve)
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 15711.6")
  set_tests_properties(netlib_seba_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_modszk1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/modszk1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_modszk1_cbc.out -solve)
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 320.619729(06)?")
  set_tests_properties(netlib_modszk1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_pilotnov_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/pilotnov.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_pilotnov_cbc.out -solve)
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -4497.276188(2)?")
  set_tests_properties(netlib_pilotnov_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_beaconfd_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/beaconfd.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_beaconfd_cbc.out -solve)
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 33592.4858(07)?")
  set_tests_properties(netlib_beaconfd_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_e226_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/e226.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_e226_cbc.out -solve)
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -18.751929(066)?")
  set_tests_properties(netlib_e226_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_degen3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/degen3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_degen3_cbc.out -solve)
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -987.294(00000)?")
  set_tests_properties(netlib_degen3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm2_cbc.out -solve)
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 36660.26156(5)?")
  set_tests_properties(netlib_scfxm2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fffff800_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fffff800.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fffff800_cbc.out -solve)
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 555679.611(65)?")
  set_tests_properties(netlib_fffff800_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_kb2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/kb2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_kb2_cbc.out -solve)
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -1749.9001(299)?")
  set_tests_properties(netlib_kb2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ganges_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ganges.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ganges_cbc.out -solve)
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -109586.363(56)?")
  set_tests_properties(netlib_ganges_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_stocfor1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/stocfor1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_stocfor1_cbc.out -solve)
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -41131.9762(19)?")
  set_tests_properties(netlib_stocfor1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scsd6_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scsd6.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scsd6_cbc.out -solve)
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 50.5000000(78)?")
  set_tests_properties(netlib_scsd6_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_80bau3b_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/80bau3b.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_80bau3b_cbc.out -solve)
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 987232.160(72)?")
  set_tests_properties(netlib_80bau3b_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_ship12s_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/ship12s.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_ship12s_cbc.out -solve)
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1489236.134(4)?")
  set_tests_properties(netlib_ship12s_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_agg3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/agg3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_agg3_cbc.out -solve)
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 10312115.9(35)?")
  set_tests_properties(netlib_agg3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_maros_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/maros.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_maros_cbc.out -solve)
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -58063.7437(01)?")
  set_tests_properties(netlib_maros_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_perold_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/perold.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_perold_cbc.out -solve)
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -9380.758(0773)?")
  set_tests_properties(netlib_perold_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scagr7_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scagr7.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scagr7_cbc.out -solve)
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -2331389.25(48)?")
  set_tests_properties(netlib_scagr7_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_scfxm3_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/scfxm3.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_scfxm3_cbc.out -solve)
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 54901.25455(0)?")
  set_tests_properties(netlib_scfxm3_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_grow15_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/grow15.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_grow15_cbc.out -solve)
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -106870941(.29)?")
  set_tests_properties(netlib_grow15_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_fit2p_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/fit2p.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_fit2p_cbc.out -solve)
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 68464.2932(32)?")
  set_tests_properties(netlib_fit2p_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_boeing1_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/boeing1.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_boeing1_cbc.out -solve)
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -335.2135675(1)?")
  set_tests_properties(netlib_boeing1_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_sc50a_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/sc50a.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_sc50a_cbc.out -solve)
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -64.5750770(59)?")
  set_tests_properties(netlib_sc50a_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_vtpbase_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/vtpbase.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_vtpbase_cbc.out -solve)
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 129831.462(46)?")
  set_tests_properties(netlib_vtpbase_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_blend_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/blend.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_blend_cbc.out -solve)
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -30.8121498(46)?")
  set_tests_properties(netlib_blend_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_bnl2_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/bnl2.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_bnl2_cbc.out -solve)
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective 1811.23654(04)?")
  set_tests_properties(netlib_bnl2_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  add_test(NAME netlib_israel_mps_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/Netlib/israel.mps.gz -solution ${CMAKE_BINARY_DIR}/tests/netlib_israel_cbc.out -solve)
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES LABELS "MPS")
  set(TEST_REGEX "")
  add_regex(TEST_REGEX "Optimal objective -896644.821(86)?")
  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")




  set_tests_properties(netlib_israel_mps_cbc-generic_standard PROPERTIES PASS_REGULAR_EXPRESSION "${TEST_REGEX}")
  
  #
  # miplib3 tests
  #
  
  add_test(NAME miplib3_10teams_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/10teams.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_10teams_cbc.out -solve)
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_10teams_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air03_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air03_cbc.out -solve)
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_air03_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air04_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air04_cbc.out -solve)
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air04_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_air05_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/air05.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_air05_cbc.out -solve)
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air05_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_arki001_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/arki001.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_arki001_cbc.out -solve)
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_arki001_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_bell3a_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell3a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell3a_cbc.out -solve)
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell3a_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_bell5_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/bell5.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_bell5_cbc.out -solve)
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_bell5_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_blend2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/blend2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_blend2_cbc.out -solve)
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_blend2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_cap6000_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/cap6000.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_cap6000_cbc.out -solve)
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_cap6000_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dano3mip_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dano3mip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dano3mip_cbc.out -solve)
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_dano3mip_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_danoint_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/danoint.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_danoint_cbc.out -solve)
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_danoint_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_dcmulti_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dcmulti.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dcmulti_cbc.out -solve)
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dcmulti_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_dsbmip_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/dsbmip.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_dsbmip_cbc.out -solve)
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_dsbmip_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_egout_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/egout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_egout_cbc.out -solve)
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_egout_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_enigma_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/enigma.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_enigma_cbc.out -solve)
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_enigma_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fast0507_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fast0507.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fast0507_cbc.out -solve)
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_fast0507_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_fiber_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fiber.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fiber_cbc.out -solve)
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fiber_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_fixnet6_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/fixnet6.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_fixnet6_cbc.out -solve)
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_fixnet6_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_flugpl_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/flugpl.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_flugpl_cbc.out -solve)
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_flugpl_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gen_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gen.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gen_cbc.out -solve)
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gen_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_cbc.out -solve)
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa2_o_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa2_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa2_o_cbc.out -solve)
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa2_o_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_cbc.out -solve)
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gesa3_o_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gesa3_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gesa3_o_cbc.out -solve)
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gesa3_o_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_gt2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/gt2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_gt2_cbc.out -solve)
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_gt2_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_harp2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/harp2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_harp2_cbc.out -solve)
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_harp2_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_khb05250_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/khb05250.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_khb05250_cbc.out -solve)
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_khb05250_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_l152lav_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/l152lav.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_l152lav_cbc.out -solve)
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_l152lav_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_lseu_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/lseu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_lseu_cbc.out -solve)
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_lseu_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_markshare1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare1_cbc.out -solve)
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare1_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_markshare2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/markshare2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_markshare2_cbc.out -solve)
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare2_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_mas74_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas74.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas74_cbc.out -solve)
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mas74_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_mas76_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mas76.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mas76_cbc.out -solve)
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mas76_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc03_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc03.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc03_cbc.out -solve)
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc03_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc06_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc06.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc06_cbc.out -solve)
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_misc06_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_misc07_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/misc07.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_misc07_cbc.out -solve)
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_misc07_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mitre_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mitre.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mitre_cbc.out -solve)
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mitre_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mkc_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mkc.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mkc_cbc.out -solve)
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mkc_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_mod008_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod008.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod008_cbc.out -solve)
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod008_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod010_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod010.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod010_cbc.out -solve)
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_mod010_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_mod011_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/mod011.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_mod011_cbc.out -solve)
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_mod011_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_modglob_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/modglob.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_modglob_cbc.out -solve)
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_modglob_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_noswot_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/noswot.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_noswot_cbc.out -solve)
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_noswot_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_nw04_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/nw04.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_nw04_cbc.out -solve)
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_nw04_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0033_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0033.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0033_cbc.out -solve)
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0033_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0201_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0201.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0201_cbc.out -solve)
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0201_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0282_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0282.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0282_cbc.out -solve)
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0282_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p0548_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p0548.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p0548_cbc.out -solve)
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p0548_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_p2756_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/p2756.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_p2756_cbc.out -solve)
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_p2756_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pk1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pk1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pk1_cbc.out -solve)
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_pk1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08aCUTS_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08aCUTS.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08aCUTS_cbc.out -solve)
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08aCUTS_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_pp08a_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/pp08a.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_pp08a_cbc.out -solve)
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_pp08a_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qiu_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qiu.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qiu_cbc.out -solve)
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_qiu_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_cbc.out -solve)
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_qnet1_o_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/qnet1_o.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_qnet1_o_cbc.out -solve)
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_qnet1_o_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rentacar_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rentacar.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rentacar_cbc.out -solve)
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rentacar_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rgn_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rgn.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rgn_cbc.out -solve)
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_rgn_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_rout_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/rout.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_rout_cbc.out -solve)
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_rout_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_set1ch_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/set1ch.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_set1ch_cbc.out -solve)
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_set1ch_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_seymour_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/seymour.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_seymour_cbc.out -solve)
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_seymour_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_stein27_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein27.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein27_cbc.out -solve)
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein27_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_stein45_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/stein45.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_stein45_cbc.out -solve)
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_stein45_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_swath_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/swath.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_swath_cbc.out -solve)
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_swath_cbc-generic_standard PROPERTIES LABELS "MPS;LONG")

  add_test(NAME miplib3_vpm1_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc-generic> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm1.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm1_cbc.out -solve)
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm1_cbc-generic_standard PROPERTIES LABELS "MPS")

  add_test(NAME miplib3_vpm2_cbc-generic_standard 
           COMMAND $<TARGET_FILE:cbc> ${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST/miplib3/vpm2.gz -solution ${CMAKE_BINARY_DIR}/tests/miplib3_vpm2_cbc.out -solve)
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES TIMEOUT 30)
  set_tests_properties(miplib3_vpm2_cbc-generic_standard PROPERTIES LABELS "MPS")
endif ()
