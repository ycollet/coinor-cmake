include(coin-macros)

set(VOL_INSTANCES_DIR "${EP_InstallDir}/MIPLIB2000/src/EP_MIPLIB2000/instances/miplib2010")

set(TEST_LIST_MIP2000 ${VOL_INSTANCES_DIR}/30n20b8.mps.gz
                      ${VOL_INSTANCES_DIR}/acc-tight5.mps.gz
		      ${VOL_INSTANCES_DIR}/aflow40b.mps.gz
		      ${VOL_INSTANCES_DIR}/air04.mps.gz
		      ${VOL_INSTANCES_DIR}/app1-2.mps.gz
		      ${VOL_INSTANCES_DIR}/ash608gpia-3col.mps.gz
		      ${VOL_INSTANCES_DIR}/bab5.mps.gz
		      ${VOL_INSTANCES_DIR}/beasleyC3.mps.gz
		      ${VOL_INSTANCES_DIR}/biella1.mps.gz
		      ${VOL_INSTANCES_DIR}/bienst2.mps.gz
		      ${VOL_INSTANCES_DIR}/binkar10_1.mps.gz
		      ${VOL_INSTANCES_DIR}/bley_xl1.mps.gz
		      ${VOL_INSTANCES_DIR}/bnatt350.mps.gz
		      ${VOL_INSTANCES_DIR}/core2536-691.mps.gz
		      ${VOL_INSTANCES_DIR}/cov1075.mps.gz
		      ${VOL_INSTANCES_DIR}/csched010.mps.gz
		      ${VOL_INSTANCES_DIR}/danoint.mps.gz
		      ${VOL_INSTANCES_DIR}/dfn-gwin-UUM.mps.gz
		      ${VOL_INSTANCES_DIR}/eil33-2.mps.gz
		      ${VOL_INSTANCES_DIR}/eilB101.mps.gz
		      ${VOL_INSTANCES_DIR}/enlight13.mps.gz
		      ${VOL_INSTANCES_DIR}/enlight14.mps.gz
		      ${VOL_INSTANCES_DIR}/ex9.mps.gz
		      ${VOL_INSTANCES_DIR}/glass4.mps.gz
		      ${VOL_INSTANCES_DIR}/gmu-35-40.mps.gz
		      ${VOL_INSTANCES_DIR}/iis-100-0-cov.mps.gz
		      ${VOL_INSTANCES_DIR}/iis-bupa-cov.mps.gz
		      ${VOL_INSTANCES_DIR}/iis-pima-cov.mps.gz
		      ${VOL_INSTANCES_DIR}/lectsched-4-obj.mps.gz
		      ${VOL_INSTANCES_DIR}/m100n500k4r1.mps.gz
		      ${VOL_INSTANCES_DIR}/macrophage.mps.gz
		      ${VOL_INSTANCES_DIR}/map18.mps.gz
		      ${VOL_INSTANCES_DIR}/map20.mps.gz
		      ${VOL_INSTANCES_DIR}/mcsched.mps.gz
		      ${VOL_INSTANCES_DIR}/mik-250-1-100-1.mps.gz
		      ${VOL_INSTANCES_DIR}/mine-166-5.mps.gz
		      ${VOL_INSTANCES_DIR}/mine-90-10.mps.gz
		      ${VOL_INSTANCES_DIR}/msc98-ip.mps.gz
		      ${VOL_INSTANCES_DIR}/mspp16.mps.gz
		      ${VOL_INSTANCES_DIR}/mzzv11.mps.gz
		      ${VOL_INSTANCES_DIR}/n3div36.mps.gz
		      ${VOL_INSTANCES_DIR}/n3seq24.mps.gz
		      ${VOL_INSTANCES_DIR}/n4-3.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-1109824.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-1337307.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-1396125.mps.gz
		      ${VOL_INSTANCES_DIR}/neos13.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-1601936.mps.gz
		      ${VOL_INSTANCES_DIR}/neos18.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-476283.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-686190.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-849702.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-916792.mps.gz
		      ${VOL_INSTANCES_DIR}/neos-934278.mps.gz
		      ${VOL_INSTANCES_DIR}/net12.mps.gz
		      ${VOL_INSTANCES_DIR}/netdiversion.mps.gz
		      ${VOL_INSTANCES_DIR}/newdano.mps.gz
		      ${VOL_INSTANCES_DIR}/noswot.mps.gz
		      ${VOL_INSTANCES_DIR}/ns1208400.mps.gz
		      ${VOL_INSTANCES_DIR}/ns1688347.mps.gz
		      ${VOL_INSTANCES_DIR}/ns1758913.mps.gz
		      ${VOL_INSTANCES_DIR}/ns1766074.mps.gz
		      ${VOL_INSTANCES_DIR}/ns1830653.mps.gz
		      ${VOL_INSTANCES_DIR}/opm2-z7-s2.mps.gz
		      ${VOL_INSTANCES_DIR}/pg5_34.mps.gz
		      ${VOL_INSTANCES_DIR}/pigeon-10.mps.gz
		      ${VOL_INSTANCES_DIR}/pw-myciel4.mps.gz
		      ${VOL_INSTANCES_DIR}/qiu.mps.gz
		      ${VOL_INSTANCES_DIR}/rail507.mps.gz
		      ${VOL_INSTANCES_DIR}/ran16x16.mps.gz
		      ${VOL_INSTANCES_DIR}/reblock67.mps.gz
		      ${VOL_INSTANCES_DIR}/rmatr100-p10.mps.gz
		      ${VOL_INSTANCES_DIR}/rmatr100-p5.mps.gz
		      ${VOL_INSTANCES_DIR}/rmine6.mps.gz
		      ${VOL_INSTANCES_DIR}/rocII-4-11.mps.gz
		      ${VOL_INSTANCES_DIR}/rococoC10-001000.mps.gz
		      ${VOL_INSTANCES_DIR}/roll3000.mps.gz
		      ${VOL_INSTANCES_DIR}/satellites1-25.mps.gz
		      ${VOL_INSTANCES_DIR}/sp98ic.mps.gz
		      ${VOL_INSTANCES_DIR}/sp98ir.mps.gz
		      ${VOL_INSTANCES_DIR}/tanglegram1.mps.gz
		      ${VOL_INSTANCES_DIR}/tanglegram2.mps.gz
		      ${VOL_INSTANCES_DIR}/timtab1.mps.gz
		      ${VOL_INSTANCES_DIR}/triptim1.mps.gz
		      ${VOL_INSTANCES_DIR}/unitcal_7.mps.gz
		      ${VOL_INSTANCES_DIR}/vpphard.mps.gz
		      ${VOL_INSTANCES_DIR}/zib54-UUE.mps.gz)

add_coin_vol_test_list(miplib2000 vol TEST_LIST_MIPLIB2000 "MPS;VOL;MIPLIB2000;BENCHMARK" 300)

create_log_analysis(miplib2000_30n20b8_mps_gz_vol "01_Analysis" "Optimal objective <number>" 302 1e-6)
create_log_analysis(miplib2000_acc-tight5_mps_gz_vol "01_Analysis" "Optimal objective <number>" 0 1e-6)
create_log_analysis(miplib2000_aflow40b_mps_gz_vol "01_Analysis" "Optimal objective <number>" 1168 1e-6)
create_log_analysis(miplib2000_air04_mps_gz_vol "01_Analysis" "Optimal objective <number>" 56137 1e-6)
create_log_analysis(miplib2000_app1-2_mps_gz_vol "01_Analysis" "Optimal objective <number>" -41 1e-6)
create_log_analysis(miplib2000_bab5_mps_gz_vol "01_Analysis" "Optimal objective <number>" -106411.8401 1e-6)
create_log_analysis(miplib2000_beasleyC3_mps_gz_vol "01_Analysis" "Optimal objective <number>" 754 1e-6)
create_log_analysis(miplib2000_biella1_mps_gz_vol "01_Analysis" "Optimal objective <number>" 3065005.78 1e-6)
create_log_analysis(miplib2000_bienst2_mps_gz_vol "01_Analysis" "Optimal objective <number>" 54.6 1e-6)
create_log_analysis(miplib2000_binkar10_1_mps_gz_vol "01_Analysis" "Optimal objective <number>" 6742.200024 1e-6)
create_log_analysis(miplib2000_bley_xl1_mps_gz_vol "01_Analysis" "Optimal objective <number>" 190 1e-6)
create_log_analysis(miplib2000_bnatt350_mps_gz_vol "01_Analysis" "Optimal objective <number>" 0 1e-6)
create_log_analysis(miplib2000_core2536-691_mps_gz_vol "01_Analysis" "Optimal objective <number>" 689 1e-6)
create_log_analysis(miplib2000_cov1075_mps_gz_vol "01_Analysis" "Optimal objective <number>" 20 1e-6)
create_log_analysis(miplib2000_csched010_mps_gz_vol "01_Analysis" "Optimal objective <number>" 408 1e-6)
create_log_analysis(miplib2000_danoint_mps_gz_vol "01_Analysis" "Optimal objective <number>" 65.666667 1e-6)
create_log_analysis(miplib2000_dfn-gwin-UUM_mps_gz_vol "01_Analysis" "Optimal objective <number>" 38752 1e-6)
create_log_analysis(miplib2000_eil33-2_mps_gz_vol "01_Analysis" "Optimal objective <number>" 934.007916 1e-6)
create_log_analysis(miplib2000_eilB101_mps_gz_vol "01_Analysis" "Optimal objective <number>" 1216.920174 1e-6)
create_log_analysis(miplib2000_enlight13_mps_gz_vol "01_Analysis" "Optimal objective <number>" 71 1e-6)
create_log_analysis(miplib2000_ex9_mps_gz_vol "01_Analysis" "Optimal objective <number>" 81 1e-6)
create_log_analysis(miplib2000_glass4_mps_gz_vol "01_Analysis" "Optimal objective <number>" 1200012600 1e-6)
create_log_analysis(miplib2000_gmu-35-40_mps_gz_vol "01_Analysis" "Optimal objective <number>" -2406733.3688 1e-6)
create_log_analysis(miplib2000_iis-100-0-cov_mps_gz_vol "01_Analysis" "Optimal objective <number>" 29 1e-6)
create_log_analysis(miplib2000_iis-bupa-cov_mps_gz_vol "01_Analysis" "Optimal objective <number>" 36 1e-6)
create_log_analysis(miplib2000_iis-pima-cov_mps_gz_vol "01_Analysis" "Optimal objective <number>" 33 1e-6)
create_log_analysis(miplib2000_lectsched-4-obj_mps_gz_vol "01_Analysis" "Optimal objective <number>" 4 1e-6)
create_log_analysis(miplib2000_m100n500k4r1_mps_gz_vol "01_Analysis" "Optimal objective <number>" -25 1e-6)
create_log_analysis(miplib2000_macrophage_mps_gz_vol "01_Analysis" "Optimal objective <number>" 374 1e-6)
create_log_analysis(miplib2000_map18_mps_gz_vol "01_Analysis" "Optimal objective <number>" -847 1e-6)
create_log_analysis(miplib2000_map20_mps_gz_vol "01_Analysis" "Optimal objective <number>" -922 1e-6)
create_log_analysis(miplib2000_mcsched_mps_gz_vol "01_Analysis" "Optimal objective <number>" 211913 1e-6)
create_log_analysis(miplib2000_mik-250-1-100-1_mps_gz_vol "01_Analysis" "Optimal objective <number>" -66729 1e-6)
create_log_analysis(miplib2000_mine-166-5_mps_gz_vol "01_Analysis" "Optimal objective <number>" -566395707.870830059 1e-6)
create_log_analysis(miplib2000_mine-90-10_mps_gz_vol "01_Analysis" "Optimal objective <number>" -784302337.633172989 1e-6)
create_log_analysis(miplib2000_msc98-ip_mps_gz_vol "01_Analysis" "Optimal objective <number>" 19839497.0058740 1e-6)
create_log_analysis(miplib2000_mspp16_mps_gz_vol "01_Analysis" "Optimal objective <number>" 363 1e-6)
create_log_analysis(miplib2000_mzzv11_mps_gz_vol "01_Analysis" "Optimal objective <number>" -21718 1e-6)
create_log_analysis(miplib2000_n3div36_mps_gz_vol "01_Analysis" "Optimal objective <number>" 131000 1e-6)
create_log_analysis(miplib2000_n3seq24_mps_gz_vol "01_Analysis" "Optimal objective <number>" 52200 1e-6)
create_log_analysis(miplib2000_n4-3_mps_gz_vol "01_Analysis" "Optimal objective <number>" 8993 1e-6)
create_log_analysis(miplib2000_neos-1109824_mps_gz_vol "01_Analysis" "Optimal objective <number>" 378 1e-6)
create_log_analysis(miplib2000_neos-1337307_mps_gz_vol "01_Analysis" "Optimal objective <number>" -202319 1e-6)
create_log_analysis(miplib2000_neos-1396125_mps_gz_vol "01_Analysis" "Optimal objective <number>" 3000.045337 1e-6)
create_log_analysis(miplib2000_neos13_mps_gz_vol "01_Analysis" "Optimal objective <number>" -95.474807 1e-6)
create_log_analysis(miplib2000_neos-1601936_mps_gz_vol "01_Analysis" "Optimal objective <number>" 3 1e-6)
create_log_analysis(miplib2000_neos18_mps_gz_vol "01_Analysis" "Optimal objective <number>" 18 1e-6)
create_log_analysis(miplib2000_neos-476283_mps_gz_vol "01_Analysis" "Optimal objective <number>" 406.363207 1e-6)
create_log_analysis(miplib2000_neos-686190_mps_gz_vol "01_Analysis" "Optimal objective <number>" 6730 1e-6)
create_log_analysis(miplib2000_neos-849702_mps_gz_vol "01_Analysis" "Optimal objective <number>" 0 1e-6)
create_log_analysis(miplib2000_neos-916792_mps_gz_vol "01_Analysis" "Optimal objective <number>" 31.870398 1e-6)
create_log_analysis(miplib2000_neos-934278_mps_gz_vol "01_Analysis" "Optimal objective <number>" 260 1e-6)
create_log_analysis(miplib2000_net12_mps_gz_vol "01_Analysis" "Optimal objective <number>" 214 1e-6)
create_log_analysis(miplib2000_netdiversion_mps_gz_vol "01_Analysis" "Optimal objective <number>" 242 1e-6)
create_log_analysis(miplib2000_newdano_mps_gz_vol "01_Analysis" "Optimal objective <number>" 65.666667 1e-6)
create_log_analysis(miplib2000_noswot_mps_gz_vol "01_Analysis" "Optimal objective <number>" -41 1e-6)
create_log_analysis(miplib2000_ns1208400_mps_gz_vol "01_Analysis" "Optimal objective <number>" 2 1e-6)
create_log_analysis(miplib2000_ns1688347_mps_gz_vol "01_Analysis" "Optimal objective <number>" 27 1e-6)
create_log_analysis(miplib2000_ns1758913_mps_gz_vol "01_Analysis" "Optimal objective <number>" -1454.671755 1e-6)
create_log_analysis(miplib2000_ns1830653_mps_gz_vol "01_Analysis" "Optimal objective <number>" 20622 1e-6)
create_log_analysis(miplib2000_opm2-z7-s2_mps_gz_vol "01_Analysis" "Optimal objective <number>" -10280 1e-6)
create_log_analysis(miplib2000_pg5_34_mps_gz_vol "01_Analysis" "Optimal objective <number>" -14339.353447 1e-6)
create_log_analysis(miplib2000_pigeon-10_mps_gz_vol "01_Analysis" "Optimal objective <number>" -9000 1e-6)
create_log_analysis(miplib2000_pw-myciel4_mps_gz_vol "01_Analysis" "Optimal objective <number>" 10 1e-6)
create_log_analysis(miplib2000_qiu_mps_gz_vol "01_Analysis" "Optimal objective <number>" -132.873137 1e-6)
create_log_analysis(miplib2000_rail507_mps_gz_vol "01_Analysis" "Optimal objective <number>" 174 1e-6)
create_log_analysis(miplib2000_ran16x16_mps_gz_vol "01_Analysis" "Optimal objective <number>" 3823 1e-6)
create_log_analysis(miplib2000_reblock67_mps_gz_vol "01_Analysis" "Optimal objective <number>" -34630648.438331999 1e-6)
create_log_analysis(miplib2000_rmatr100-p10_mps_gz_vol "01_Analysis" "Optimal objective <number>" 423 1e-6)
create_log_analysis(miplib2000_rmatr100-p5_mps_gz_vol "01_Analysis" "Optimal objective <number>" 976 1e-6)
create_log_analysis(miplib2000_rmine6_mps_gz_vol "01_Analysis" "Optimal objective <number>" -457.186140000 1e-6)
create_log_analysis(miplib2000_rocII-4-11_mps_gz_vol "01_Analysis" "Optimal objective <number>" -6.65275566 1e-6)
create_log_analysis(miplib2000_rococoC10-001000_mps_gz_vol "01_Analysis" "Optimal objective <number>" 11460 1e-6)
create_log_analysis(miplib2000_roll3000_mps_gz_vol "01_Analysis" "Optimal objective <number>" 12890 1e-6)
create_log_analysis(miplib2000_satellites1-25_mps_gz_vol "01_Analysis" "Optimal objective <number>" -5 1e-6)
create_log_analysis(miplib2000_sp98ic_mps_gz_vol "01_Analysis" "Optimal objective <number>" 449144758.399999976 1e-6)
create_log_analysis(miplib2000_sp98ir_mps_gz_vol "01_Analysis" "Optimal objective <number>" 219676790.400000006 1e-6)
create_log_analysis(miplib2000_tanglegram1_mps_gz_vol "01_Analysis" "Optimal objective <number>" 5182 1e-6)
create_log_analysis(miplib2000_tanglegram2_mps_gz_vol "01_Analysis" "Optimal objective <number>" 443 1e-6)
create_log_analysis(miplib2000_timtab1_mps_gz_vol "01_Analysis" "Optimal objective <number>" 764772 1e-6)
create_log_analysis(miplib2000_triptim1_mps_gz_vol "01_Analysis" "Optimal objective <number>" 22.8681 1e-6)
create_log_analysis(miplib2000_unitcal_7_mps_gz_vol "01_Analysis" "Optimal objective <number>" 19635558.244019002 1e-6)
create_log_analysis(miplib2000_vpphard_mps_gz_vol "01_Analysis" "Optimal objective <number>" 5 1e-6)
create_log_analysis(miplib2000_zib54-UUE_mps_gz_vol "01_Analysis" "Optimal objective <number>" 10334015.82 1e-6)
