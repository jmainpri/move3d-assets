#************************************************************
# Scenario of Ikea
#
# date : Wed Dec 21 15:34:01 2011
#************************************************************

p3d_sel_desc_name P3D_ENV Ikea



p3d_sel_desc_name P3D_ROBOT Tabouret

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 1.565000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT HERAKLES_HUMAN1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 1.210000 1.260000 0.963000 0.000000 0.000000 -122.220000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 80.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -80.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT PR2_ROBOT

p3d_set_robot_steering_method Multi-Localpath
p3d_set_robot_radius 1.000000

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.562000 -0.330000 0.000000 0.000000 0.000000 40.176000 0.200000 0.000000 0.000000 0.000000 -8.087664 53.680611 0.000000 -106.307604 -153.454105 -52.614272 -166.847386 0.000000 0.000000 68.383746 51.197674 0.000000 -120.588572 46.874579 -51.231407 166.100008 0.000000 0.000000 0.000000 0.000000 0.000000 0.080000 -0.080000 0.944000 20.520000 21.024000 49.824000 -0.756000 0.206000 1.130000 -53.964000 -31.716000 -42.408000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000


p3d_constraint p3d_lin_rel_dofs 1 15 1 14 2 1.000000 0.000000 0

p3d_constraint p3d_lin_rel_dofs 1 25 1 24 2 1.000000 0.000000 0

p3d_constraint p3d_pr2_arm_ik 7 6 7 9 10 11 12 13 1 32 0 1 8
p3d_set_cntrt_Tatt 2 1.000000 0.000000 0.000000 -0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000
p3d_set_cntrt_Tatt2 2 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_pr2_arm_ik 7 16 17 19 20 21 22 23 1 33 0 1 18
p3d_set_cntrt_Tatt 3 1.000000 0.000000 0.000000 -0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000
p3d_set_cntrt_Tatt2 3 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_set_object_base_and_arm_constraints 32 1 0 2 2 3
p3d_set_arm_data 2 3 32
p3d_set_arm_data 3 3 33


p3d_set_camera_pos -0.115305 0.546144 0.582875 2.921880 5.465685 0.786875 0.000000 0.000000 1.000000 0.000000
