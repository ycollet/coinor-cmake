include(coin-macros)

set(IPOPT_INSTANCES_DIR "${EP_InstallDir}/MINLPLIB/src/EP_MINLPLIB/nl/")

# TODO:
# 116 - ampl_carton7_nl_ipopt_minlplib (Timeout)
# 120 - ampl_catmix100_nl_ipopt_minlplib (Failed)
# 154 - ampl_crudeoil_lee1_06_nl_ipopt_minlplib (Timeout)
# 178 - ampl_crudeoil_li02_nl_ipopt_minlplib (Timeout)
# 180 - ampl_crudeoil_li05_nl_ipopt_minlplib (Timeout)
# 215 - ampl_deb8_nl_ipopt_minlplib (Failed)
# 216 - ampl_deb9_nl_ipopt_minlplib (Failed)
# 246 - ampl_eg_all_s_nl_ipopt_minlplib (Failed)
# 251 - ampl_elec200_nl_ipopt_minlplib (Timeout)
# 276 - ampl_ex1244_nl_ipopt_minlplib (Failed)
# 336 - ampl_ex5_3_3_nl_ipopt_minlplib (Failed)
# 521 - ampl_glider200_nl_ipopt_minlplib (Failed)
# 635 - ampl_kall_ellipsoids_tc05a_nl_ipopt_minlplib (Timeout)
# 739 - ampl_nuclear25_nl_ipopt_minlplib (Timeout)
# 742 - ampl_nuclear49_nl_ipopt_minlplib (Timeout)
# 792 - ampl_pb302055_nl_ipopt_minlplib (Timeout)
# 794 - ampl_pb302095_nl_ipopt_minlplib (Timeout)
# 796 - ampl_pb351555_nl_ipopt_minlplib (Timeout)
# 829 - ampl_pooling_bental4stp_nl_ipopt_minlplib (Failed)
# 835 - ampl_pooling_digabel19_nl_ipopt_minlplib (Failed)
# 836 - ampl_pooling_epa1_nl_ipopt_minlplib (Failed)
# 840 - ampl_pooling_foulds2stp_nl_ipopt_minlplib (Failed)
# 846 - ampl_pooling_haverly2stp_nl_ipopt_minlplib (Failed)
# 849 - ampl_pooling_haverly3stp_nl_ipopt_minlplib (Failed)
# 852 - ampl_pooling_rt2stp_nl_ipopt_minlplib (Failed)
# 907 - ampl_qspp_0_12_0_1_10_1_nl_ipopt_minlplib (Failed)
# 1124 - ampl_squfl030_100persp_nl_ipopt_minlplib (Timeout)
# 1128 - ampl_squfl040_080persp_nl_ipopt_minlplib (Timeout)
# 1271 - ampl_super1_nl_ipopt_minlplib (Failed)
# 1279 - ampl_supplychainp1_053050_nl_ipopt_minlplib (Timeout)
# 1381 - ampl_tspn08_nl_ipopt_minlplib (Failed)
# 1388 - ampl_uselinear_nl_ipopt_minlplib (Timeout)
# 1449 - ampl_waterund28_nl_ipopt_minlplib (Timeout)

set(IPOPT_TEST_LIST 4stufen.nl
                    abel.nl
		    alan.nl
		    alkylation.nl
		    alkyl.nl
		    arki0001.nl
		    arki0002.nl
		    arki0003.nl
		    arki0004.nl
		    arki0005.nl
		    arki0006.nl
		    arki0008.nl
		    arki0009.nl
		    arki0010.nl
		    arki0011.nl
		    arki0012.nl
		    arki0013.nl
		    arki0014.nl
		    arki0015.nl
		    arki0016.nl
		    arki0017.nl
		    arki0018.nl
		    arki0019.nl
		    arki0020.nl
		    arki0021.nl
		    arki0022.nl
		    arki0023.nl
		    arki0024.nl
		    autocorr_bern20-03.nl
		    autocorr_bern20-05.nl
		    autocorr_bern20-10.nl
		    autocorr_bern20-15.nl
		    autocorr_bern25-03.nl
		    autocorr_bern25-06.nl
		    autocorr_bern25-13.nl
		    autocorr_bern25-19.nl
		    autocorr_bern25-25.nl
		    autocorr_bern30-04.nl
		    autocorr_bern30-08.nl
		    autocorr_bern30-15.nl
		    autocorr_bern30-23.nl
		    autocorr_bern30-30.nl
		    autocorr_bern35-04.nl
		    autocorr_bern35-09.nl
		    autocorr_bern35-18.nl
		    autocorr_bern35-26.nl
		    autocorr_bern35-35fix.nl
		    autocorr_bern35-35.nl
		    autocorr_bern40-05.nl
		    autocorr_bern40-10.nl
		    autocorr_bern40-20.nl
		    autocorr_bern40-30.nl
		    autocorr_bern40-40.nl
		    autocorr_bern45-05.nl
		    autocorr_bern45-11.nl
		    autocorr_bern45-23.nl
		    autocorr_bern45-34.nl
		    autocorr_bern45-45.nl
		    autocorr_bern50-06.nl
		    autocorr_bern50-13.nl
		    autocorr_bern50-25.nl
		    autocorr_bern50-38.nl
		    autocorr_bern50-50.nl
		    autocorr_bern55-06.nl
		    autocorr_bern55-14.nl
		    autocorr_bern55-28.nl
		    autocorr_bern55-41.nl
		    autocorr_bern55-55.nl
		    autocorr_bern60-08.nl
		    autocorr_bern60-15.nl
		    autocorr_bern60-30.nl
		    autocorr_bern60-45.nl
		    autocorr_bern60-60.nl
		    ball_mk2_10.nl
		    ball_mk2_30.nl
		    ball_mk3_10.nl
		    ball_mk3_20.nl
		    ball_mk3_30.nl
		    ball_mk4_05.nl
		    ball_mk4_10.nl
		    ball_mk4_15.nl
		    batch0812_nc.nl
		    batch0812.nl
		    batchdes.nl
		    batch_nc.nl
		    batch.nl
		    batchs101006m.nl
		    batchs121208m.nl
		    batchs151208m.nl
		    batchs201210m.nl
		    bayes2_10.nl
		    bayes2_20.nl
		    bayes2_30.nl
		    bayes2_50.nl
		    bchoco05.nl
		    bchoco06.nl
		    bchoco07.nl
		    bchoco08.nl
		    bearing.nl
		    beuster.nl
		    blend029.nl
		    blend146.nl
		    blend480.nl
		    blend531.nl
		    blend718.nl
		    blend721.nl
		    blend852.nl
		    btest14.nl
		    camcns.nl
		    camshape100.nl
		    camshape200.nl
		    camshape400.nl
		    camshape800.nl
		    cardqp_inlp.nl
		    cardqp_iqp.nl
		    carton7.nl
		    carton9.nl
		    casctanks.nl
		    case_1scv2.nl
		    catmix100.nl
		    catmix200.nl
		    catmix400.nl
		    catmix800.nl
		    cecil_13.nl
		    cesam2log.nl
		    chain100.nl
		    chain200.nl
		    chain400.nl
		    chain50.nl
		    chakra.nl
		    chance.nl
		    chem.nl
		    chenery.nl
		    chp_partload.nl
		    circle.nl
		    clay0203h.nl
		    clay0203m.nl
		    clay0204h.nl
		    clay0204m.nl
		    clay0205h.nl
		    clay0205m.nl
		    clay0303h.nl
		    clay0303m.nl
		    clay0304h.nl
		    clay0304m.nl
		    clay0305h.nl
		    clay0305m.nl
		    color_lab2_4x0.nl
		    color_lab6b_4x20.nl
		    contvar.nl
		    crossdock_15x7.nl
		    crossdock_15x8.nl
		    crudeoil_lee1_05.nl
		    crudeoil_lee1_06.nl
		    crudeoil_lee1_07.nl
		    crudeoil_lee1_08.nl
		    crudeoil_lee1_09.nl
		    crudeoil_lee1_10.nl
		    crudeoil_lee2_05.nl
		    crudeoil_lee2_06.nl
		    crudeoil_lee2_07.nl
		    crudeoil_lee2_08.nl
		    crudeoil_lee2_09.nl
		    crudeoil_lee2_10.nl
		    crudeoil_lee3_05.nl
		    crudeoil_lee3_06.nl
		    crudeoil_lee3_07.nl
		    crudeoil_lee3_08.nl
		    crudeoil_lee3_09.nl
		    crudeoil_lee3_10.nl
		    crudeoil_lee4_05.nl
		    crudeoil_lee4_06.nl
		    crudeoil_lee4_07.nl
		    crudeoil_lee4_08.nl
		    crudeoil_lee4_09.nl
		    crudeoil_lee4_10.nl
		    crudeoil_li01.nl
		    crudeoil_li02.nl
		    crudeoil_li03.nl
		    crudeoil_li05.nl
		    crudeoil_li06.nl
		    crudeoil_li11.nl
		    crudeoil_li21.nl
		    csched1a.nl
		    csched1.nl
		    csched2a.nl
		    csched2.nl
		    cvxnonsep_normcon20.nl
		    cvxnonsep_normcon20r.nl
		    cvxnonsep_normcon30.nl
		    cvxnonsep_normcon30r.nl
		    cvxnonsep_normcon40.nl
		    cvxnonsep_normcon40r.nl
		    cvxnonsep_nsig20.nl
		    cvxnonsep_nsig20r.nl
		    cvxnonsep_nsig30.nl
		    cvxnonsep_nsig30r.nl
		    cvxnonsep_nsig40.nl
		    cvxnonsep_nsig40r.nl
		    cvxnonsep_pcon20.nl
		    cvxnonsep_pcon20r.nl
		    cvxnonsep_pcon30.nl
		    cvxnonsep_pcon30r.nl
		    cvxnonsep_pcon40.nl
		    cvxnonsep_pcon40r.nl
		    cvxnonsep_psig20.nl
		    cvxnonsep_psig20r.nl
		    cvxnonsep_psig30.nl
		    cvxnonsep_psig30r.nl
		    cvxnonsep_psig40.nl
		    cvxnonsep_psig40r.nl
		    deb10.nl
		    deb6.nl
		    deb7.nl
		    deb8.nl
		    deb9.nl
		    demo7.nl
		    densitymod.nl
		    dispatch.nl
		    du-opt5.nl
		    du-opt.nl
		    edgecross10-010.nl
		    edgecross10-020.nl
		    edgecross10-030.nl
		    edgecross10-040.nl
		    edgecross10-050.nl
		    edgecross10-060.nl
		    edgecross10-070.nl
		    edgecross10-080.nl
		    edgecross10-090.nl
		    edgecross14-019.nl
		    edgecross14-039.nl
		    edgecross14-058.nl
		    edgecross14-078.nl
		    edgecross14-098.nl
		    edgecross14-117.nl
		    edgecross14-137.nl
		    edgecross14-156.nl
		    edgecross14-176.nl
		    edgecross20-040.nl
		    edgecross20-080.nl
		    edgecross22-048.nl
		    edgecross22-096.nl
		    edgecross24-057.nl
		    edgecross24-115.nl
		    eg_all_s.nl
		    eg_disc2_s.nl
		    eg_disc_s.nl
		    eg_int_s.nl
		    elec100.nl
		    elec200.nl
		    elec25.nl
		    elec50.nl
		    elf.nl
		    emfl050_3_3.nl
		    emfl050_5_5.nl
		    emfl100_3_3.nl
		    emfl100_5_5.nl
		    eniplac.nl
		    enpro48pb.nl
		    enpro56pb.nl
		    eq6_1.nl
		    etamac.nl
		    ethanolh.nl
		    ethanolm.nl
		    ex1221.nl
		    ex1222.nl
		    ex1223a.nl
		    ex1223b.nl
		    ex1223.nl
		    ex1224.nl
		    ex1225.nl
		    ex1226.nl
		    ex1233.nl
		    ex1243.nl
		    ex1244.nl
		    ex1252a.nl
		    ex1252.nl
		    ex1263a.nl
		    ex1263.nl
		    ex1264a.nl
		    ex1264.nl
		    ex1265a.nl
		    ex1265.nl
		    ex1266a.nl
		    ex1266.nl
		    ex14_1_1.nl
		    ex14_1_2.nl
		    ex14_1_3.nl
		    ex14_1_4.nl
		    ex14_1_5.nl
		    ex14_1_6.nl
		    ex14_1_7.nl
		    ex14_1_8.nl
		    ex14_1_9.nl
		    ex14_2_1.nl
		    ex14_2_2.nl
		    ex14_2_3.nl
		    ex14_2_4.nl
		    ex14_2_5.nl
		    ex14_2_6.nl
		    ex14_2_7.nl
		    ex14_2_8.nl
		    ex14_2_9.nl
		    ex2_1_10.nl
		    ex2_1_1.nl
		    ex2_1_2.nl
		    ex2_1_3.nl
		    ex2_1_4.nl
		    ex2_1_5.nl
		    ex2_1_6.nl
		    ex2_1_7.nl
		    ex2_1_8.nl
		    ex2_1_9.nl
		    ex3_1_1.nl
		    ex3_1_2.nl
		    ex3_1_3.nl
		    ex3_1_4.nl
		    ex3pb.nl
		    ex4_1_1.nl
		    ex4_1_2.nl
		    ex4_1_3.nl
		    ex4_1_4.nl
		    ex4_1_5.nl
		    ex4_1_6.nl
		    ex4_1_7.nl
		    ex4_1_8.nl
		    ex4_1_9.nl
		    ex4.nl
		    ex5_2_2_case1.nl
		    ex5_2_2_case2.nl
		    ex5_2_2_case3.nl
		    ex5_2_4.nl
		    ex5_2_5.nl
		    ex5_3_2.nl
		    ex5_3_3.nl
		    ex5_4_2.nl
		    ex5_4_3.nl
		    ex5_4_4.nl
		    ex6_1_1.nl
		    ex6_1_2.nl
		    ex6_1_3.nl
		    ex6_1_4.nl
		    ex6_2_10.nl
		    ex6_2_11.nl
		    ex6_2_12.nl
		    ex6_2_13.nl
		    ex6_2_14.nl
		    ex6_2_5.nl
		    ex6_2_6.nl
		    ex6_2_7.nl
		    ex6_2_8.nl
		    ex6_2_9.nl
		    ex7_2_1.nl
		    ex7_2_2.nl
		    ex7_2_3.nl
		    ex7_2_4.nl
		    ex7_3_1.nl
		    ex7_3_2.nl
		    ex7_3_3.nl
		    ex7_3_4.nl
		    ex7_3_5.nl
		    ex7_3_6.nl
		    ex8_1_1.nl
		    ex8_1_2.nl
		    ex8_1_3.nl
		    ex8_1_4.nl
		    ex8_1_5.nl
		    ex8_1_6.nl
		    ex8_1_7.nl
		    ex8_2_1b.nl
		    ex8_2_2b.nl
		    ex8_2_3b.nl
		    ex8_2_4b.nl
		    ex8_2_5b.nl
		    ex8_3_11.nl
		    ex8_3_12.nl
		    ex8_3_13.nl
		    ex8_3_14.nl
		    ex8_3_1.nl
		    ex8_3_2.nl
		    ex8_3_3.nl
		    ex8_3_4.nl
		    ex8_3_5.nl
		    ex8_3_7.nl
		    ex8_3_8.nl
		    ex8_3_9.nl
		    ex8_4_1.nl
		    ex8_4_2.nl
		    ex8_4_3.nl
		    ex8_4_4.nl
		    ex8_4_5.nl
		    ex8_4_6.nl
		    ex8_4_7.nl
		    ex8_4_8_bnd.nl
		    ex8_5_1.nl
		    ex8_5_2.nl
		    ex8_5_3.nl
		    ex8_5_4.nl
		    ex8_5_5.nl
		    ex8_5_6.nl
		    ex8_6_1.nl
		    ex8_6_2.nl
		    ex9_1_1.nl
		    ex9_1_2.nl
		    ex9_1_4.nl
		    ex9_1_5.nl
		    ex9_1_8.nl
		    ex9_2_2.nl
		    ex9_2_3.nl
		    ex9_2_4.nl
		    ex9_2_5.nl
		    ex9_2_6.nl
		    ex9_2_7.nl
		    ex9_2_8.nl
		    fac1.nl
		    fac2.nl
		    fac3.nl
		    faclay20h.nl
		    faclay25.nl
		    faclay30h.nl
		    faclay30.nl
		    faclay33.nl
		    faclay35.nl
		    faclay60.nl
		    faclay70.nl
		    faclay75.nl
		    faclay80.nl
		    fdesign10.nl
		    fdesign25.nl
		    fdesign50.nl
		    feedtray2.nl
		    feedtray.nl
		    filter.nl
		    fin2bb.nl
		    flay02h.nl
		    flay02m.nl
		    flay03h.nl
		    flay03m.nl
		    flay04h.nl
		    flay04m.nl
		    flay05h.nl
		    flay05m.nl
		    flay06h.nl
		    flay06m.nl
		    flowchan100fix.nl
		    flowchan200fix.nl
		    flowchan400fix.nl
		    flowchan50fix.nl
		    fo7_2.nl
		    fo7_ar2_1.nl
		    fo7_ar25_1.nl
		    fo7_ar3_1.nl
		    fo7_ar4_1.nl
		    fo7_ar5_1.nl
		    fo7.nl
		    fo8_ar2_1.nl
		    fo8_ar25_1.nl
		    fo8_ar3_1.nl
		    fo8_ar4_1.nl
		    fo8_ar5_1.nl
		    fo8.nl
		    fo9_ar2_1.nl
		    fo9_ar25_1.nl
		    fo9_ar3_1.nl
		    fo9_ar4_1.nl
		    fo9_ar5_1.nl
		    fo9.nl
		    fuel.nl
		    fuzzy.nl
		    gams01.nl
		    gams02.nl
		    gams03.nl
		    gancns.nl
		    gasnet.nl
		    gasoil100.nl
		    gasoil200.nl
		    gasoil400.nl
		    gasoil50.nl
		    gasprod_sarawak01.nl
		    gasprod_sarawak16.nl
		    gasprod_sarawak81.nl
		    gastrans040.nl
		    gastrans135.nl
		    gastrans582_cold13_95.nl
		    gastrans582_cold13.nl
		    gastrans582_cold17_95.nl
		    gastrans582_cold17.nl
		    gastrans582_cool12_95.nl
		    gastrans582_cool12.nl
		    gastrans582_cool14_95.nl
		    gastrans582_cool14.nl
		    gastrans582_freezing27_95.nl
		    gastrans582_freezing27.nl
		    gastrans582_freezing30_95.nl
		    gastrans582_freezing30.nl
		    gastrans582_mild10_95.nl
		    gastrans582_mild10.nl
		    gastrans582_mild11_95.nl
		    gastrans582_mild11.nl
		    gastrans582_warm15_95.nl
		    gastrans582_warm15.nl
		    gastrans582_warm31_95.nl
		    gastrans582_warm31.nl
		    gastrans.nl
		    gbd.nl
		    gear2.nl
		    gear3.nl
		    gear4.nl
		    gear.nl
		    genpooling_lee1.nl
		    genpooling_lee2.nl
		    genpooling_meyer04.nl
		    genpooling_meyer10.nl
		    genpooling_meyer15.nl
		    ghg_1veh.nl
		    ghg_2veh.nl
		    ghg_3veh.nl
		    gkocis.nl
		    glider100.nl
		    glider200.nl
		    glider400.nl
		    glider50.nl
		    graphpart_2g-0044-1601.nl
		    graphpart_2g-0055-0062.nl
		    graphpart_2g-0066-0066.nl
		    graphpart_2g-0077-0077.nl
		    graphpart_2g-0088-0088.nl
		    graphpart_2g-0099-9211.nl
		    graphpart_2g-1010-0824.nl
		    graphpart_2pm-0044-0044.nl
		    graphpart_2pm-0055-0055.nl
		    graphpart_2pm-0066-0066.nl
		    graphpart_2pm-0077-0777.nl
		    graphpart_2pm-0088-0888.nl
		    graphpart_2pm-0099-0999.nl
		    graphpart_3g-0234-0234.nl
		    graphpart_3g-0244-0244.nl
		    graphpart_3g-0333-0333.nl
		    graphpart_3g-0334-0334.nl
		    graphpart_3g-0344-0344.nl
		    graphpart_3g-0444-0444.nl
		    graphpart_3pm-0234-0234.nl
		    graphpart_3pm-0244-0244.nl
		    graphpart_3pm-0333-0333.nl
		    graphpart_3pm-0334-0334.nl
		    graphpart_3pm-0344-0344.nl
		    graphpart_3pm-0444-0444.nl
		    graphpart_clique-20.nl
		    graphpart_clique-30.nl
		    graphpart_clique-40.nl
		    graphpart_clique-50.nl
		    graphpart_clique-60.nl
		    graphpart_clique-70.nl
		    gsg_0001.nl
		    gtm.nl
		    hadamard_4.nl
		    hadamard_5.nl
		    hadamard_6.nl
		    hadamard_7.nl
		    hadamard_8.nl
		    hadamard_9.nl
		    harker.nl
		    haverly.nl
		    hda.nl
		    heatexch_gen1.nl
		    heatexch_gen2.nl
		    heatexch_gen3.nl
		    heatexch_spec1.nl
		    heatexch_spec2.nl
		    heatexch_spec3.nl
		    heatexch_trigen.nl
		    hhfair.nl
		    himmel11.nl
		    himmel16.nl
		    hmittelman.nl
		    house.nl
		    hs62.nl
		    hvycrash.nl
		    hybriddynamic_fixedcc.nl
		    hybriddynamic_fixed.nl
		    hybriddynamic_varcc.nl
		    hybriddynamic_var.nl
		    hydroenergy1.nl
		    hydroenergy2.nl
		    hydroenergy3.nl
		    hydro.nl
		    ibs2.nl
		    immun.nl
		    infeas1.nl
		    ising2_5-300_5555.nl
		    jbearing100.nl
		    jbearing25.nl
		    jbearing50.nl
		    jbearing75.nl
		    jit1.nl
		    johnall.nl
		    kall_circles_c6a.nl
		    kall_circles_c6b.nl
		    kall_circles_c6c.nl
		    kall_circles_c7a.nl
		    kall_circles_c8a.nl
		    kall_circlespolygons_c1p11.nl
		    kall_circlespolygons_c1p12.nl
		    kall_circlespolygons_c1p13.nl
		    kall_circlespolygons_c1p5a.nl
		    kall_circlespolygons_c1p5b.nl
		    kall_circlespolygons_c1p6a.nl
		    kall_circlesrectangles_c1r11.nl
		    kall_circlesrectangles_c1r12.nl
		    kall_circlesrectangles_c1r13.nl
		    kall_circlesrectangles_c6r1.nl
		    kall_circlesrectangles_c6r29.nl
		    kall_circlesrectangles_c6r39.nl
		    kall_congruentcircles_c31.nl
		    kall_congruentcircles_c32.nl
		    kall_congruentcircles_c41.nl
		    kall_congruentcircles_c42.nl
		    kall_congruentcircles_c51.nl
		    kall_congruentcircles_c52.nl
		    kall_congruentcircles_c61.nl
		    kall_congruentcircles_c62.nl
		    kall_congruentcircles_c63.nl
		    kall_congruentcircles_c71.nl
		    kall_congruentcircles_c72.nl
		    kall_diffcircles_10.nl
		    kall_diffcircles_5a.nl
		    kall_diffcircles_5b.nl
		    kall_diffcircles_6.nl
		    kall_diffcircles_7.nl
		    kall_diffcircles_8.nl
		    kall_diffcircles_9.nl
		    kall_ellipsoids_tc02b.nl
		    kall_ellipsoids_tc03c.nl
		    kall_ellipsoids_tc05a.nl
		    knp3-12.nl
		    knp4-24.nl
		    knp5-40.nl
		    knp5-41.nl
		    knp5-42.nl
		    knp5-43.nl
		    knp5-44.nl
		    korcns.nl
		    kport20.nl
		    kport40.nl
		    lakes.nl
		    launch.nl
		    least.nl
		    like.nl
		    linear.nl
		    lip.nl
		    lnts100.nl
		    lnts200.nl
		    lnts400.nl
		    lnts50.nl
		    lop97ic.nl
		    lop97icx.nl
		    m3.nl
		    m6.nl
		    m7_ar2_1.nl
		    m7_ar25_1.nl
		    m7_ar3_1.nl
		    m7_ar4_1.nl
		    m7_ar5_1.nl
		    m7.nl
		    mathopt1.nl
		    mathopt2.nl
		    mathopt3.nl
		    mathopt4.nl
		    mathopt5_1.nl
		    mathopt5_2.nl
		    mathopt5_3.nl
		    mathopt5_4.nl
		    mathopt5_5.nl
		    mathopt5_6.nl
		    mathopt5_7.nl
		    mathopt5_8.nl
		    mathopt6.nl
		    maxmineig2.nl
		    maxmin.nl
		    mbtd.nl
		    meanvar.nl
		    meanvarx.nl
		    meanvarxsc.nl
		    methanol100.nl
		    methanol200.nl
		    methanol400.nl
		    methanol50.nl
		    mhw4d.nl
		    milinfract.nl
		    minlphi.nl
		    minlphix.nl
		    minsurf100.nl
		    minsurf25.nl
		    minsurf50.nl
		    minsurf75.nl
		    multiplants_mtg1a.nl
		    multiplants_mtg1b.nl
		    multiplants_mtg1c.nl
		    multiplants_mtg2.nl
		    multiplants_mtg5.nl
		    multiplants_mtg6.nl
		    multiplants_stg1a.nl
		    multiplants_stg1b.nl
		    multiplants_stg1c.nl
		    multiplants_stg1.nl
		    multiplants_stg5.nl
		    multiplants_stg6.nl
		    ndcc12.nl
		    ndcc12persp.nl
		    ndcc13.nl
		    ndcc13persp.nl
		    ndcc14.nl
		    ndcc14persp.nl
		    ndcc15.nl
		    ndcc15persp.nl
		    ndcc16.nl
		    ndcc16persp.nl
		    nemhaus.nl
		    netmod_dol1.nl
		    netmod_dol2.nl
		    netmod_kar1.nl
		    netmod_kar2.nl
		    no7_ar2_1.nl
		    no7_ar25_1.nl
		    no7_ar3_1.nl
		    no7_ar4_1.nl
		    no7_ar5_1.nl
		    nous1.nl
		    nous2.nl
		    nuclear104.nl
		    nuclear10a.nl
		    nuclear10b.nl
		    nuclear14a.nl
		    nuclear14b.nl
		    nuclear14.nl
		    nuclear25a.nl
		    nuclear25b.nl
		    nuclear25.nl
		    nuclear49a.nl
		    nuclear49b.nl
		    nuclear49.nl
		    nuclearva.nl
		    nuclearvb.nl
		    nuclearvc.nl
		    nuclearvd.nl
		    nuclearve.nl
		    nuclearvf.nl
		    nvs01.nl
		    nvs02.nl
		    nvs03.nl
		    nvs04.nl
		    nvs05.nl
		    nvs06.nl
		    nvs07.nl
		    nvs08.nl
		    nvs09.nl
		    nvs10.nl
		    nvs11.nl
		    nvs12.nl
		    nvs13.nl
		    nvs14.nl
		    nvs15.nl
		    nvs16.nl
		    nvs17.nl
		    nvs18.nl
		    nvs19.nl
		    nvs20.nl
		    nvs21.nl
		    nvs22.nl
		    nvs23.nl
		    nvs24.nl
		    o7_2.nl
		    o7_ar2_1.nl
		    o7_ar25_1.nl
		    o7_ar3_1.nl
		    o7_ar4_1.nl
		    o7_ar5_1.nl
		    o7.nl
		    o8_ar4_1.nl
		    o9_ar4_1.nl
		    oaer.nl
		    oil2.nl
		    oil.nl
		    ortez.nl
		    orth_d3m6.nl
		    orth_d3m6_pl.nl
		    orth_d4m6_pl.nl
		    otpop.nl
		    parallel.nl
		    pb302035.nl
		    pb302055.nl
		    pb302075.nl
		    pb302095.nl
		    pb351535.nl
		    pb351555.nl
		    pb351575.nl
		    pb351595.nl
		    pedigree_sp_top4_350tr.nl
		    pindyck.nl
		    pinene100.nl
		    pinene200.nl
		    pinene50.nl
		    pointpack02.nl
		    pointpack04.nl
		    pointpack06.nl
		    pointpack08.nl
		    pointpack10.nl
		    pointpack12.nl
		    pointpack14.nl
		    pollut.nl
		    polygon100.nl
		    polygon25.nl
		    polygon50.nl
		    polygon75.nl
		    pooling_adhya1pq.nl
		    pooling_adhya1stp.nl
		    pooling_adhya1tp.nl
		    pooling_adhya2pq.nl
		    pooling_adhya2stp.nl
		    pooling_adhya2tp.nl
		    pooling_adhya3pq.nl
		    pooling_adhya3stp.nl
		    pooling_adhya3tp.nl
		    pooling_adhya4pq.nl
		    pooling_adhya4stp.nl
		    pooling_adhya4tp.nl
		    pooling_bental4pq.nl
		    pooling_bental4stp.nl
		    pooling_bental4tp.nl
		    pooling_bental5pq.nl
		    pooling_bental5stp.nl
		    pooling_bental5tp.nl
		    pooling_digabel16.nl
		    pooling_digabel19.nl
		    pooling_epa1.nl
		    pooling_epa2.nl
		    pooling_epa3.nl
		    pooling_foulds2pq.nl
		    pooling_foulds2stp.nl
		    pooling_foulds2tp.nl
		    pooling_haverly1pq.nl
		    pooling_haverly1stp.nl
		    pooling_haverly1tp.nl
		    pooling_haverly2pq.nl
		    pooling_haverly2stp.nl
		    pooling_haverly2tp.nl
		    pooling_haverly3pq.nl
		    pooling_haverly3stp.nl
		    pooling_haverly3tp.nl
		    pooling_rt2pq.nl
		    pooling_rt2stp.nl
		    pooling_rt2tp.nl
		    popdynm100.nl
		    popdynm200.nl
		    popdynm25.nl
		    popdynm50.nl
		    portfol_buyin.nl
		    portfol_card.nl
		    portfol_classical050_1.nl
		    portfol_classical200_2.nl
		    portfol_robust050_34.nl
		    portfol_robust100_09.nl
		    portfol_robust200_03.nl
		    portfol_roundlot.nl
		    portfol_shortfall050_68.nl
		    portfol_shortfall100_04.nl
		    portfol_shortfall200_05.nl
		    powerflow0009p.nl
		    powerflow0009r.nl
		    powerflow0014p.nl
		    powerflow0014r.nl
		    powerflow0030p.nl
		    powerflow0030r.nl
		    powerflow0039p.nl
		    powerflow0039r.nl
		    powerflow0057p.nl
		    powerflow0057r.nl
		    powerflow0118p.nl
		    powerflow0118r.nl
		    powerflow0300p.nl
		    powerflow0300r.nl
		    powerflow2383wpp.nl
		    powerflow2383wpr.nl
		    powerflow2736spp.nl
		    powerflow2736spr.nl
		    primary.nl
		    prob02.nl
		    prob03.nl
		    prob06.nl
		    prob07.nl
		    prob09.nl
		    prob10.nl
		    process.nl
		    procsel.nl
		    procsyn.nl
		    product2.nl
		    product.nl
		    prolog.nl
		    qap.nl
		    qapw.nl
		    qp2.nl
		    qp3.nl
		    qp4.nl
		    qspp_0_10_0_1_10_1.nl
		    qspp_0_11_0_1_10_1.nl
		    qspp_0_12_0_1_10_1.nl
		    ramsey.nl
		    ravempb.nl
		    rbrock.nl
		    risk2bpb.nl
		    robot100.nl
		    robot200.nl
		    robot400.nl
		    robot50.nl
		    rocket100.nl
		    rocket200.nl
		    rocket400.nl
		    rocket50.nl
		    routingdelay_bigm.nl
		    routingdelay_proj.nl
		    rsyn0805h.nl
		    rsyn0805m02h.nl
		    rsyn0805m02m.nl
		    rsyn0805m03h.nl
		    rsyn0805m03m.nl
		    rsyn0805m04h.nl
		    rsyn0805m04m.nl
		    rsyn0805m.nl
		    rsyn0810h.nl
		    rsyn0810m02h.nl
		    rsyn0810m02m.nl
		    rsyn0810m03h.nl
		    rsyn0810m03m.nl
		    rsyn0810m04h.nl
		    rsyn0810m04m.nl
		    rsyn0810m.nl
		    rsyn0815h.nl
		    rsyn0815m02h.nl
		    rsyn0815m02m.nl
		    rsyn0815m03h.nl
		    rsyn0815m03m.nl
		    rsyn0815m04h.nl
		    rsyn0815m04m.nl
		    rsyn0815m.nl
		    rsyn0820h.nl
		    rsyn0820m02h.nl
		    rsyn0820m02m.nl
		    rsyn0820m03h.nl
		    rsyn0820m03m.nl
		    rsyn0820m04h.nl
		    rsyn0820m04m.nl
		    rsyn0820m.nl
		    rsyn0830h.nl
		    rsyn0830m02h.nl
		    rsyn0830m02m.nl
		    rsyn0830m03h.nl
		    rsyn0830m03m.nl
		    rsyn0830m04h.nl
		    rsyn0830m04m.nl
		    rsyn0830m.nl
		    rsyn0840h.nl
		    rsyn0840m02h.nl
		    rsyn0840m02m.nl
		    rsyn0840m03h.nl
		    rsyn0840m03m.nl
		    rsyn0840m04h.nl
		    rsyn0840m04m.nl
		    rsyn0840m.nl
		    saa_2.nl
		    sambal.nl
		    sample.nl
		    sep1.nl
		    sepasequ_complex.nl
		    sepasequ_convent.nl
		    sfacloc1_2_80.nl
		    sfacloc1_2_90.nl
		    sfacloc1_2_95.nl
		    sfacloc1_3_80.nl
		    sfacloc1_3_90.nl
		    sfacloc1_3_95.nl
		    sfacloc1_4_80.nl
		    sfacloc1_4_90.nl
		    sfacloc1_4_95.nl
		    sfacloc2_2_80.nl
		    sfacloc2_2_90.nl
		    sfacloc2_2_95.nl
		    sfacloc2_3_80.nl
		    sfacloc2_3_90.nl
		    sfacloc2_3_95.nl
		    sfacloc2_4_80.nl
		    sfacloc2_4_90.nl
		    sfacloc2_4_95.nl
		    shiporig.nl
		    slay04h.nl
		    slay04m.nl
		    slay05h.nl
		    slay05m.nl
		    slay06h.nl
		    slay06m.nl
		    slay07h.nl
		    slay07m.nl
		    slay08h.nl
		    slay08m.nl
		    slay09h.nl
		    slay09m.nl
		    slay10h.nl
		    slay10m.nl
		    smallinvDAXr1b010-011.nl
		    smallinvDAXr1b020-022.nl
		    smallinvDAXr1b050-055.nl
		    smallinvDAXr1b100-110.nl
		    smallinvDAXr1b150-165.nl
		    smallinvDAXr1b200-220.nl
		    smallinvDAXr2b010-011.nl
		    smallinvDAXr2b020-022.nl
		    smallinvDAXr2b050-055.nl
		    smallinvDAXr2b100-110.nl
		    smallinvDAXr2b150-165.nl
		    smallinvDAXr2b200-220.nl
		    smallinvDAXr3b010-011.nl
		    smallinvDAXr3b020-022.nl
		    smallinvDAXr3b050-055.nl
		    smallinvDAXr3b100-110.nl
		    smallinvDAXr3b150-165.nl
		    smallinvDAXr3b200-220.nl
		    smallinvDAXr4b010-011.nl
		    smallinvDAXr4b020-022.nl
		    smallinvDAXr4b050-055.nl
		    smallinvDAXr4b100-110.nl
		    smallinvDAXr4b150-165.nl
		    smallinvDAXr4b200-220.nl
		    smallinvDAXr5b010-011.nl
		    smallinvDAXr5b020-022.nl
		    smallinvDAXr5b050-055.nl
		    smallinvDAXr5b100-110.nl
		    smallinvDAXr5b150-165.nl
		    smallinvDAXr5b200-220.nl
		    smallinvSNPr1b010-011.nl
		    smallinvSNPr1b020-022.nl
		    smallinvSNPr1b050-055.nl
		    smallinvSNPr1b100-110.nl
		    smallinvSNPr1b150-165.nl
		    smallinvSNPr1b200-220.nl
		    smallinvSNPr2b010-011.nl
		    smallinvSNPr2b020-022.nl
		    smallinvSNPr2b050-055.nl
		    smallinvSNPr2b100-110.nl
		    smallinvSNPr2b150-165.nl
		    smallinvSNPr2b200-220.nl
		    smallinvSNPr3b010-011.nl
		    smallinvSNPr3b020-022.nl
		    smallinvSNPr3b050-055.nl
		    smallinvSNPr3b100-110.nl
		    smallinvSNPr3b150-165.nl
		    smallinvSNPr3b200-220.nl
		    smallinvSNPr4b010-011.nl
		    smallinvSNPr4b020-022.nl
		    smallinvSNPr4b050-055.nl
		    smallinvSNPr4b100-110.nl
		    smallinvSNPr4b150-165.nl
		    smallinvSNPr4b200-220.nl
		    smallinvSNPr5b010-011.nl
		    smallinvSNPr5b020-022.nl
		    smallinvSNPr5b050-055.nl
		    smallinvSNPr5b100-110.nl
		    smallinvSNPr5b150-165.nl
		    smallinvSNPr5b200-220.nl
		    sonet22v5.nl
		    sonet23v4.nl
		    sonet24v5.nl
		    sonetgr17.nl
		    space25a.nl
		    space25.nl
		    space960.nl
		    spectra2.nl
		    sporttournament06.nl
		    sporttournament08.nl
		    sporttournament10.nl
		    sporttournament12.nl
		    sporttournament14.nl
		    sporttournament16.nl
		    sporttournament18.nl
		    sporttournament20.nl
		    sporttournament22.nl
		    sporttournament24.nl
		    sporttournament26.nl
		    sporttournament28.nl
		    sporttournament30.nl
		    sporttournament32.nl
		    sporttournament34.nl
		    sporttournament36.nl
		    sporttournament38.nl
		    sporttournament40.nl
		    sporttournament42.nl
		    sporttournament44.nl
		    sporttournament46.nl
		    sporttournament48.nl
		    sporttournament50.nl
		    spring.nl
		    squfl010-025.nl
		    squfl010-025persp.nl
		    squfl010-040.nl
		    squfl010-040persp.nl
		    squfl010-080.nl
		    squfl010-080persp.nl
		    squfl015-060.nl
		    squfl015-060persp.nl
		    squfl015-080.nl
		    squfl015-080persp.nl
		    squfl020-040.nl
		    squfl020-040persp.nl
		    squfl020-050.nl
		    squfl020-050persp.nl
		    squfl020-150.nl
		    squfl020-150persp.nl
		    squfl025-025.nl
		    squfl025-025persp.nl
		    squfl025-030.nl
		    squfl025-030persp.nl
		    squfl025-040.nl
		    squfl025-040persp.nl
		    squfl030-100.nl
		    squfl030-100persp.nl
		    squfl030-150.nl
		    squfl030-150persp.nl
		    squfl040-080.nl
		    squfl040-080persp.nl
		    srcpm.nl
		    sssd08-04.nl
		    sssd08-04persp.nl
		    sssd12-05.nl
		    sssd12-05persp.nl
		    sssd15-04.nl
		    sssd15-04persp.nl
		    sssd15-06.nl
		    sssd15-06persp.nl
		    sssd15-08.nl
		    sssd15-08persp.nl
		    sssd16-07.nl
		    sssd16-07persp.nl
		    sssd18-06.nl
		    sssd18-06persp.nl
		    sssd18-08.nl
		    sssd18-08persp.nl
		    sssd20-04.nl
		    sssd20-04persp.nl
		    sssd20-08.nl
		    sssd20-08persp.nl
		    sssd22-08.nl
		    sssd22-08persp.nl
		    sssd25-04.nl
		    sssd25-04persp.nl
		    sssd25-08.nl
		    sssd25-08persp.nl
		    st_bpaf1a.nl
		    st_bpaf1b.nl
		    st_bpk1.nl
		    st_bpv1.nl
		    st_bpv2.nl
		    st_bsj2.nl
		    st_bsj3.nl
		    st_bsj4.nl
		    st_cqpf.nl
		    st_cqpjk1.nl
		    st_cqpjk2.nl
		    st_e01.nl
		    st_e02.nl
		    st_e03.nl
		    st_e04.nl
		    st_e05.nl
		    st_e06.nl
		    st_e07.nl
		    st_e08.nl
		    st_e09.nl
		    st_e11.nl
		    st_e12.nl
		    st_e13.nl
		    st_e14.nl
		    st_e15.nl
		    st_e16.nl
		    st_e17.nl
		    st_e18.nl
		    st_e19.nl
		    st_e21.nl
		    st_e22.nl
		    st_e23.nl
		    st_e24.nl
		    st_e25.nl
		    st_e26.nl
		    st_e27.nl
		    st_e28.nl
		    st_e29.nl
		    st_e30.nl
		    st_e31.nl
		    st_e32.nl
		    st_e33.nl
		    st_e34.nl
		    st_e35.nl
		    st_e36.nl
		    st_e37.nl
		    st_e38.nl
		    st_e40.nl
		    st_e41.nl
		    st_e42.nl
		    st_fp7a.nl
		    st_fp7b.nl
		    st_fp7c.nl
		    st_fp7d.nl
		    st_fp7e.nl
		    st_fp8.nl
		    st_glmp_fp1.nl
		    st_glmp_fp2.nl
		    st_glmp_fp3.nl
		    st_glmp_kk90.nl
		    st_glmp_kk92.nl
		    st_glmp_kky.nl
		    st_glmp_ss1.nl
		    st_glmp_ss2.nl
		    st_ht.nl
		    st_iqpbk1.nl
		    st_iqpbk2.nl
		    st_jcbpaf2.nl
		    st_m1.nl
		    st_m2.nl
		    st_miqp1.nl
		    st_miqp2.nl
		    st_miqp3.nl
		    st_miqp4.nl
		    st_miqp5.nl
		    stockcycle.nl
		    st_pan1.nl
		    st_ph10.nl
		    st_ph11.nl
		    st_ph12.nl
		    st_ph13.nl
		    st_ph14.nl
		    st_ph15.nl
		    st_ph1.nl
		    st_ph20.nl
		    st_ph2.nl
		    st_ph3.nl
		    st_phex.nl
		    st_qpc-m0.nl
		    st_qpc-m1.nl
		    st_qpc-m3a.nl
		    st_qpc-m3b.nl
		    st_qpc-m3c.nl
		    st_qpc-m4.nl
		    st_qpk1.nl
		    st_qpk2.nl
		    st_qpk3.nl
		    st_robot.nl
		    st_rv1.nl
		    st_rv2.nl
		    st_rv3.nl
		    st_rv7.nl
		    st_rv8.nl
		    st_rv9.nl
		    st_test1.nl
		    st_test2.nl
		    st_test3.nl
		    st_test4.nl
		    st_test5.nl
		    st_test6.nl
		    st_test8.nl
		    st_testgr1.nl
		    st_testgr3.nl
		    st_testph4.nl
		    st_z.nl
		    super1.nl
		    super2.nl
		    super3.nl
		    super3t.nl
		    supplychain.nl
		    supplychainp1_020306.nl
		    supplychainp1_022020.nl
		    supplychainp1_030510.nl
		    supplychainp1_053050.nl
		    supplychainr1_020306.nl
		    supplychainr1_022020.nl
		    supplychainr1_030510.nl
		    supplychainr1_053050.nl
		    syn05h.nl
		    syn05m02h.nl
		    syn05m02m.nl
		    syn05m03h.nl
		    syn05m03m.nl
		    syn05m04h.nl
		    syn05m04m.nl
		    syn05m.nl
		    syn10h.nl
		    syn10m02h.nl
		    syn10m02m.nl
		    syn10m03h.nl
		    syn10m03m.nl
		    syn10m04h.nl
		    syn10m04m.nl
		    syn10m.nl
		    syn15h.nl
		    syn15m02h.nl
		    syn15m02m.nl
		    syn15m03h.nl
		    syn15m03m.nl
		    syn15m04h.nl
		    syn15m04m.nl
		    syn15m.nl
		    syn20h.nl
		    syn20m02h.nl
		    syn20m02m.nl
		    syn20m03h.nl
		    syn20m03m.nl
		    syn20m04h.nl
		    syn20m04m.nl
		    syn20m.nl
		    syn30h.nl
		    syn30m02h.nl
		    syn30m02m.nl
		    syn30m03h.nl
		    syn30m03m.nl
		    syn30m04h.nl
		    syn30m04m.nl
		    syn30m.nl
		    syn40h.nl
		    syn40m02h.nl
		    syn40m02m.nl
		    syn40m03h.nl
		    syn40m03m.nl
		    syn40m04h.nl
		    syn40m04m.nl
		    syn40m.nl
		    synheat.nl
		    synthes1.nl
		    synthes2.nl
		    synthes3.nl
		    tanksize.nl
		    telecomsp_metro.nl
		    telecomsp_njlata.nl
		    telecomsp_nor_sun.nl
		    telecomsp_pacbell.nl
		    tln12.nl
		    tln2.nl
		    tln4.nl
		    tln5.nl
		    tln6.nl
		    tln7.nl
		    tloss.nl
		    tls12.nl
		    tls2.nl
		    tls4.nl
		    tls5.nl
		    tls6.nl
		    tls7.nl
		    tltr.nl
		    torsion100.nl
		    torsion25.nl
		    torsion50.nl
		    torsion75.nl
		    transswitch0009p.nl
		    transswitch0009r.nl
		    transswitch0014p.nl
		    transswitch0014r.nl
		    transswitch0030p.nl
		    transswitch0030r.nl
		    transswitch0039p.nl
		    transswitch0039r.nl
		    transswitch0057p.nl
		    transswitch0057r.nl
		    transswitch0118p.nl
		    transswitch0118r.nl
		    transswitch0300p.nl
		    transswitch0300r.nl
		    transswitch2383wpp.nl
		    transswitch2383wpr.nl
		    transswitch2736spp.nl
		    transswitch2736spr.nl
		    tricp.nl
		    trig.nl
		    trigx.nl
		    tspn05.nl
		    tspn08.nl
		    tspn10.nl
		    tspn12.nl
		    tspn15.nl
		    turkey.nl
		    unitcommit1.nl
		    unitcommit2.nl
		    uselinear.nl
		    util.nl
		    var_con10.nl
		    var_con5.nl
		    wager.nl
		    wall.nl
		    waste.nl
		    wastepaper3.nl
		    wastepaper4.nl
		    wastepaper5.nl
		    wastepaper6.nl
		    wastewater02m1.nl
		    wastewater02m2.nl
		    wastewater04m1.nl
		    wastewater04m2.nl
		    wastewater05m1.nl
		    wastewater05m2.nl
		    wastewater11m1.nl
		    wastewater11m2.nl
		    wastewater12m1.nl
		    wastewater12m2.nl
		    wastewater13m1.nl
		    wastewater13m2.nl
		    wastewater14m1.nl
		    wastewater14m2.nl
		    wastewater15m1.nl
		    wastewater15m2.nl
		    water3.nl
		    water4.nl
		    watercontamination0202.nl
		    watercontamination0202r.nl
		    watercontamination0303.nl
		    watercontamination0303r.nl
		    waterful2.nl
		    waternd1.nl
		    waternd2.nl
		    water.nl
		    waterno2_01.nl
		    waterno2_02.nl
		    waterno2_03.nl
		    waterno2_04.nl
		    waterno2_06.nl
		    waterno2_09.nl
		    waterno2_12.nl
		    waterno2_18.nl
		    waterno2_24.nl
		    watersbp.nl
		    waters.nl
		    watersym1.nl
		    watersym2.nl
		    watertreatnd_conc.nl
		    watertreatnd_flow.nl
		    waterund01.nl
		    waterund08.nl
		    waterund11.nl
		    waterund14.nl
		    waterund17.nl
		    waterund18.nl
		    waterund22.nl
		    waterund25.nl
		    waterund27.nl
		    waterund28.nl
		    waterund32.nl
		    waterund36.nl
		    waterx.nl
		    waterz.nl
		    weapons.nl
		    windfac.nl)

add_ipopt_test_list(ampl ipopt_minlplib IPOPT_TEST_LIST "NL;IPOPT;MINLPLIB" 30)

if (NOT COIN_TESTS_DISABLE_TIMEOUT)
  set_tests_properties(ampl_pb302095_nl_ipopt_minlplib             PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_pb302055_nl_ipopt_minlplib             PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_pb302035_nl_ipopt_minlplib             PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_pb351595_nl_ipopt_minlplib             PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_pb302075_nl_ipopt_minlplib             PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_pb351535_nl_ipopt_minlplib             PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_pb351575_nl_ipopt_minlplib             PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_pb351555_nl_ipopt_minlplib             PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_telecomsp_nor_sun_nl_ipopt_minlplib    PROPERTIES TIMEOUT 2000)
  set_tests_properties(ampl_elec200_nl_ipopt_minlplib              PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_densitymod_nl_ipopt_minlplib           PROPERTIES TIMEOUT 800)
  set_tests_properties(ampl_gams03_nl_ipopt_minlplib               PROPERTIES TIMEOUT 200)
  set_tests_properties(ampl_telecomsp_metro_nl_ipopt_minlplib      PROPERTIES TIMEOUT 18000)
  set_tests_properties(ampl_supplychainp1_053050_nl_ipopt_minlplib PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_nuclear10b_nl_ipopt_minlplib           PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_nuclear104_nl_ipopt_minlplib           PROPERTIES TIMEOUT 16000)
  set_tests_properties(ampl_nuclear10a_nl_ipopt_minlplib           PROPERTIES TIMEOUT 360)
  set_tests_properties(ampl_arki0011_nl_ipopt_minlplib             PROPERTIES TIMEOUT 300)
  set_tests_properties(ampl_milinfract_nl_ipopt_minlplib           PROPERTIES TIMEOUT 800)
  set_tests_properties(ampl_crudeoil_lee2_10_nl_ipopt_minlplib     PROPERTIES TIMEOUT 1100)
  set_tests_properties(ampl_crudeoil_lee4_07_nl_ipopt_minlplib     PROPERTIES TIMEOUT 1900)
  set_tests_properties(ampl_gasprod_sarawak81_nl_ipopt_minlplib    PROPERTIES TIMEOUT 180)
  set_tests_properties(ampl_squfl030_150persp_nl_ipopt_minlplib    PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_lee4_08_nl_ipopt_minlplib     PROPERTIES TIMEOUT 1200)
  set_tests_properties(ampl_crudeoil_lee3_09_nl_ipopt_minlplib     PROPERTIES TIMEOUT 1000)
  set_tests_properties(ampl_arki0009_nl_ipopt_minlplib             PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_telecomsp_njlata_nl_ipopt_minlplib     PROPERTIES TIMEOUT 21600)
  set_tests_properties(ampl_supplychainr1_053050_nl_ipopt_minlplib PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_lee4_10_nl_ipopt_minlplib     PROPERTIES TIMEOUT 7200)
  set_tests_properties(ampl_crudeoil_lee4_06_nl_ipopt_minlplib     PROPERTIES TIMEOUT 660)
  set_tests_properties(ampl_crudeoil_lee3_08_nl_ipopt_minlplib     PROPERTIES TIMEOUT 900)
  set_tests_properties(ampl_squfl040_080persp_nl_ipopt_minlplib    PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_crudeoil_lee3_10_nl_ipopt_minlplib     PROPERTIES TIMEOUT 1800)
  set_tests_properties(ampl_crudeoil_li21_nl_ipopt_minlplib        PROPERTIES TIMEOUT 180)
  set_tests_properties(ampl_crudeoil_lee4_05_nl_ipopt_minlplib     PROPERTIES TIMEOUT 660)
  set_tests_properties(ampl_crudeoil_lee2_07_nl_ipopt_minlplib     PROPERTIES TIMEOUT 800)
  set_tests_properties(ampl_crudeoil_lee4_09_nl_ipopt_minlplib     PROPERTIES TIMEOUT 3600)
  set_tests_properties(ampl_crudeoil_lee3_07_nl_ipopt_minlplib     PROPERTIES TIMEOUT 800)
  set_tests_properties(ampl_crudeoil_lee1_10_nl_ipopt_minlplib     PROPERTIES TIMEOUT 180)
  set_tests_properties(ampl_crudeoil_lee1_09_nl_ipopt_minlplib     PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_li11_nl_ipopt_minlplib        PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_lee2_09_nl_ipopt_minlplib     PROPERTIES TIMEOUT 1200)
  set_tests_properties(ampl_crudeoil_lee3_06_nl_ipopt_minlplib     PROPERTIES TIMEOUT 600)
  set_tests_properties(ampl_crudeoil_lee2_06_nl_ipopt_minlplib     PROPERTIES TIMEOUT 180)
  set_tests_properties(ampl_pooling_epa3_nl_ipopt_minlplib         PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_lee2_05_nl_ipopt_minlplib     PROPERTIES TIMEOUT 240)
  set_tests_properties(ampl_crudeoil_lee2_08_nl_ipopt_minlplib     PROPERTIES TIMEOUT 600)
  set_tests_properties(ampl_crudeoil_li06_nl_ipopt_minlplib        PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_gasprod_sarawak16_nl_ipopt_minlplib    PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_li03_nl_ipopt_minlplib        PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_crudeoil_li05_nl_ipopt_minlplib        PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_crudeoil_lee1_07_nl_ipopt_minlplib     PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_fuzzy_nl_ipopt_minlplib                PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_super1_nl_ipopt_minlplib               PROPERTIES TIMEOUT 60)
  set_tests_properties(ampl_crudeoil_lee1_08_nl_ipopt_minlplib     PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_case_1scv2_nl_ipopt_minlplib           PROPERTIES TIMEOUT 660)
  set_tests_properties(ampl_crudeoil_lee3_05_nl_ipopt_minlplib     PROPERTIES TIMEOUT 400)
  set_tests_properties(ampl_crudeoil_lee1_05_nl_ipopt_minlplib     PROPERTIES TIMEOUT 120)
  set_tests_properties(ampl_telecomsp_pacbell_nl_ipopt_minlplib    PROPERTIES TIMEOUT 2600)
endif ()

set_tests_properties(ampl_arki0012_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_arki0013_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_arki0014_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_casctanks_nl_ipopt_minlplib             PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_eq6_1_nl_ipopt_minlplib                 PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_heatexch_trigen_nl_ipopt_minlplib       PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_kall_ellipsoids_tc02b_nl_ipopt_minlplib PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_kall_ellipsoids_tc03c_nl_ipopt_minlplib PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_lip_nl_ipopt_minlplib                   PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_portfol_buyin_nl_ipopt_minlplib         PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_portfol_card_nl_ipopt_minlplib          PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_portfol_roundlot_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_primary_nl_ipopt_minlplib               PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_st_e04_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_st_e11_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_st_e12_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_st_e15_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_st_e21_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_st_e35_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_watertreatnd_conc_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")
set_tests_properties(ampl_watertreatnd_flow_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;FAIL")

set_tests_properties(ampl_pb302035_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_pb302075_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_pb351535_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_telecomsp_nor_sun_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_densitymod_nl_ipopt_minlplib            PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_gams03_nl_ipopt_minlplib                PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_telecomsp_metro_nl_ipopt_minlplib       PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_nuclear10b_nl_ipopt_minlplib            PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_nuclear104_nl_ipopt_minlplib            PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_nuclear10a_nl_ipopt_minlplib            PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_arki0011_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_milinfract_nl_ipopt_minlplib            PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee2_10_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee4_07_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_gasprod_sarawak81_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_squfl030_150persp_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee4_08_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee3_09_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_arki0009_nl_ipopt_minlplib              PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_telecomsp_njlata_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_supplychainr1_053050_nl_ipopt_minlplib  PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee4_10_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee4_06_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee3_08_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee3_10_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_li21_nl_ipopt_minlplib         PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee4_05_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee2_07_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee4_09_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee3_07_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee1_10_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee1_09_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_li11_nl_ipopt_minlplib         PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee2_09_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee3_06_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee2_06_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_pooling_epa3_nl_ipopt_minlplib          PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee2_05_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee2_08_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_li06_nl_ipopt_minlplib         PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_gasprod_sarawak16_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_li03_nl_ipopt_minlplib         PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee1_07_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee1_08_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_case_1scv2_nl_ipopt_minlplib            PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee3_05_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_crudeoil_lee1_05_nl_ipopt_minlplib      PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")
set_tests_properties(ampl_telecomsp_pacbell_nl_ipopt_minlplib     PROPERTIES LABELS "NL;IPOPT;MINLPLIB;LONG")

set_tests_properties(ampl_4stufen_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_abel_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_alan_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_alkylation_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_alkyl_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0001_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0002_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0003_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_arki0004_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0008_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_arki0009_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0010_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0015_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0016_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_arki0017_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0018_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0019_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0020_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0021_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_arki0023_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_autocorr_bern20_03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern20_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern20_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern20_15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern25_03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern25_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern25_13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern25_19_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern25_25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern30_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern30_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern30_15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern30_23_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern30_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern35_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern35_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern35_18_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern35_26_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern35_35fix_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern35_35_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern40_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern40_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern40_20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern40_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern40_40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern45_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern45_11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern45_23_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern45_34_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern45_45_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern50_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern50_13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern50_25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern50_38_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern50_50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern55_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern55_14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern55_28_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern55_41_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern55_55_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern60_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern60_15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern60_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern60_45_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_autocorr_bern60_60_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk2_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk2_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk3_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk3_20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk3_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk4_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk4_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ball_mk4_15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_batch0812_nc_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batch0812_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batchdes_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batch_nc_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batch_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batchs101006m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batchs121208m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batchs151208m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_batchs201210m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_bayes2_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_bayes2_20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_bayes2_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_bayes2_50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_bchoco05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_bchoco06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_bchoco07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_bchoco08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_bearing_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_beuster_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_blend029_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_blend146_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_blend480_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_blend531_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_blend718_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_blend721_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_blend852_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_btest14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_camcns_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_camshape100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_camshape200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_camshape400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_camshape800_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cardqp_inlp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cardqp_iqp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_carton7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_carton9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_case_1scv2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_catmix100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Problem has too few degrees of freedom.")
set_tests_properties(ampl_catmix200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_catmix400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_catmix800_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_cecil_13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cesam2log_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chain100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chain200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chain400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chain50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chakra_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chance_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chem_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chenery_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_chp_partload_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_circle_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0203h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0203m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0204h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0204m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0205h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0205m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0303h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0303m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0304h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0304m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0305h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_clay0305m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_color_lab2_4x0_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_color_lab6b_4x20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_contvar_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_crossdock_15x7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_crossdock_15x8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_crudeoil_lee1_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee1_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_crudeoil_lee1_07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_crudeoil_lee1_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_crudeoil_lee1_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee1_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_crudeoil_lee2_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_crudeoil_lee2_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee2_07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee2_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee2_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee2_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee3_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee3_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee3_07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee3_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee3_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee3_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee4_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee4_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee4_07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee4_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee4_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_lee4_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_li01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_crudeoil_li02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_crudeoil_li03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_li05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_li06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_li11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_crudeoil_li21_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_csched1a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_csched1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_csched2a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_csched2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_cvxnonsep_normcon20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_normcon20r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_normcon30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_normcon30r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_normcon40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_normcon40r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_nsig20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_nsig20r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_nsig30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_nsig30r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_nsig40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_nsig40r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_pcon20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_pcon20r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_pcon30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_pcon30r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_pcon40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_pcon40r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_psig20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_psig20r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_psig30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_psig30r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_psig40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_cvxnonsep_psig40r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_deb10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_deb6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_deb7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_deb8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_deb9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_demo7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_densitymod_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_dispatch_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_du_opt5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_du_opt_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_edgecross10_010_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_020_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_030_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_040_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_050_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_060_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_070_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_080_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross10_090_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_019_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_039_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_058_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_078_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_098_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_117_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_137_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_156_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross14_176_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross20_040_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross20_080_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross22_048_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross22_096_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross24_057_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_edgecross24_115_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_eg_all_s_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Problem has too few degrees of freedom.")
set_tests_properties(ampl_eg_disc2_s_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_eg_disc_s_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_eg_int_s_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_elec100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_elec200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_elec25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_elec50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_elf_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_emfl050_3_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_emfl050_5_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_emfl100_3_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_emfl100_5_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_eniplac_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_enpro48pb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_enpro56pb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_etamac_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ethanolh_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ethanolm_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1221_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1222_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1223a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1223b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1223_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex1224_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1225_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1226_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1233_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1243_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1244_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed")
set_tests_properties(ampl_ex1252a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1252_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1263a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1263_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1264a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1264_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1265a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1265_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1266a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex1266_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex14_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_1_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex14_2_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_2_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex14_2_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_2_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex14_2_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_2_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex14_2_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex14_2_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex2_1_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex2_1_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex3_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex3_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex3_1_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex3_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex3pb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex4_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex4_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex4_1_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex4_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex4_1_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex4_1_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex4_1_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex4_1_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex4_1_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_2_2_case1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_2_2_case2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_2_2_case3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_2_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_ex5_2_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_3_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_3_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_4_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_4_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex5_4_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_1_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex6_2_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex6_2_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex6_2_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_ex7_2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex7_2_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex7_2_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex7_2_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex7_3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex7_3_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex7_3_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex7_3_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex7_3_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex7_3_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_ex8_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex8_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_1_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex8_1_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex8_1_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_1_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ex8_2_1b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_2_2b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_2_3b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_2_4b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_2_5b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_3_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_4_8_bnd_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_5_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_5_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_5_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_5_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_5_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_6_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex8_6_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_1_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_ex9_1_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_1_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_1_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_1_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_ex9_2_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_ex9_2_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_2_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_2_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_2_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_2_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ex9_2_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fac1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fac2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fac3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_faclay20h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay30h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay33_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay35_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay60_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay70_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_faclay80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fdesign10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fdesign25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fdesign50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_feedtray2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_feedtray_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_filter_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fin2bb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay05h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay05m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay06h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flay06m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_flowchan100fix_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_flowchan200fix_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_flowchan400fix_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_flowchan50fix_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_ar2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_ar25_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_ar3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_ar5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo8_ar2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo8_ar25_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo8_ar3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo8_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo8_ar5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo9_ar2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo9_ar25_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo9_ar3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo9_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo9_ar5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fo9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_fuel_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_fuzzy_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_gams01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gams02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gams03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gancns_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gasnet_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gasoil100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gasoil200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gasoil400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gasoil50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gasprod_sarawak01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gasprod_sarawak16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_gasprod_sarawak81_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_gastrans040_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans135_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cold13_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cold13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cold17_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cold17_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cool12_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cool12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cool14_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_cool14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_freezing27_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_freezing27_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_freezing30_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_freezing30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_mild10_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_mild10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_mild11_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_mild11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_warm15_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_warm15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_warm31_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans582_warm31_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gastrans_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gbd_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gear2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gear3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_gear4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gear_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_genpooling_lee1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_genpooling_lee2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_genpooling_meyer04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_genpooling_meyer10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_genpooling_meyer15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ghg_1veh_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ghg_2veh_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ghg_3veh_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gkocis_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_glider100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_glider200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Problem has too few degrees of freedom.")
set_tests_properties(ampl_glider400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_glider50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_graphpart_2g_0044_1601_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2g_0055_0062_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2g_0066_0066_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2g_0077_0077_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2g_0088_0088_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2g_0099_9211_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2g_1010_0824_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2pm_0044_0044_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2pm_0055_0055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2pm_0066_0066_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2pm_0077_0777_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2pm_0088_0888_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_2pm_0099_0999_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3g_0234_0234_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3g_0244_0244_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3g_0333_0333_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3g_0334_0334_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3g_0344_0344_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3g_0444_0444_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3pm_0234_0234_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3pm_0244_0244_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3pm_0333_0333_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3pm_0334_0334_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3pm_0344_0344_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_3pm_0444_0444_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_clique_20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_clique_30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_clique_40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_clique_50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_clique_60_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_graphpart_clique_70_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gsg_0001_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_gtm_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hadamard_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hadamard_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hadamard_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hadamard_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hadamard_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_harker_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_haverly_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hda_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_heatexch_gen1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_heatexch_gen2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_heatexch_gen3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_heatexch_spec1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_heatexch_spec2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_heatexch_spec3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_hhfair_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_himmel11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_himmel16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hmittelman_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_house_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hs62_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_hvycrash_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_hybriddynamic_fixedcc_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hybriddynamic_fixed_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hybriddynamic_varcc_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hybriddynamic_var_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hydroenergy1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hydroenergy2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hydroenergy3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_hydro_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ibs2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_immun_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_infeas1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ising2_5_300_5555_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_jbearing100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_jbearing25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_jbearing50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_jbearing75_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_jit1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_johnall_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circles_c6a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circles_c6b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circles_c6c_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circles_c7a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circles_c8a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlespolygons_c1p11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlespolygons_c1p12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlespolygons_c1p13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlespolygons_c1p5a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlespolygons_c1p5b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_circlespolygons_c1p6a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_circlesrectangles_c1r11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlesrectangles_c1r12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlesrectangles_c1r13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlesrectangles_c6r1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_circlesrectangles_c6r29_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_circlesrectangles_c6r39_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_congruentcircles_c31_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c32_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c41_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c42_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c51_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c52_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c61_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c62_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c63_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c71_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_congruentcircles_c72_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_diffcircles_10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_diffcircles_5a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_diffcircles_5b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_diffcircles_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_diffcircles_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_kall_diffcircles_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_diffcircles_9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_kall_ellipsoids_tc05a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_knp3_12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_knp4_24_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_knp5_40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_knp5_41_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_knp5_42_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_knp5_43_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_knp5_44_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_korcns_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_kport20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_kport40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_lakes_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_launch_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_least_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_like_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_linear_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_lnts100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_lnts200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_lnts400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_lnts50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_lop97ic_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_lop97icx_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_m3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m7_ar2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m7_ar25_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m7_ar3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m7_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m7_ar5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_m7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_mathopt1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_mathopt5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt5_8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mathopt6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_maxmineig2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_maxmin_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_mbtd_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_meanvar_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_meanvarx_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_meanvarxsc_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_methanol100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_methanol200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_methanol400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_methanol50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_mhw4d_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_milinfract_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_minlphi_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_minlphix_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_minsurf100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_minsurf25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_minsurf50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_minsurf75_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_multiplants_mtg1a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_mtg1b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_mtg1c_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_mtg2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_mtg5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_mtg6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_stg1a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_stg1b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_stg1c_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_stg1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_stg5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_multiplants_stg6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_ndcc12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc12persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc13persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc14persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc15persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ndcc16persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nemhaus_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_netmod_dol1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_netmod_dol2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_netmod_kar1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_netmod_kar2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_no7_ar2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_no7_ar25_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_no7_ar3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_no7_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_no7_ar5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_nous1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nous2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_nuclear104_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_nuclear10a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear10b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear14a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear14b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear25a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear25b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear49a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear49b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclear49_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclearva_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclearvb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclearvc_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclearvd_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclearve_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nuclearvf_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_nvs06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs17_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs18_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs19_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs21_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs22_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs23_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_nvs24_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_o7_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o7_ar2_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o7_ar25_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o7_ar3_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o7_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o7_ar5_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o8_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_o9_ar4_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_oaer_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_oil2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_oil_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ortez_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_orth_d3m6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_orth_d4m6_pl_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_otpop_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_parallel_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_pb302035_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb302055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb302075_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb302095_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb351535_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb351555_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb351575_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pb351595_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pedigree_sp_top4_350tr_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pindyck_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pinene100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pinene200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pinene50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pointpack02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pointpack04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pointpack06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pointpack08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pointpack10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pointpack12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pointpack14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_pollut_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_polygon100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_polygon25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_polygon50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_polygon75_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya1pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya1stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_pooling_adhya1tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya2pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya2stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_pooling_adhya2tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya3pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya3stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_pooling_adhya3tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya4pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_adhya4tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_bental4pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_bental4stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_pooling_bental4tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_bental5pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_bental5tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_digabel16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_digabel19_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_pooling_epa1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_pooling_epa2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_pooling_epa3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_pooling_foulds2pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_foulds2stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_pooling_foulds2tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly1pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly1stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_pooling_haverly1tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly2pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly2stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly2tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly3pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_haverly3stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_pooling_haverly3tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_rt2pq_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_rt2stp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_pooling_rt2tp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_popdynm100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_popdynm200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_popdynm25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_popdynm50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_portfol_classical050_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_classical200_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_robust050_34_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_robust100_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_robust200_03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_shortfall050_68_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_shortfall100_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_portfol_shortfall200_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_powerflow0009p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0009r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0014p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0014r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0030p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0030r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0039p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0039r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0057p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0057r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0118p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0118r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0300p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow0300r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow2383wpp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow2383wpr_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow2736spp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_powerflow2736spr_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_prob02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_prob03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_prob06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_prob07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_prob09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_prob10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_process_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_procsel_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_procsyn_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_product2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_product_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_prolog_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_qap_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_qapw_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_qp2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_qp3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_qp4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_qspp_0_10_0_1_10_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_qspp_0_11_0_1_10_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_qspp_0_12_0_1_10_1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_ramsey_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_ravempb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rbrock_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_risk2bpb_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_robot100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Iterates diverging; problem might be unbounded.")
set_tests_properties(ampl_robot200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Iterates diverging; problem might be unbounded.")
set_tests_properties(ampl_robot400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Iterates diverging; problem might be unbounded.")
set_tests_properties(ampl_robot50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Iterates diverging; problem might be unbounded.")
set_tests_properties(ampl_rocket100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rocket200_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rocket400_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rocket50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_routingdelay_bigm_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_routingdelay_proj_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_rsyn0805h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0805m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0810m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0815m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0820m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0830m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_rsyn0840m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_saa_2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sambal_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sample_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sep1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sepasequ_complex_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sepasequ_convent_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_sfacloc1_2_80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_2_90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_2_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_3_80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_3_90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_3_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_4_80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_4_90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc1_4_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_2_80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_2_90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_2_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_3_80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_3_90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_3_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_4_80_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_4_90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sfacloc2_4_95_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_shiporig_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay05h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay05m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay06h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay06m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay07h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay07m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay08h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay08m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay09h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay09m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay10h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_slay10m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_smallinvDAXr1b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr1b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr1b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr1b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr1b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr1b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr2b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr2b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr2b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr2b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr2b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr2b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr3b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr3b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr3b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr3b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr3b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr3b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr4b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr4b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr4b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr4b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr4b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr4b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr5b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr5b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr5b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr5b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr5b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvDAXr5b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr1b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr1b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr1b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr1b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr1b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr1b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr2b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr2b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr2b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr2b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr2b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr2b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr3b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr3b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr3b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr3b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr3b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr3b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr4b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr4b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr4b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr4b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr4b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr4b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr5b010_011_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr5b020_022_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr5b050_055_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr5b100_110_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr5b150_165_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_smallinvSNPr5b200_220_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sonet22v5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sonet23v4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sonet24v5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sonetgr17_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_space25a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_space25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_space960_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_spectra2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament18_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament22_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament24_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament26_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament28_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament32_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament34_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament36_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament38_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament42_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament44_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament46_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament48_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_sporttournament50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_spring_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl010_025_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl010_025persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl010_040_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl010_040persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl010_080_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl010_080persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl015_060_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl015_060persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl015_080_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl015_080persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl020_040_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl020_040persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl020_050_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl020_050persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl020_150_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl020_150persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl025_025_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl025_025persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl025_030_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl025_030persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl025_040_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl025_040persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl030_100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl030_100persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl030_150_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl030_150persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_squfl040_080_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_squfl040_080persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_srcpm_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd08_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd08_04persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd12_05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd12_05persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd15_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd15_04persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd15_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd15_06persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd15_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd15_08persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd16_07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd16_07persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd18_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd18_06persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd18_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd18_08persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd20_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd20_04persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd20_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd20_08persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd22_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd22_08persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd25_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd25_04persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd25_08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_sssd25_08persp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bpaf1a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bpaf1b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bpk1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bpv1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bpv2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bsj2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bsj3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_bsj4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_cqpf_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_cqpjk1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_cqpjk2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_st_e03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_e07_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_e16_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e17_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e18_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_e19_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e22_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e23_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e24_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e26_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e27_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e28_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e29_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e30_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_e31_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e32_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e33_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e34_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e36_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_st_e37_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_e38_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e40_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_st_e41_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_e42_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_fp7a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_fp7b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_fp7c_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_fp7d_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_fp7e_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_fp8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_glmp_fp1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_fp2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_fp3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_kk90_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_kk92_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_kky_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_ss1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_glmp_ss2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_ht_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_iqpbk1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_iqpbk2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_jcbpaf2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_m2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_miqp1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_miqp2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_miqp3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_miqp4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_miqp5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_stockcycle_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_pan1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph13_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph20_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_ph3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_phex_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpc_m0_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpc_m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpc_m3a_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpc_m3b_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpc_m3c_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpc_m4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpk1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpk2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_qpk3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_robot_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_st_rv1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_rv2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_rv3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_rv7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_rv8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_rv9_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_test8_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_testgr1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_testgr3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_testph4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_st_z_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_super1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_super2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_super3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_super3t_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_supplychain_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_supplychainp1_020306_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_supplychainp1_022020_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_supplychainp1_030510_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_supplychainp1_053050_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_supplychainr1_020306_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_supplychainr1_022020_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_supplychainr1_030510_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Solved To Acceptable Level.")
set_tests_properties(ampl_supplychainr1_053050_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_syn05h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn05m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn10m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn15m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn20m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn30m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m02h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m02m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m03h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m03m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m04h_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m04m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_syn40m_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_synheat_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_synthes1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_synthes2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Restoration Failed!")
set_tests_properties(ampl_synthes3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tanksize_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_telecomsp_metro_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_telecomsp_njlata_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_telecomsp_nor_sun_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Not enough memory.")
set_tests_properties(ampl_telecomsp_pacbell_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Converged to a point of local infeasibility. Problem may be infeasible.")
set_tests_properties(ampl_tln12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tln2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tln4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tln5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tln6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tln7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tloss_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tls12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tls2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tls4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tls5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tls6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tls7_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tltr_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_torsion100_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_torsion25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_torsion50_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_torsion75_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0009p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0009r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0014p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0014r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0030p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0030r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0039p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0039r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0057p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0057r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0118p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0118r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0300p_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch0300r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch2383wpp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch2383wpr_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch2736spp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_transswitch2736spr_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_tricp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_trig_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_trigx_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_tspn05_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tspn08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tspn10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tspn12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_tspn15_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Maximum Number of Iterations Exceeded.")
set_tests_properties(ampl_turkey_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_unitcommit1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_unitcommit2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_uselinear_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_util_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_var_con10_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_var_con5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wager_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_wall_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waste_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_wastepaper3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastepaper4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastepaper5_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastepaper6_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater02m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater02m2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater04m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater05m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater11m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater11m2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater12m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater12m2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater13m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater13m2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater14m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater14m2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_wastewater15m1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_water3_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_water4_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_watercontamination0202_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_watercontamination0202r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_watercontamination0303_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_watercontamination0303r_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_waterful2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_waternd1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waternd2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_water_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_waterno2_01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_02_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_03_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_04_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_06_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_09_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_12_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_18_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterno2_24_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_watersbp_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_waters_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_watersym1_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_watersym2_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_waterund01_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund08_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund11_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund14_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund17_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund18_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund22_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund25_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund27_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund28_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund32_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterund36_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_waterx_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_waterz_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
set_tests_properties(ampl_weapons_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Optimal Solution Found.")
set_tests_properties(ampl_windfac_nl_ipopt_minlplib PROPERTIES PASS_REGULAR_EXPRESSION "EXIT: Invalid number in NLP function or derivative detected.")
