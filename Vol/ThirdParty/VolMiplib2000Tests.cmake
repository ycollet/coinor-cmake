include(coin-macros)

#
# Miplib 2000 tests
#

add_coin_vol_test(miplib2000_30n20b8_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/30n20b8.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_30n20b8.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_30n20b8.log)

set_tests_properties(miplib2000_30n20b8_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_30n20b8_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_30n20b8_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_30n20b8.log "Optimal objective <number>" 302 1e-6)
set_tests_properties(miplib2000_30n20b8_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_acc-tight5_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/acc-tight5.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_acc-tight5.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_acc-tight5.log)

set_tests_properties(miplib2000_acc-tight5_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_acc-tight5_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_acc-tight5_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_acc-tight5.log "Optimal objective <number>" 0 1e-6)
set_tests_properties(miplib2000_acc-tight5_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_aflow40b_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/aflow40b.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_aflow40b.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_aflow40b.log)

set_tests_properties(miplib2000_aflow40b_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_aflow40b_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_aflow40b_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_aflow40b.log "Optimal objective <number>" 1168 1e-6)
set_tests_properties(miplib2000_aflow40b_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_air04_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/air04.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_air04.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_air04.log)

set_tests_properties(miplib2000_air04_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_air04_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_air04_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_air04.log "Optimal objective <number>" 56137 1e-6)
set_tests_properties(miplib2000_air04_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_app1-2_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/app1-2.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_app1-2.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_app1-2.log)

set_tests_properties(miplib2000_app1-2_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_app1-2_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_app1-2_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_app1-2.log "Optimal objective <number>" -41 1e-6)
set_tests_properties(miplib2000_app1-2_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

# Infeasible
add_coin_vol_test(miplib2000_ash608gpia-3col_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ash608gpia-3col.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ash608gpia-3col.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ash608gpia-3col.log)

set_tests_properties(miplib2000_ash608gpia-3col_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ash608gpia-3col_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_bab5_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/bab5.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bab5.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bab5.log)

set_tests_properties(miplib2000_bab5_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_bab5_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_bab5_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_bab5.log "Optimal objective <number>" -106411.8401 1e-6)
set_tests_properties(miplib2000_bab5_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_beasleyC3_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/beasleyC3.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_beasleyC3.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_beasleyC3.log)

set_tests_properties(miplib2000_beasleyC3_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_beasleyC3_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_beasleyC3_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_beasleyC3.log "Optimal objective <number>" 754 1e-6)
set_tests_properties(miplib2000_beasleyC3_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_biella1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/biella1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_biella1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_biella1.log)

set_tests_properties(miplib2000_biella1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_biella1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_biella1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_biella1.log "Optimal objective <number>" 3065005.78 1e-6)
set_tests_properties(miplib2000_biella1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_bienst2_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/bienst2.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bienst2.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bienst2.log)

set_tests_properties(miplib2000_bienst2_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_bienst2_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_bienst2_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_bienst2.log "Optimal objective <number>" 54.6 1e-6)
set_tests_properties(miplib2000_bienst2_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_binkar10_1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/binkar10_1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_binkar10_1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_binkar10_1.log)

set_tests_properties(miplib2000_binkar10_1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_binkar10_1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_binkar10_1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_binkar10_1.log "Optimal objective <number>" 6742.200024 1e-6)
set_tests_properties(miplib2000_binkar10_1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_bley_xl1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/bley_xl1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bley_xl1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bley_xl1.log)

set_tests_properties(miplib2000_bley_xl1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_bley_xl1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_bley_xl1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_bley_xl1.log "Optimal objective <number>" 190 1e-6)
set_tests_properties(miplib2000_bley_xl1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_bnatt350_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/bnatt350.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bnatt350.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_bnatt350.log)

set_tests_properties(miplib2000_bnatt350_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_bnatt350_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_bnatt350_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_bnatt350.log "Optimal objective <number>" 0 1e-6)
set_tests_properties(miplib2000_bnatt350_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_core2536-691_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/core2536-691.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_core2536-691.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_core2536-691.log)

set_tests_properties(miplib2000_core2536-691_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_core2536-691_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_core2536-691_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_core2536-691.log "Optimal objective <number>" 689 1e-6)
set_tests_properties(miplib2000_core2536-691_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_cov1075_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/cov1075.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_cov1075.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_cov1075.log)

set_tests_properties(miplib2000_cov1075_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_cov1075_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_cov1075_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_cov1075.log "Optimal objective <number>" 20 1e-6)
set_tests_properties(miplib2000_cov1075_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_csched010_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/csched010.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_csched010.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_csched010.log)

set_tests_properties(miplib2000_csched010_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_csched010_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_csched010_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_csched010.log "Optimal objective <number>" 408 1e-6)
set_tests_properties(miplib2000_csched010_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_danoint_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/danoint.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_danoint.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_danoint.log)

set_tests_properties(miplib2000_danoint_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_danoint_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_danoint_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_danoint.log "Optimal objective <number>" 65.666667 1e-6)
set_tests_properties(miplib2000_danoint_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_dfn-gwin-UUM_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/dfn-gwin-UUM.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_dfn-gwin-UUM.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_dfn-gwin-UUM.log)

set_tests_properties(miplib2000_dfn-gwin-UUM_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_dfn-gwin-UUM_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_dfn-gwin-UUM_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_dfn-gwin-UUM.log "Optimal objective <number>" 38752 1e-6)
set_tests_properties(miplib2000_dfn-gwin-UUM_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_eil33-2_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/eil33-2.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_eil33-2.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_eil33-2.log)

set_tests_properties(miplib2000_eil33-2_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_eil33-2_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_eil33-2_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_eil33-2.log "Optimal objective <number>" 934.007916 1e-6)
set_tests_properties(miplib2000_eil33-2_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_eilB101_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/eilB101.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_eilB101.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_eilB101.log)

set_tests_properties(miplib2000_eilB101_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_eilB101_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_eilB101_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_eilB101.log "Optimal objective <number>" 1216.920174 1e-6)
set_tests_properties(miplib2000_eilB101_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_enlight13_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/enlight13.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_enlight13.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_enlight13.log)

set_tests_properties(miplib2000_enlight13_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_enlight13_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_enlight13_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_enlight13.log "Optimal objective <number>" 71 1e-6)
set_tests_properties(miplib2000_enlight13_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

# Infeasible
add_coin_vol_test(miplib2000_enlight14_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/enlight14.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_enlight14.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_enlight14.log)

set_tests_properties(miplib2000_enlight14_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_enlight14_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_ex9_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ex9.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ex9.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ex9.log)

set_tests_properties(miplib2000_ex9_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ex9_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_ex9_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_ex9.log "Optimal objective <number>" 81 1e-6)
set_tests_properties(miplib2000_ex9_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_glass4_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/glass4.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_glass4.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_glass4.log)

set_tests_properties(miplib2000_glass4_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_glass4_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_glass4_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_glass4.log "Optimal objective <number>" 1200012600 1e-6)
set_tests_properties(miplib2000_glass4_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_gmu-35-40_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/gmu-35-40.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_gmu-35-40.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_gmu-35-40.log)

set_tests_properties(miplib2000_gmu-35-40_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_gmu-35-40_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_gmu-35-40_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_gmu-35-40.log "Optimal objective <number>" -2406733.3688 1e-6)
set_tests_properties(miplib2000_gmu-35-40_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_iis-100-0-cov_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/iis-100-0-cov.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-100-0-cov.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-100-0-cov.log)

set_tests_properties(miplib2000_iis-100-0-cov_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_iis-100-0-cov_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_iis-100-0-cov_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-100-0-cov.log "Optimal objective <number>" 29 1e-6)
set_tests_properties(miplib2000_iis-100-0-cov_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_iis-bupa-cov_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/iis-bupa-cov.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-bupa-cov.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-bupa-cov.log)

set_tests_properties(miplib2000_iis-bupa-cov_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_iis-bupa-cov_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_iis-bupa-cov_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-bupa-cov.log "Optimal objective <number>" 36 1e-6)
set_tests_properties(miplib2000_iis-bupa-cov_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_iis-pima-cov_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/iis-pima-cov.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-pima-cov.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-pima-cov.log)

set_tests_properties(miplib2000_iis-pima-cov_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_iis-pima-cov_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_iis-pima-cov_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_iis-pima-cov.log "Optimal objective <number>" 33 1e-6)
set_tests_properties(miplib2000_iis-pima-cov_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_lectsched-4-obj_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/lectsched-4-obj.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_lectsched-4-obj.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_lectsched-4-obj.log)

set_tests_properties(miplib2000_lectsched-4-obj_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_lectsched-4-obj_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_lectsched-4-obj_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_lectsched-4-obj.log "Optimal objective <number>" 4 1e-6)
set_tests_properties(miplib2000_lectsched-4-obj_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_m100n500k4r1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/m100n500k4r1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_m100n500k4r1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_m100n500k4r1.log)

set_tests_properties(miplib2000_m100n500k4r1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_m100n500k4r1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_m100n500k4r1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_m100n500k4r1.log "Optimal objective <number>" -25 1e-6)
set_tests_properties(miplib2000_m100n500k4r1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_macrophage_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/macrophage.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_macrophage.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_macrophage.log)

set_tests_properties(miplib2000_macrophage_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_macrophage_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_macrophage_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_macrophage.log "Optimal objective <number>" 374 1e-6)
set_tests_properties(miplib2000_macrophage_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_map18_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/map18.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_map18.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_map18.log)

set_tests_properties(miplib2000_map18_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_map18_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_map18_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_map18.log "Optimal objective <number>" -847 1e-6)
set_tests_properties(miplib2000_map18_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_map20_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/map20.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_map20.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_map20.log)

set_tests_properties(miplib2000_map20_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_map20_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_map20_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_map20.log "Optimal objective <number>" -922 1e-6)
set_tests_properties(miplib2000_map20_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_mcsched_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/mcsched.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mcsched.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mcsched.log)

set_tests_properties(miplib2000_mcsched_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_mcsched_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_mcsched_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_mcsched.log "Optimal objective <number>" 211913 1e-6)
set_tests_properties(miplib2000_mcsched_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_mik-250-1-100-1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/mik-250-1-100-1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mik-250-1-100-1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mik-250-1-100-1.log)

set_tests_properties(miplib2000_mik-250-1-100-1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_mik-250-1-100-1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_mik-250-1-100-1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_mik-250-1-100-1.log "Optimal objective <number>" -66729 1e-6)
set_tests_properties(miplib2000_mik-250-1-100-1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_mine-166-5_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/mine-166-5.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mine-166-5.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mine-166-5.log)

set_tests_properties(miplib2000_mine-166-5_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_mine-166-5_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_mine-166-5_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_mine-166-5.log "Optimal objective <number>" -566395707.870830059 1e-6)
set_tests_properties(miplib2000_mine-166-5_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_mine-90-10_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/mine-90-10.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mine-90-10.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mine-90-10.log)

set_tests_properties(miplib2000_mine-90-10_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_mine-90-10_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_mine-90-10_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_mine-90-10.log "Optimal objective <number>" -784302337.633172989 1e-6)
set_tests_properties(miplib2000_mine-90-10_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_msc98-ip_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/msc98-ip.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_msc98-ip.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_msc98-ip.log)

set_tests_properties(miplib2000_msc98-ip_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_msc98-ip_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_msc98-ip_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_msc98-ip.log "Optimal objective <number>" 19839497.0058740 1e-6)
set_tests_properties(miplib2000_msc98-ip_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_mspp16_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/mspp16.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mspp16.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mspp16.log)

set_tests_properties(miplib2000_mspp16_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_mspp16_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_mspp16_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_mspp16.log "Optimal objective <number>" 363 1e-6)
set_tests_properties(miplib2000_mspp16_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_mzzv11_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/mzzv11.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mzzv11.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_mzzv11.log)

set_tests_properties(miplib2000_mzzv11_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_mzzv11_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_mzzv11_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_mzzv11.log "Optimal objective <number>" -21718 1e-6)
set_tests_properties(miplib2000_mzzv11_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_n3div36_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/n3div36.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_n3div36.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_n3div36.log)

set_tests_properties(miplib2000_n3div36_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_n3div36_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_n3div36_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_n3div36.log "Optimal objective <number>" 131000 1e-6)
set_tests_properties(miplib2000_n3div36_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_n3seq24_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/n3seq24.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_n3seq24.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_n3seq24.log)

set_tests_properties(miplib2000_n3seq24_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_n3seq24_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_n3seq24_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_n3seq24.log "Optimal objective <number>" 52200 1e-6)
set_tests_properties(miplib2000_n3seq24_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_n4-3_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/n4-3.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_n4-3.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_n4-3.log)

set_tests_properties(miplib2000_n4-3_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_n4-3_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_n4-3_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_n4-3.log "Optimal objective <number>" 8993 1e-6)
set_tests_properties(miplib2000_n4-3_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-1109824_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-1109824.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1109824.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1109824.log)

set_tests_properties(miplib2000_neos-1109824_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-1109824_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-1109824_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1109824.log "Optimal objective <number>" 378 1e-6)
set_tests_properties(miplib2000_neos-1109824_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-1337307_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-1337307.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1337307.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1337307.log)

set_tests_properties(miplib2000_neos-1337307_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-1337307_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-1337307_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1337307.log "Optimal objective <number>" -202319 1e-6)
set_tests_properties(miplib2000_neos-1337307_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-1396125_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-1396125.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1396125.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1396125.log)

set_tests_properties(miplib2000_neos-1396125_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-1396125_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-1396125_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1396125.log "Optimal objective <number>" 3000.045337 1e-6)
set_tests_properties(miplib2000_neos-1396125_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos13_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos13.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos13.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos13.log)

set_tests_properties(miplib2000_neos13_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos13_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos13_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos13.log "Optimal objective <number>" -95.474807 1e-6)
set_tests_properties(miplib2000_neos13_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-1601936_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-1601936.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1601936.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1601936.log)

set_tests_properties(miplib2000_neos-1601936_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-1601936_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-1601936_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-1601936.log "Optimal objective <number>" 3 1e-6)
set_tests_properties(miplib2000_neos-1601936_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos18_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos18.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos18.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos18.log)

set_tests_properties(miplib2000_neos18_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos18_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos18_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos18.log "Optimal objective <number>" 18 1e-6)
set_tests_properties(miplib2000_neos18_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-476283_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-476283.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-476283.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-476283.log)

set_tests_properties(miplib2000_neos-476283_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-476283_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-476283_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-476283.log "Optimal objective <number>" 406.363207 1e-6)
set_tests_properties(miplib2000_neos-476283_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-686190_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-686190.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-686190.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-686190.log)

set_tests_properties(miplib2000_neos-686190_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-686190_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-686190_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-686190.log "Optimal objective <number>" 6730 1e-6)
set_tests_properties(miplib2000_neos-686190_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-849702_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-849702.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-849702.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-849702.log)

set_tests_properties(miplib2000_neos-849702_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-849702_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-849702_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-849702.log "Optimal objective <number>" 0 1e-6)
set_tests_properties(miplib2000_neos-849702_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-916792_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-916792.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-916792.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-916792.log)

set_tests_properties(miplib2000_neos-916792_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-916792_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-916792_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-916792.log "Optimal objective <number>" 31.870398 1e-6)
set_tests_properties(miplib2000_neos-916792_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_neos-934278_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/neos-934278.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-934278.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-934278.log)

set_tests_properties(miplib2000_neos-934278_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_neos-934278_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_neos-934278_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_neos-934278.log "Optimal objective <number>" 260 1e-6)
set_tests_properties(miplib2000_neos-934278_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_net12_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/net12.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_net12.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_net12.log)

set_tests_properties(miplib2000_net12_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_net12_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_net12_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_net12.log "Optimal objective <number>" 214 1e-6)
set_tests_properties(miplib2000_net12_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_netdiversion_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/netdiversion.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_netdiversion.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_netdiversion.log)

set_tests_properties(miplib2000_netdiversion_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_netdiversion_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_netdiversion_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_netdiversion.log "Optimal objective <number>" 242 1e-6)
set_tests_properties(miplib2000_netdiversion_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_newdano_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/newdano.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_newdano.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_newdano.log)

set_tests_properties(miplib2000_newdano_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_newdano_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_newdano_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_newdano.log "Optimal objective <number>" 65.666667 1e-6)
set_tests_properties(miplib2000_newdano_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_noswot_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/noswot.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_noswot.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_noswot.log)

set_tests_properties(miplib2000_noswot_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_noswot_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_noswot_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_noswot.log "Optimal objective <number>" -41 1e-6)
set_tests_properties(miplib2000_noswot_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_ns1208400_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ns1208400.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1208400.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1208400.log)

set_tests_properties(miplib2000_ns1208400_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ns1208400_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_ns1208400_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1208400.log "Optimal objective <number>" 2 1e-6)
set_tests_properties(miplib2000_ns1208400_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_ns1688347_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ns1688347.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1688347.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1688347.log)

set_tests_properties(miplib2000_ns1688347_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ns1688347_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_ns1688347_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1688347.log "Optimal objective <number>" 27 1e-6)
set_tests_properties(miplib2000_ns1688347_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_ns1758913_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ns1758913.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1758913.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1758913.log)

set_tests_properties(miplib2000_ns1758913_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ns1758913_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_ns1758913_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1758913.log "Optimal objective <number>" -1454.671755 1e-6)
set_tests_properties(miplib2000_ns1758913_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

# Infeasible
add_coin_vol_test(miplib2000_ns1766074_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ns1766074.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1766074.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1766074.log)

set_tests_properties(miplib2000_ns1766074_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ns1766074_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_ns1830653_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ns1830653.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1830653.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1830653.log)

set_tests_properties(miplib2000_ns1830653_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ns1830653_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_ns1830653_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_ns1830653.log "Optimal objective <number>" 20622 1e-6)
set_tests_properties(miplib2000_ns1830653_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_opm2-z7-s2_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/opm2-z7-s2.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_opm2-z7-s2.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_opm2-z7-s2.log)

set_tests_properties(miplib2000_opm2-z7-s2_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_opm2-z7-s2_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_opm2-z7-s2_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_opm2-z7-s2.log "Optimal objective <number>" -10280 1e-6)
set_tests_properties(miplib2000_opm2-z7-s2_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_pg5_34_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/pg5_34.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_pg5_34.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_pg5_34.log)

set_tests_properties(miplib2000_pg5_34_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_pg5_34_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_pg5_34_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_pg5_34.log "Optimal objective <number>" -14339.353447 1e-6)
set_tests_properties(miplib2000_pg5_34_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_pigeon-10_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/pigeon-10.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_pigeon-10.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_pigeon-10.log)

set_tests_properties(miplib2000_pigeon-10_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_pigeon-10_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_pigeon-10_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_pigeon-10.log "Optimal objective <number>" -9000 1e-6)
set_tests_properties(miplib2000_pigeon-10_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_pw-myciel4_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/pw-myciel4.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_pw-myciel4.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_pw-myciel4.log)

set_tests_properties(miplib2000_pw-myciel4_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_pw-myciel4_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_pw-myciel4_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_pw-myciel4.log "Optimal objective <number>" 10 1e-6)
set_tests_properties(miplib2000_pw-myciel4_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_qiu_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/qiu.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_qiu.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_qiu.log)

set_tests_properties(miplib2000_qiu_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_qiu_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_qiu_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_qiu.log "Optimal objective <number>" -132.873137 1e-6)
set_tests_properties(miplib2000_qiu_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_rail507_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/rail507.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rail507.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rail507.log)

set_tests_properties(miplib2000_rail507_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_rail507_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_rail507_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_rail507.log "Optimal objective <number>" 174 1e-6)
set_tests_properties(miplib2000_rail507_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_ran16x16_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/ran16x16.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ran16x16.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_ran16x16.log)

set_tests_properties(miplib2000_ran16x16_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_ran16x16_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_ran16x16_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_ran16x16.log "Optimal objective <number>" 3823 1e-6)
set_tests_properties(miplib2000_ran16x16_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_reblock67_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/reblock67.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_reblock67.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_reblock67.log)

set_tests_properties(miplib2000_reblock67_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_reblock67_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_reblock67_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_reblock67.log "Optimal objective <number>" -34630648.438331999 1e-6)
set_tests_properties(miplib2000_reblock67_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_rmatr100-p10_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/rmatr100-p10.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rmatr100-p10.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rmatr100-p10.log)

set_tests_properties(miplib2000_rmatr100-p10_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_rmatr100-p10_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_rmatr100-p10_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_rmatr100-p10.log "Optimal objective <number>" 423 1e-6)
set_tests_properties(miplib2000_rmatr100-p10_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_rmatr100-p5_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/rmatr100-p5.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rmatr100-p5.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rmatr100-p5.log)

set_tests_properties(miplib2000_rmatr100-p5_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_rmatr100-p5_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_rmatr100-p5_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_rmatr100-p5.log "Optimal objective <number>" 976 1e-6)
set_tests_properties(miplib2000_rmatr100-p5_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_rmine6_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/rmine6.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rmine6.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rmine6.log)

set_tests_properties(miplib2000_rmine6_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_rmine6_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_rmine6_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_rmine6.log "Optimal objective <number>" -457.186140000 1e-6)
set_tests_properties(miplib2000_rmine6_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_rocII-4-11_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/rocII-4-11.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rocII-4-11.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rocII-4-11.log)

set_tests_properties(miplib2000_rocII-4-11_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_rocII-4-11_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_rocII-4-11_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_rocII-4-11.log "Optimal objective <number>" -6.65275566 1e-6)
set_tests_properties(miplib2000_rocII-4-11_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_rococoC10-001000_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/rococoC10-001000.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rococoC10-001000.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_rococoC10-001000.log)

set_tests_properties(miplib2000_rococoC10-001000_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_rococoC10-001000_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_rococoC10-001000_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_rococoC10-001000.log "Optimal objective <number>" 11460 1e-6)
set_tests_properties(miplib2000_rococoC10-001000_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_roll3000_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/roll3000.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_roll3000.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_roll3000.log)

set_tests_properties(miplib2000_roll3000_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_roll3000_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_roll3000_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_roll3000.log "Optimal objective <number>" 12890 1e-6)
set_tests_properties(miplib2000_roll3000_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_satellites1-25_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/satellites1-25.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_satellites1-25.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_satellites1-25.log)

set_tests_properties(miplib2000_satellites1-25_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_satellites1-25_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_satellites1-25_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_satellites1-25.log "Optimal objective <number>" -5 1e-6)
set_tests_properties(miplib2000_satellites1-25_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_sp98ic_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/sp98ic.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_sp98ic.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_sp98ic.log)

set_tests_properties(miplib2000_sp98ic_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_sp98ic_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_sp98ic_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_sp98ic.log "Optimal objective <number>" 449144758.399999976 1e-6)
set_tests_properties(miplib2000_sp98ic_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_sp98ir_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/sp98ir.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_sp98ir.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_sp98ir.log)

set_tests_properties(miplib2000_sp98ir_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_sp98ir_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_sp98ir_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_sp98ir.log "Optimal objective <number>" 219676790.400000006 1e-6)
set_tests_properties(miplib2000_sp98ir_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_tanglegram1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/tanglegram1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_tanglegram1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_tanglegram1.log)

set_tests_properties(miplib2000_tanglegram1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_tanglegram1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_tanglegram1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_tanglegram1.log "Optimal objective <number>" 5182 1e-6)
set_tests_properties(miplib2000_tanglegram1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_tanglegram2_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/tanglegram2.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_tanglegram2.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_tanglegram2.log)

set_tests_properties(miplib2000_tanglegram2_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_tanglegram2_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_tanglegram2_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_tanglegram2.log "Optimal objective <number>" 443 1e-6)
set_tests_properties(miplib2000_tanglegram2_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_timtab1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/timtab1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_timtab1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_timtab1.log)

set_tests_properties(miplib2000_timtab1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_timtab1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_timtab1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_timtab1.log "Optimal objective <number>" 764772 1e-6)
set_tests_properties(miplib2000_timtab1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_triptim1_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/triptim1.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_triptim1.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_triptim1.log)

set_tests_properties(miplib2000_triptim1_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_triptim1_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_triptim1_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_triptim1.log "Optimal objective <number>" 22.8681 1e-6)
set_tests_properties(miplib2000_triptim1_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_unitcal_7_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/unitcal_7.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_unitcal_7.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_unitcal_7.log)

set_tests_properties(miplib2000_unitcal_7_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_unitcal_7_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_unitcal_7_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_unitcal_7.log "Optimal objective <number>" 19635558.244019002 1e-6)
set_tests_properties(miplib2000_unitcal_7_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_vpphard_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/vpphard.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_vpphard.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_vpphard.log)

set_tests_properties(miplib2000_vpphard_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_vpphard_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_vpphard_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_vpphard.log "Optimal objective <number>" 5 1e-6)
set_tests_properties(miplib2000_vpphard_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

add_coin_vol_test(miplib2000_zib54-UUE_mps_vol_standard osi_vol
                  ${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010/zib54-UUE.mps.gz
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_zib54-UUE.out
                  ${CMAKE_BINARY_DIR}/tests/miplib2000_zib54-UUE.log)

set_tests_properties(miplib2000_zib54-UUE_mps_vol_standard PROPERTIES TIMEOUT 300)
set_tests_properties(miplib2000_zib54-UUE_mps_vol_standard PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")

create_log_analysis(miplib2000_zib54-UUE_mps_vol_standard "01_Analysis" ${CMAKE_BINARY_DIR}/tests/miplib2000_zib54-UUE.log "Optimal objective <number>" 10334015.82 1e-6)
set_tests_properties(miplib2000_zib54-UUE_mps_vol_standard_01_Analysis PROPERTIES LABELS "MPS;VOL;MIPLIB2000;BENCHMARK")
