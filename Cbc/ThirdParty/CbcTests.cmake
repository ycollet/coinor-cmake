include(coin-macros)

set(CBC_INSTANCES_DIR "${EP_InstallDir}/DATA_TEST/src/EP_DATA_TEST")

set(TEST_LIST_INFEAS ${CBC_INSTANCES_DIR}/Infeas/chemcom.mps
                     ${CBC_INSTANCES_DIR}/Infeas/pilot4i.mps
		     ${CBC_INSTANCES_DIR}/Infeas/reactor.mps
		     ${CBC_INSTANCES_DIR}/Infeas/bgetam.mps
		     ${CBC_INSTANCES_DIR}/Infeas/refinery.mps
		     ${CBC_INSTANCES_DIR}/Infeas/cplex2.mps
		     ${CBC_INSTANCES_DIR}/Infeas/forest6.mps
		     ${CBC_INSTANCES_DIR}/Infeas/cplex1.mps
		     ${CBC_INSTANCES_DIR}/Infeas/box1.mps
		     ${CBC_INSTANCES_DIR}/Infeas/itest6.mps
		     ${CBC_INSTANCES_DIR}/Infeas/bgindy.mps
		     ${CBC_INSTANCES_DIR}/Infeas/klein2.mps
		     ${CBC_INSTANCES_DIR}/Infeas/ceria3d.mps
		     ${CBC_INSTANCES_DIR}/Infeas/ex72a.mps
		     ${CBC_INSTANCES_DIR}/Infeas/greenbea.mps
		     ${CBC_INSTANCES_DIR}/Infeas/klein3.mps
		     ${CBC_INSTANCES_DIR}/Infeas/itest2.mps
		     ${CBC_INSTANCES_DIR}/Infeas/ex73a.mps
		     ${CBC_INSTANCES_DIR}/Infeas/klein1.mps
		     ${CBC_INSTANCES_DIR}/Infeas/woodinfe.mps
		     ${CBC_INSTANCES_DIR}/Infeas/bgprtr.mps
		     ${CBC_INSTANCES_DIR}/Infeas/galenet.mps
		     ${CBC_INSTANCES_DIR}/Infeas/gran.mps
		     ${CBC_INSTANCES_DIR}/Infeas/mondou2.mps
		     ${CBC_INSTANCES_DIR}/Infeas/qual.mps
		     ${CBC_INSTANCES_DIR}/Infeas/vol1.mps
		     ${CBC_INSTANCES_DIR}/Infeas/pang.mps
		     ${CBC_INSTANCES_DIR}/Infeas/bgdbg1.mps
		     ${CBC_INSTANCES_DIR}/Infeas/gosh.mps)
		   
set(TEST_LIST_BIG ${CBC_INSTANCES_DIR}/Big/mkc7.mps.gz)
		   
set(TEST_LIST_SAMPLE ${CBC_INSTANCES_DIR}/Sample/scOneInt.mps
                     ${CBC_INSTANCES_DIR}/Sample/p0201.mps
		     ${CBC_INSTANCES_DIR}/Sample/p0548.mps
		     ${CBC_INSTANCES_DIR}/Sample/hello.mps
		     ${CBC_INSTANCES_DIR}/Sample/e226.mps
		     ${CBC_INSTANCES_DIR}/Sample/tp3.mps
		     ${CBC_INSTANCES_DIR}/Sample/tp4.mps
		     ${CBC_INSTANCES_DIR}/Sample/finnis.mps
		     ${CBC_INSTANCES_DIR}/Sample/exmip1.5
		     ${CBC_INSTANCES_DIR}/Sample/exmip1.mps
		     ${CBC_INSTANCES_DIR}/Sample/share2qp.mps
		     ${CBC_INSTANCES_DIR}/Sample/afiro.mps
		     ${CBC_INSTANCES_DIR}/Sample/nw460.mps
		     ${CBC_INSTANCES_DIR}/Sample/brandy.mps
		     ${CBC_INSTANCES_DIR}/Sample/tp5.mps
		     ${CBC_INSTANCES_DIR}/Sample/pack1.mps
		     ${CBC_INSTANCES_DIR}/Sample/p0033.mps)
		   
set(TEST_LIST_NETLIB ${CBC_INSTANCES_DIR}/Netlib/fit2d.mps.gz
                     ${CBC_INSTANCES_DIR}/Netlib/forplan.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/ship08s.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/fit1d.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/brandy.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scfxm1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/grow22.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/bandm.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/fit1p.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/standata.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/pilot4.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/stocfor2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sctap1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scrs8.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sctap2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/pilot87.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/greenbea.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/woodw.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/recipe.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/share1b.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/tuff.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/share2b.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/bore3d.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/d2q06c.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sc50b.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/pilot.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/bnl1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/ship04l.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sc105.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/boeing2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/nesm.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sc205.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/finnis.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/degen2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/maros-r7.mps
		     ${CBC_INSTANCES_DIR}/Netlib/ship04s.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/wood1p.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/lotfi.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/gfrd-pnc.mps
		     ${CBC_INSTANCES_DIR}/Netlib/etamacro.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/grow7.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/dfl001.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/agg.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/standgub.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/ship12l.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/standmps.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scagr25.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/capri.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/cycle.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/greenbeb.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/agg2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/stair.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/shell.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sierra.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/afiro.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scsd1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scsd8.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/ship08l.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/25fv47.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/czprob.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/adlittle.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/d6cube.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scorpion.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sctap3.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/seba.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/modszk1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/pilotnov.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/beaconfd.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/e226.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/degen3.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scfxm2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/fffff800.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/kb2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/ganges.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/stocfor1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scsd6.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/80bau3b.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/ship12s.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/agg3.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/maros.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/perold.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scagr7.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/scfxm3.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/grow15.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/fit2p.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/boeing1.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/sc50a.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/vtpbase.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/blend.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/bnl2.mps.gz
		     ${CBC_INSTANCES_DIR}/Netlib/israel.mps.gz)
		   
set(TEST_LIST_MIPLIB3 ${CBC_INSTANCES_DIR}/miplib3/10teams.gz
		      ${CBC_INSTANCES_DIR}/miplib3/air03.gz
		      ${CBC_INSTANCES_DIR}/miplib3/air04.gz
		      ${CBC_INSTANCES_DIR}/miplib3/air05.gz
		      ${CBC_INSTANCES_DIR}/miplib3/arki001.gz
		      ${CBC_INSTANCES_DIR}/miplib3/bell3a.gz
		      ${CBC_INSTANCES_DIR}/miplib3/bell5.gz
		      ${CBC_INSTANCES_DIR}/miplib3/blend2.gz
		      ${CBC_INSTANCES_DIR}/miplib3/cap6000.gz
		      ${CBC_INSTANCES_DIR}/miplib3/dano3mip.gz
		      ${CBC_INSTANCES_DIR}/miplib3/danoint.gz
		      ${CBC_INSTANCES_DIR}/miplib3/dcmulti.gz
		      ${CBC_INSTANCES_DIR}/miplib3/dsbmip.gz
		      ${CBC_INSTANCES_DIR}/miplib3/egout.gz
		      ${CBC_INSTANCES_DIR}/miplib3/enigma.gz
		      ${CBC_INSTANCES_DIR}/miplib3/fast0507.gz
		      ${CBC_INSTANCES_DIR}/miplib3/fiber.gz
		      ${CBC_INSTANCES_DIR}/miplib3/fixnet6.gz
		      ${CBC_INSTANCES_DIR}/miplib3/flugpl.gz
		      ${CBC_INSTANCES_DIR}/miplib3/gen.gz
		      ${CBC_INSTANCES_DIR}/miplib3/gesa2.gz
		      ${CBC_INSTANCES_DIR}/miplib3/gesa2_o.gz
		      ${CBC_INSTANCES_DIR}/miplib3/gesa3.gz
		      ${CBC_INSTANCES_DIR}/miplib3/gesa3_o.gz
		      ${CBC_INSTANCES_DIR}/miplib3/gt2.gz
		      ${CBC_INSTANCES_DIR}/miplib3/harp2.gz
		      ${CBC_INSTANCES_DIR}/miplib3/khb05250.gz
		      ${CBC_INSTANCES_DIR}/miplib3/l152lav.gz
		      ${CBC_INSTANCES_DIR}/miplib3/lseu.gz
		      ${CBC_INSTANCES_DIR}/miplib3/markshare1.gz
		      ${CBC_INSTANCES_DIR}/miplib3/markshare2.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mas74.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mas76.gz
		      ${CBC_INSTANCES_DIR}/miplib3/misc03.gz
		      ${CBC_INSTANCES_DIR}/miplib3/misc06.gz
		      ${CBC_INSTANCES_DIR}/miplib3/misc07.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mitre.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mkc.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mod008.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mod010.gz
		      ${CBC_INSTANCES_DIR}/miplib3/mod011.gz
		      ${CBC_INSTANCES_DIR}/miplib3/modglob.gz
		      ${CBC_INSTANCES_DIR}/miplib3/noswot.gz
		      ${CBC_INSTANCES_DIR}/miplib3/nw04.gz
		      ${CBC_INSTANCES_DIR}/miplib3/p0033.gz
		      ${CBC_INSTANCES_DIR}/miplib3/p0201.gz
		      ${CBC_INSTANCES_DIR}/miplib3/p0282.gz
		      ${CBC_INSTANCES_DIR}/miplib3/p0548.gz
		      ${CBC_INSTANCES_DIR}/miplib3/p2756.gz
		      ${CBC_INSTANCES_DIR}/miplib3/pk1.gz
		      ${CBC_INSTANCES_DIR}/miplib3/pp08aCUTS.gz
		      ${CBC_INSTANCES_DIR}/miplib3/pp08a.gz
		      ${CBC_INSTANCES_DIR}/miplib3/qiu.gz
		      ${CBC_INSTANCES_DIR}/miplib3/qnet1.gz
		      ${CBC_INSTANCES_DIR}/miplib3/qnet1_o.gz
		      ${CBC_INSTANCES_DIR}/miplib3/rentacar.gz
		      ${CBC_INSTANCES_DIR}/miplib3/rgn.gz
		      ${CBC_INSTANCES_DIR}/miplib3/rout.gz
		      ${CBC_INSTANCES_DIR}/miplib3/set1ch.gz
		      ${CBC_INSTANCES_DIR}/miplib3/seymour.gz
		      ${CBC_INSTANCES_DIR}/miplib3/stein27.gz
		      ${CBC_INSTANCES_DIR}/miplib3/stein45.gz
		      ${CBC_INSTANCES_DIR}/miplib3/swath.gz
		      ${CBC_INSTANCES_DIR}/miplib3/vpm1.gz
		      ${CBC_INSTANCES_DIR}/miplib3/vpm2.gz)

add_coin_test_list(cbc infeas  cbc_standard TEST_LIST_INFEAS  "MPS;CBC;INFEAS"  30)
add_coin_test_list(cbc big     cbc_standard TEST_LIST_BIG     "MPS;CBC;BIG"     30)
add_coin_test_list(cbc sample  cbc_standard TEST_LIST_SAMPLE  "MPS;CBC;SAMPLE"  30)
add_coin_test_list(cbc netlib  cbc_standard TEST_LIST_NETLIB  "MPS;CBC;NETLIB"  30)
add_coin_test_list(cbc miplib3 cbc_standard TEST_LIST_MIPLIB3 "MPS;CBC;MIPLIB3" 30)

set_tests_properties(miplib3_air04_gz_cbc_standard      PROPERTIES TIMEOUT 500)
set_tests_properties(miplib3_air05_gz_cbc_standard      PROPERTIES TIMEOUT 50)
set_tests_properties(miplib3_arki001_gz_cbc_standard    PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_bell5_gz_cbc_standard      PROPERTIES TIMEOUT 500)
set_tests_properties(miplib3_dano3mip_gz_cbc_standard   PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_danoint_gz_cbc_standard    PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_fast0507_gz_cbc_standard   PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_harp2_gz_cbc_standard      PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare1_gz_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_markshare2_gz_cbc_standard PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas74_gz_cbc_standard      PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mas76_gz_cbc_standard      PROPERTIES TIMEOUT 500)
set_tests_properties(miplib3_misc07_gz_cbc_standard     PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_mkc_gz_cbc_standard        PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_mod011_gz_cbc_standard     PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_noswot_gz_cbc_standard     PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_pk1_gz_cbc_standard        PROPERTIES TIMEOUT 300)
set_tests_properties(miplib3_qiu_gz_cbc_standard        PROPERTIES TIMEOUT 500)
set_tests_properties(miplib3_rout_gz_cbc_standard       PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_set1ch_gz_cbc_standard     PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_seymour_gz_cbc_standard    PROPERTIES TIMEOUT 3000)
set_tests_properties(miplib3_swath_gz_cbc_standard      PROPERTIES TIMEOUT 3000)

set_tests_properties(infeas_greenbea_mps_cbc_standard    PROPERTIES LABELS "MPS;CBC;INFEAS;LONG")
set_tests_properties(big_mkc7_mps_gz_cbc_standard        PROPERTIES LABELS "MPS;CBC;BIG;LONG")
set_tests_properties(netlib_dfl001_mps_gz_cbc_standard   PROPERTIES LABELS "MPS;CBC;NETLIB;WARNING")
set_tests_properties(netlib_standgub_mps_gz_cbc_standard PROPERTIES LABELS "MPS;CBC;NETLIB;WARNING")
set_tests_properties(miplib3_arki001_gz_cbc_standard     PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
set_tests_properties(miplib3_dano3mip_gz_cbc_standard    PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
set_tests_properties(miplib3_danoint_gz_cbc_standard     PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_fast0507_gz_cbc_standard    PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_harp2_gz_cbc_standard       PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_markshare1_gz_cbc_standard  PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_markshare2_gz_cbc_standard  PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_mas74_gz_cbc_standard       PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_mkc_gz_cbc_standard         PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
set_tests_properties(miplib3_noswot_gz_cbc_standard      PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_rout_gz_cbc_standard        PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_set1ch_gz_cbc_standard      PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
set_tests_properties(miplib3_seymour_gz_cbc_standard     PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
set_tests_properties(miplib3_swath_gz_cbc_standard       PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")

if (CBC_BUILD_CBC_GENERIC) 
  add_coin_test_list(cbc-generic infeas  cbc_generic TEST_LIST_INFEAS  "MPS;CBC-GENERIC;INFEAS"  30)
  add_coin_test_list(cbc-generic big     cbc_generic TEST_LIST_BIG     "MPS;CBC-GENERIC;BIG"     30)
  add_coin_test_list(cbc-generic sample  cbc_generic TEST_LIST_SAMPLE  "MPS;CBC-GENERIC;SAMPLE"  30)
  add_coin_test_list(cbc-generic netlib  cbc_generic TEST_LIST_NETLIB  "MPS;CBC-GENERIC;NETLIB"  30)
  add_coin_test_list(cbc-generic miplib3 cbc_generic TEST_LIST_MIPLIB3 "MPS;CBC-GENERIC;MIPLIB3" 30)
  
  set_tests_properties(miplib3_air04_gz_cbc-generic      PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_air05_gz_cbc-generic      PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_arki001_gz_cbc-generic    PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_dano3mip_gz_cbc-generic   PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_danoint_gz_cbc-generic    PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_fast0507_gz_cbc-generic   PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_harp2_gz_cbc-generic      PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare1_gz_cbc-generic PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_markshare2_gz_cbc-generic PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mas74_gz_cbc-generic      PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_misc07_gz_cbc-generic     PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_mkc_gz_cbc-generic        PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_mod011_gz_cbc-generic     PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_noswot_gz_cbc-generic     PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_pk1_gz_cbc-generic        PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_qiu_gz_cbc-generic        PROPERTIES TIMEOUT 300)
  set_tests_properties(miplib3_rout_gz_cbc-generic       PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_set1ch_gz_cbc-generic     PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_seymour_gz_cbc-generic    PROPERTIES TIMEOUT 3000)
  set_tests_properties(miplib3_swath_gz_cbc-generic      PROPERTIES TIMEOUT 3000)
  
  set_tests_properties(infeas_greenbea_mps_cbc-generic    PROPERTIES LABELS "MPS;CBC;INFEAS;LONG")
  set_tests_properties(big_mkc7_mps_gz_cbc-generic        PROPERTIES LABELS "MPS;CBC;BIG;LONG")
  set_tests_properties(netlib_dfl001_mps_gz_cbc-generic   PROPERTIES LABELS "MPS;CBC;NETLIB;WARNING")
  set_tests_properties(netlib_standgub_mps_gz_cbc-generic PROPERTIES LABELS "MPS;CBC;NETLIB;WARNING")
  set_tests_properties(miplib3_arki001_gz_cbc-generic     PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
  set_tests_properties(miplib3_dano3mip_gz_cbc-generic    PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
  set_tests_properties(miplib3_danoint_gz_cbc-generic     PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_fast0507_gz_cbc-generic    PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_harp2_gz_cbc-generic       PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_markshare1_gz_cbc-generic  PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_markshare2_gz_cbc-generic  PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_mas74_gz_cbc-generic       PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_mkc_gz_cbc-generic         PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
  set_tests_properties(miplib3_noswot_gz_cbc-generic      PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_rout_gz_cbc-generic        PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_set1ch_gz_cbc-generic      PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG")
  set_tests_properties(miplib3_seymour_gz_cbc-generic     PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
  set_tests_properties(miplib3_swath_gz_cbc-generic       PROPERTIES LABELS "MPS;CBC;MIPLIB;LONG;WARNING")
endif ()

create_log_analysis(netlib_fit2d_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -68464.293294 1e-6)
create_log_analysis(netlib_forplan_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -664.21873953 1e-6)
create_log_analysis(netlib_ship08s_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1920098.2105 1e-6)
create_log_analysis(netlib_fit1d_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -9146.3780924 1e-6)
create_log_analysis(netlib_brandy_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1518.5098965 1e-6)
create_log_analysis(netlib_scfxm1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 18416.759028 1e-6)
create_log_analysis(netlib_grow22_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -160834336.48 1e-6)
create_log_analysis(netlib_bandm_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -158.62801845 1e-6)
create_log_analysis(netlib_fit1p_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 9146.3780924 1e-6)
create_log_analysis(netlib_standata_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1257.6995000 1e-6)
create_log_analysis(netlib_pilot4_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -2581.1392641 1e-6)
create_log_analysis(netlib_stocfor2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -39024.408538 1e-6)
create_log_analysis(netlib_sctap1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1412.2500000 1e-6)
create_log_analysis(netlib_scrs8_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 904.29998619 1e-6)
create_log_analysis(netlib_sctap2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1724.8071429 1e-6)
create_log_analysis(netlib_pilot87_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 301.71072827 1e-6)
create_log_analysis(netlib_greenbea_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -72462405.908 1e-6)
create_log_analysis(netlib_woodw_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1.3044763331 1e-6)
create_log_analysis(netlib_recipe_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -266.61600000 1e-6)
create_log_analysis(netlib_share1b_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -76589.318579 1e-6)
create_log_analysis(netlib_tuff_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 0.29214776509 1e-6)
create_log_analysis(netlib_share2b_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -415.73224074 1e-6)
create_log_analysis(netlib_bore3d_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1373.0803942 1e-6)
create_log_analysis(netlib_d2q06c_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 122784.23615 1e-6)
create_log_analysis(netlib_sc50b_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -70 1e-6)
create_log_analysis(netlib_pilot_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -557.40430007 1e-6)
create_log_analysis(netlib_bnl1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1977.6292856 1e-6)
create_log_analysis(netlib_ship04l_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1793324.5380 1e-6)
create_log_analysis(netlib_sc105_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -52.202061212 1e-6)
create_log_analysis(netlib_boeing2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -315.01872802 1e-6)
create_log_analysis(netlib_nesm_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 14076073.035 1e-6)
create_log_analysis(netlib_sc205_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -52.202061212 1e-6)
create_log_analysis(netlib_finnis_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 172790.96547 1e-6)
create_log_analysis(netlib_degen2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -1435.1780000 1e-6)
create_log_analysis(netlib_maros-r7_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1497185.1665 1e-6)
create_log_analysis(netlib_ship04s_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1798714.7004 1e-6)
create_log_analysis(netlib_wood1p_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1.4429024116 1e-6)
create_log_analysis(netlib_lotfi_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -25.264706062 1e-6)
create_log_analysis(netlib_gfrd-pnc_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 6902235.9995 1e-6)
create_log_analysis(netlib_etamacro_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -755.71521774 1e-6)
create_log_analysis(netlib_grow7_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -47787811.815 1e-6)
create_log_analysis(netlib_dfl001_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 112664396.05 1e-6)
create_log_analysis(netlib_agg_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -35991767.287 1e-6)
create_log_analysis(netlib_standgub_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1257.6995 1e-6)
create_log_analysis(netlib_ship12l_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1470187.9193 1e-6)
create_log_analysis(netlib_standmps_gz_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1406.0175000 1e-6)
create_log_analysis(netlib_scagr25_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -14753433.061 1e-6)
create_log_analysis(netlib_capri_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 2690.0129138 1e-6)
create_log_analysis(netlib_cycle_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -5.2263930249 1e-6)
create_log_analysis(netlib_greenbeb_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -4302147.6065 1e-6)
create_log_analysis(netlib_agg2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -20239252.356 1e-6)
create_log_analysis(netlib_stair_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -251.26695119 1e-6)
create_log_analysis(netlib_shell_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1208825346.0 1e-6)
create_log_analysis(netlib_sierra_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 15394362.184 1e-6)
create_log_analysis(netlib_afiro_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -464.75314286 1e-6)
create_log_analysis(netlib_scsd1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 8.6666666743 1e-6)
create_log_analysis(netlib_scsd8_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 904.99999993 1e-6)
create_log_analysis(netlib_ship08l_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1909055.2114 1e-6)
create_log_analysis(netlib_25fv47_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 5501.8458883 1e-6)
create_log_analysis(netlib_czprob_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 2185196.6989 1e-6)
create_log_analysis(netlib_adlittle_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 225494.96316 1e-6)
create_log_analysis(netlib_d6cube_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 315.49166667 1e-6)
create_log_analysis(netlib_scorpion_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1878.1248227 1e-6)
create_log_analysis(netlib_sctap3_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1424.0 1e-6)
create_log_analysis(netlib_seba_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 15711.6 1e-6)
create_log_analysis(netlib_modszk1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 320.61972906 1e-6)
create_log_analysis(netlib_pilotnov_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -4497.2761882 1e-6)
create_log_analysis(netlib_beaconfd_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 33592.485807 1e-6)
create_log_analysis(netlib_e226_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -18.751929066 1e-6)
create_log_analysis(netlib_degen3_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -987.29400000 1e-6)
create_log_analysis(netlib_scfxm2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 36660.261565 1e-6)
create_log_analysis(netlib_fffff800_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 555679.61165 1e-6)
create_log_analysis(netlib_kb2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -1749.9001299 1e-6)
create_log_analysis(netlib_ganges_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -109586.36356 1e-6)
create_log_analysis(netlib_stocfor1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -41131.976219 1e-6)
create_log_analysis(netlib_scsd6_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 50.500000078 1e-6)
create_log_analysis(netlib_80bau3b_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 987232.16072 1e-6)
create_log_analysis(netlib_ship12s_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1489236.1344 1e-6)
create_log_analysis(netlib_agg3_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 10312115.935 1e-6)
create_log_analysis(netlib_maros_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -58063.743701 1e-6)
create_log_analysis(netlib_perold_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -9380.7580773 1e-6)
create_log_analysis(netlib_scagr7_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -2331389.2548 1e-6)
create_log_analysis(netlib_scfxm3_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 54901.254550 1e-6)
create_log_analysis(netlib_grow15_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -106870941.29 1e-6)
create_log_analysis(netlib_fit2p_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 68464.293232 1e-6)
create_log_analysis(netlib_boeing1_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -335.21356751 1e-6)
create_log_analysis(netlib_sc50a_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -64.575077059 1e-6)
create_log_analysis(netlib_vtpbase_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 129831.46246 1e-6)
create_log_analysis(netlib_blend_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -30.812149846 1e-6)
create_log_analysis(netlib_bnl2_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1811.2365404 1e-6)
create_log_analysis(netlib_israel_mps_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -896644.82186 1e-6)
create_log_analysis(miplib3_10teams_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 924 1e-6)
create_log_analysis(miplib3_air03_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 340160 1e-6)
create_log_analysis(miplib3_air04_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 56137 1e-6)
create_log_analysis(miplib3_air05_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 26374 1e-6)
create_log_analysis(miplib3_arki001_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 7580813.0459 1e-6)
create_log_analysis(miplib3_bell3a_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 878430.32 1e-6)
create_log_analysis(miplib3_bell5_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 8966406.49 1e-6)
create_log_analysis(miplib3_blend2_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 7.598985 1e-6)
create_log_analysis(miplib3_cap6000_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -2451377 1e-6)
create_log_analysis(miplib3_dano3mip_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 728.1111 1e-6)
create_log_analysis(miplib3_danoint_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 65.67 1e-6)
create_log_analysis(miplib3_dcmulti_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 188182 1e-6)
create_log_analysis(miplib3_dsbmip_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -305.19817501 1e-6)
create_log_analysis(miplib3_egout_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 568.101 1e-6)
create_log_analysis(miplib3_enigma_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 0.0 1e-6)
create_log_analysis(miplib3_fast0507_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 174 1e-6)
create_log_analysis(miplib3_fiber_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 405935.18000 1e-6)
create_log_analysis(miplib3_fixnet6_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 3983 1e-6)
create_log_analysis(miplib3_flugpl_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1201500 1e-6)
create_log_analysis(miplib3_gen_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 112313 1e-6)
create_log_analysis(miplib3_gesa2_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 25779856.372 1e-6)
create_log_analysis(miplib3_gesa2_o_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 25779856.372 1e-6)
create_log_analysis(miplib3_gesa3_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 27991042.648 1e-6)
create_log_analysis(miplib3_gesa3_o_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 27991042.648 1e-6)
create_log_analysis(miplib3_gt2_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 21166.000 1e-6)
create_log_analysis(miplib3_harp2_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -73899798.00 1e-6)
create_log_analysis(miplib3_khb05250_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 106940226 1e-6)
create_log_analysis(miplib3_l152lav_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 4722 1e-6)
create_log_analysis(miplib3_lseu_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1120 1e-6)
create_log_analysis(miplib3_markshare1_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1 1e-6)
create_log_analysis(miplib3_markshare2_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1 1e-6)
create_log_analysis(miplib3_mas74_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 11801.1857 1e-6)
create_log_analysis(miplib3_mas76_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 4005.1 1e-6)
create_log_analysis(miplib3_misc03_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 3360 1e-6)
create_log_analysis(miplib3_misc06_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 12850.8607 1e-6)
create_log_analysis(miplib3_misc07_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 2810 1e-6)
create_log_analysis(miplib3_mitre_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 115155 1e-6)
create_log_analysis(miplib3_mkc_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -553.75 1e-6)
create_log_analysis(miplib3_mod008_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 307 1e-6)
create_log_analysis(miplib3_mod010_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 6548 1e-6)
create_log_analysis(miplib3_mod011_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -54558535 1e-6)
create_log_analysis(miplib3_modglob_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 20740508 1e-6)
create_log_analysis(miplib3_noswot_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -43 1e-6)
create_log_analysis(miplib3_nw04_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 16862 1e-6)
create_log_analysis(miplib3_p0033_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 3089 1e-6)
create_log_analysis(miplib3_p0201_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 7615 1e-6)
create_log_analysis(miplib3_p0282_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 258411 1e-6)
create_log_analysis(miplib3_p0548_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 8691 1e-6)
create_log_analysis(miplib3_p2756_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 3124 1e-6)
create_log_analysis(miplib3_pk1_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 11.0 1e-6)
create_log_analysis(miplib3_pp08aCUTS_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 7350.0 1e-6)
create_log_analysis(miplib3_pp08a_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 7350.0 1e-6)
create_log_analysis(miplib3_qiu_gz_cbc_standard "01_Analysis" "Optimal objective <number>" -132.873137 1e-6)
create_log_analysis(miplib3_qnet1_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 16029.692681 1e-6)
create_log_analysis(miplib3_qnet1_o_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 16029.692681 1e-6)
create_log_analysis(miplib3_rentacar_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 30356761 1e-6)
create_log_analysis(miplib3_rgn_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 82.1999 1e-6)
create_log_analysis(miplib3_rout_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 1077.56 1e-6)
create_log_analysis(miplib3_set1ch_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 54537.75 1e-6)
create_log_analysis(miplib3_seymour_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 423 1e-6)
create_log_analysis(miplib3_stein27_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 18 1e-6)
create_log_analysis(miplib3_stein45_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 30 1e-6)
create_log_analysis(miplib3_swath_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 497.603 1e-6)
create_log_analysis(miplib3_vpm1_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 20 1e-6)
create_log_analysis(miplib3_vpm2_gz_cbc_standard "01_Analysis" "Optimal objective <number>" 13.75 1e-6)

if (CBC_BUILD_CBC_GENERIC) 
  create_log_analysis(netlib_fit2d_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -68464.293294 1e-6)
  create_log_analysis(netlib_forplan_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -664.21873953 1e-6)
  create_log_analysis(netlib_ship08s_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1920098.2105 1e-6)
  create_log_analysis(netlib_fit1d_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -9146.3780924 1e-6)
  create_log_analysis(netlib_brandy_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1518.5098965 1e-6)
  create_log_analysis(netlib_scfxm1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 18416.759028 1e-6)
  create_log_analysis(netlib_grow22_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -160834336.48 1e-6)
  create_log_analysis(netlib_bandm_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -158.62801845 1e-6)
  create_log_analysis(netlib_fit1p_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 9146.3780924 1e-6)
  create_log_analysis(netlib_standata_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1257.6995000 1e-6)
  create_log_analysis(netlib_pilot4_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -2581.1392641 1e-6)
  create_log_analysis(netlib_stocfor2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -39024.408538 1e-6)
  create_log_analysis(netlib_sctap1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1412.2500000 1e-6)
  create_log_analysis(netlib_scrs8_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 904.29998619 1e-6)
  create_log_analysis(netlib_sctap2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1724.8071429 1e-6)
  create_log_analysis(netlib_pilot87_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 301.71072827 1e-6)
  create_log_analysis(netlib_greenbea_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -72462405.908 1e-6)
  create_log_analysis(netlib_woodw_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1.3044763331 1e-6)
  create_log_analysis(netlib_recipe_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -266.61600000 1e-6)
  create_log_analysis(netlib_share1b_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -76589.318579 1e-6)
  create_log_analysis(netlib_tuff_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 0.29214776509 1e-6)
  create_log_analysis(netlib_share2b_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -415.73224074 1e-6)
  create_log_analysis(netlib_bore3d_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1373.0803942 1e-6)
  create_log_analysis(netlib_d2q06c_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 122784.23615 1e-6)
  create_log_analysis(netlib_sc50b_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -70 1e-6)
  create_log_analysis(netlib_pilot_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -557.40430007 1e-6)
  create_log_analysis(netlib_bnl1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1977.6292856 1e-6)
  create_log_analysis(netlib_ship04l_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1793324.5380 1e-6)
  create_log_analysis(netlib_sc105_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -52.202061212 1e-6)
  create_log_analysis(netlib_boeing2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -315.01872802 1e-6)
  create_log_analysis(netlib_nesm_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 14076073.035 1e-6)
  create_log_analysis(netlib_sc205_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -52.202061212 1e-6)
  create_log_analysis(netlib_finnis_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 172790.96547 1e-6)
  create_log_analysis(netlib_degen2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -1435.1780000 1e-6)
  create_log_analysis(netlib_maros-r7_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1497185.1665 1e-6)
  create_log_analysis(netlib_ship04s_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1798714.7004 1e-6)
  create_log_analysis(netlib_wood1p_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1.4429024116 1e-6)
  create_log_analysis(netlib_lotfi_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -25.264706062 1e-6)
  create_log_analysis(netlib_gfrd-pnc_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 6902235.9995 1e-6)
  create_log_analysis(netlib_etamacro_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -755.71521774 1e-6)
  create_log_analysis(netlib_grow7_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -47787811.815 1e-6)
  create_log_analysis(netlib_dfl001_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 112664396.05 1e-6)
  create_log_analysis(netlib_agg_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -35991767.287 1e-6)
  create_log_analysis(netlib_standgub_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1257.6995 1e-6)
  create_log_analysis(netlib_ship12l_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1470187.9193 1e-6)
  create_log_analysis(netlib_standmps_gz_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1406.0175000 1e-6)
  create_log_analysis(netlib_scagr25_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -14753433.061 1e-6)
  create_log_analysis(netlib_capri_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 2690.0129138 1e-6)
  create_log_analysis(netlib_cycle_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -5.2263930249 1e-6)
  create_log_analysis(netlib_greenbeb_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -4302147.6065 1e-6)
  create_log_analysis(netlib_agg2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -20239252.356 1e-6)
  create_log_analysis(netlib_stair_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -251.26695119 1e-6)
  create_log_analysis(netlib_shell_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1208825346.0 1e-6)
  create_log_analysis(netlib_sierra_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 15394362.184 1e-6)
  create_log_analysis(netlib_afiro_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -464.75314286 1e-6)
  create_log_analysis(netlib_scsd1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 8.6666666743 1e-6)
  create_log_analysis(netlib_scsd8_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 904.99999993 1e-6)
  create_log_analysis(netlib_ship08l_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1909055.2114 1e-6)
  create_log_analysis(netlib_25fv47_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 5501.8458883 1e-6)
  create_log_analysis(netlib_czprob_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 2185196.6989 1e-6)
  create_log_analysis(netlib_adlittle_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 225494.96316 1e-6)
  create_log_analysis(netlib_d6cube_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 315.49166667 1e-6)
  create_log_analysis(netlib_scorpion_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1878.1248227 1e-6)
  create_log_analysis(netlib_sctap3_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1424.0 1e-6)
  create_log_analysis(netlib_seba_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 15711.6 1e-6)
  create_log_analysis(netlib_modszk1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 320.61972906 1e-6)
  create_log_analysis(netlib_pilotnov_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -4497.2761882 1e-6)
  create_log_analysis(netlib_beaconfd_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 33592.485807 1e-6)
  create_log_analysis(netlib_e226_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -18.751929066 1e-6)
  create_log_analysis(netlib_degen3_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -987.29400000 1e-6)
  create_log_analysis(netlib_scfxm2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 36660.261565 1e-6)
  create_log_analysis(netlib_fffff800_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 555679.61165 1e-6)
  create_log_analysis(netlib_kb2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -1749.9001299 1e-6)
  create_log_analysis(netlib_ganges_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -109586.36356 1e-6)
  create_log_analysis(netlib_stocfor1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -41131.976219 1e-6)
  create_log_analysis(netlib_scsd6_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 50.500000078 1e-6)
  create_log_analysis(netlib_80bau3b_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 987232.16072 1e-6)
  create_log_analysis(netlib_ship12s_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1489236.1344 1e-6)
  create_log_analysis(netlib_agg3_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 10312115.935 1e-6)
  create_log_analysis(netlib_maros_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -58063.743701 1e-6)
  create_log_analysis(netlib_perold_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -9380.7580773 1e-6)
  create_log_analysis(netlib_scagr7_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -2331389.2548 1e-6)
  create_log_analysis(netlib_scfxm3_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 54901.254550 1e-6)
  create_log_analysis(netlib_grow15_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -106870941.29 1e-6)
  create_log_analysis(netlib_fit2p_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 68464.293232 1e-6)
  create_log_analysis(netlib_boeing1_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -335.21356751 1e-6)
  create_log_analysis(netlib_sc50a_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -64.575077059 1e-6)
  create_log_analysis(netlib_vtpbase_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 129831.46246 1e-6)
  create_log_analysis(netlib_blend_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -30.812149846 1e-6)
  create_log_analysis(netlib_bnl2_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1811.2365404 1e-6)
  create_log_analysis(netlib_israel_mps_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -896644.82186 1e-6)
  create_log_analysis(miplib3_10teams_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 924 1e-6)
  create_log_analysis(miplib3_air03_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 340160 1e-6)
  create_log_analysis(miplib3_air04_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 56137 1e-6)
  create_log_analysis(miplib3_air05_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 26374 1e-6)
  create_log_analysis(miplib3_arki001_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 7580813.0459 1e-6)
  create_log_analysis(miplib3_bell3a_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 878430.32 1e-6)
  create_log_analysis(miplib3_bell5_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 8966406.49 1e-6)
  create_log_analysis(miplib3_blend2_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 7.598985 1e-6)
  create_log_analysis(miplib3_cap6000_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -2451377 1e-6)
  create_log_analysis(miplib3_dano3mip_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 728.1111 1e-6)
  create_log_analysis(miplib3_danoint_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 65.67 1e-6)
  create_log_analysis(miplib3_dcmulti_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 188182 1e-6)
  create_log_analysis(miplib3_dsbmip_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -305.19817501 1e-6)
  create_log_analysis(miplib3_egout_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 568.101 1e-6)
  create_log_analysis(miplib3_enigma_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 0.0 1e-6)
  create_log_analysis(miplib3_fast0507_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 174 1e-6)
  create_log_analysis(miplib3_fiber_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 405935.18000 1e-6)
  create_log_analysis(miplib3_fixnet6_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 3983 1e-6)
  create_log_analysis(miplib3_flugpl_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1201500 1e-6)
  create_log_analysis(miplib3_gen_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 112313 1e-6)
  create_log_analysis(miplib3_gesa2_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 25779856.372 1e-6)
  create_log_analysis(miplib3_gesa2_o_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 25779856.372 1e-6)
  create_log_analysis(miplib3_gesa3_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 27991042.648 1e-6)
  create_log_analysis(miplib3_gesa3_o_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 27991042.648 1e-6)
  create_log_analysis(miplib3_gt2_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 21166.000 1e-6)
  create_log_analysis(miplib3_harp2_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -73899798.00 1e-6)
  create_log_analysis(miplib3_khb05250_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 106940226 1e-6)
  create_log_analysis(miplib3_l152lav_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 4722 1e-6)
  create_log_analysis(miplib3_lseu_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1120 1e-6)
  create_log_analysis(miplib3_markshare1_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1 1e-6)
  create_log_analysis(miplib3_markshare2_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1 1e-6)
  create_log_analysis(miplib3_mas74_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 11801.1857 1e-6)
  create_log_analysis(miplib3_mas76_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 4005.1 1e-6)
  create_log_analysis(miplib3_misc03_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 3360 1e-6)
  create_log_analysis(miplib3_misc06_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 12850.8607 1e-6)
  create_log_analysis(miplib3_misc07_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 2810 1e-6)
  create_log_analysis(miplib3_mitre_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 115155 1e-6)
  create_log_analysis(miplib3_mkc_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -553.75 1e-6)
  create_log_analysis(miplib3_mod008_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 307 1e-6)
  create_log_analysis(miplib3_mod010_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 6548 1e-6)
  create_log_analysis(miplib3_mod011_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -54558535 1e-6)
  create_log_analysis(miplib3_modglob_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 20740508 1e-6)
  create_log_analysis(miplib3_noswot_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -43 1e-6)
  create_log_analysis(miplib3_nw04_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 16862 1e-6)
  create_log_analysis(miplib3_p0033_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 3089 1e-6)
  create_log_analysis(miplib3_p0201_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 7615 1e-6)
  create_log_analysis(miplib3_p0282_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 258411 1e-6)
  create_log_analysis(miplib3_p0548_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 8691 1e-6)
  create_log_analysis(miplib3_p2756_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 3124 1e-6)
  create_log_analysis(miplib3_pk1_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 11.0 1e-6)
  create_log_analysis(miplib3_pp08aCUTS_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 7350.0 1e-6)
  create_log_analysis(miplib3_pp08a_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 7350.0 1e-6)
  create_log_analysis(miplib3_qiu_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" -132.873137 1e-6)
  create_log_analysis(miplib3_qnet1_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 16029.692681 1e-6)
  create_log_analysis(miplib3_qnet1_o_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 16029.692681 1e-6)
  create_log_analysis(miplib3_rentacar_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 30356761 1e-6)
  create_log_analysis(miplib3_rgn_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 82.1999 1e-6)
  create_log_analysis(miplib3_rout_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 1077.56 1e-6)
  create_log_analysis(miplib3_set1ch_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 54537.75 1e-6)
  create_log_analysis(miplib3_seymour_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 423 1e-6)
  create_log_analysis(miplib3_stein27_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 18 1e-6)
  create_log_analysis(miplib3_stein45_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 30 1e-6)
  create_log_analysis(miplib3_swath_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 497.603 1e-6)
  create_log_analysis(miplib3_vpm1_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 20 1e-6)
  create_log_analysis(miplib3_vpm2_gz_cbc-generic_standard "01_Analysis" "Optimal objective <number>" 13.75 1e-6)
endif ()
