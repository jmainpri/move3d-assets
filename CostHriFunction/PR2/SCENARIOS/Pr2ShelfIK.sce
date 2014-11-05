#************************************************************
# Scenario of Ikea
#
# date : Tue Nov  4 20:15:21 2014
#************************************************************

p3d_sel_desc_name P3D_ENV Ikea



p3d_sel_desc_name P3D_ROBOT PR2_ROBOT

p3d_set_robot_steering_method Multi-Localpath
p3d_set_robot_radius 1.000000

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.214000 0.128000 0.000000 0.000000 0.000000 88.848000 0.310000 0.000000 0.000000 0.000000 -29.658000 -1.697000 -68.418000 -64.013000 -177.648721 -23.235584 -102.289277 0.000000 0.000000 62.722436 62.809343 55.178000 -111.066998 66.624507 -84.702001 -124.447094 0.000000 0.000000 0.000000 0.000000 0.000000 -0.658159 -0.636884 0.770879 -69.115995 56.384752 89.899446 -1.234881 -0.003322 1.847014 -157.894117 64.889629 45.061291
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.214000 0.128000 0.000000 0.000000 0.000000 88.848000 0.310000 0.000000 0.000000 0.000000 -3.961000 30.247000 -78.602000 -24.191586 88.139141 -27.185497 -19.525648 0.000000 0.000000 62.722436 62.809343 55.178000 -111.066998 66.624507 -84.702001 -124.447094 0.000000 0.000000 0.000000 0.000000 0.000000 -0.723731 -0.693522 0.505230 -71.234978 52.127082 79.401288 -1.234881 -0.003322 1.847014 -157.894117 64.889629 45.061291


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


p3d_set_camera_pos -0.120427 0.778914 1.035771 1.786040 5.870685 0.246875 0.000000 0.000000 1.000000 0.000000

