#************************************************************
# Scenario of Ikea
#
# date : Fri Jan 30 15:07:22 2015
#************************************************************

p3d_sel_desc_name P3D_ENV Ikea



p3d_sel_desc_name P3D_ROBOT BIOMECH_HUMAN

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.640000 1.350000 1.000000 0.000000 0.000000 140.004000 0.000000 0.000000 0.000000 0.000000 0.000000 2.565000 -0.019000 0.314000 0.182000 1.620000 -21.096000 44.856000 0.320000 27.576000 -24.336000 0.000000 0.224000 0.000000 0.000000 0.000000 -81.612000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT PR2_ROBOT

p3d_set_robot_steering_method Multi-Localpath
p3d_set_robot_radius 1.000000

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.297000 1.183000 0.000000 0.000000 0.000000 57.816000 0.310000 0.000000 0.000000 0.000000 -131.000000 53.072000 -112.906000 -106.506000 -42.588000 -61.142000 -8.172000 0.000000 0.000000 62.722436 62.809343 55.178000 -111.066998 66.624507 -84.702001 -124.447094 0.000000 0.000000 0.000000 0.000000 0.000000 0.694049 -0.083752 -0.372325 -10.076042 -14.851375 16.639668 -1.239471 1.596754 1.847014 139.995816 59.117700 113.579542
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.297000 1.183000 0.000000 0.000000 0.000000 57.816000 0.310000 0.000000 0.000000 0.000000 -34.749000 -1.081000 -82.675000 -61.872000 116.100000 -53.217000 21.924000 0.000000 0.000000 62.722436 62.809343 55.178000 -111.066998 66.624507 -84.702001 -124.447094 0.000000 0.000000 0.000000 0.000000 0.000000 -1.037583 0.816411 0.616222 -116.691879 68.444179 -167.624912 -1.239471 1.596754 1.847014 139.995816 59.117700 113.579542


p3d_constraint p3d_lin_rel_dofs 1 15 1 14 2 1.000000 0.000000 0

p3d_constraint p3d_lin_rel_dofs 1 25 1 24 2 1.000000 0.000000 0

p3d_constraint p3d_pr2_arm_ik 7 6 7 9 10 11 12 13 1 32 0 1 8
p3d_set_cntrt_Tatt 2 1.000000 0.000000 0.000000 -0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000
p3d_set_cntrt_Tatt2 2 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_pr2_arm_ik 7 16 17 19 20 21 22 23 1 33 0 1 18
p3d_set_cntrt_Tatt 3 1.000000 0.000000 0.000000 -0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000
p3d_set_cntrt_Tatt2 3 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_fix_jnts_relpos 1 32 1 13 0 0
p3d_set_cntrt_Tatt 4 0.108741 0.898322 0.425669 -1.348574 -0.146047 0.437998 -0.887033 0.908189 -0.983283 0.034289 0.178825 -0.219585

p3d_constraint p3d_fix_jnts_relpos 1 33 1 23 0 0
p3d_set_cntrt_Tatt 5 0.299749 -0.300391 0.905492 -0.612883 -0.896519 -0.413220 0.159696 -0.483322 0.326196 -0.859660 -0.393168 0.910014

p3d_set_object_base_and_arm_constraints 32 1 0 2 2 3
p3d_set_arm_data 2 3 32
p3d_set_arm_data 3 3 33


p3d_set_camera_pos 0.231568 1.422280 1.030842 1.771112 1.233750 1.283750 0.000000 0.000000 1.000000 0.000000
