#************************************************************
# Scenario of Ikea
#
# date : Wed Sep 21 16:02:25 2011
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

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.562000 -0.330000 0.000000 0.000000 0.000000 40.176000 0.200000 0.000000 0.000000 0.000000 -14.020947 52.588978 0.000000 -95.186895 -107.665008 -52.413701 164.813555 0.000000 0.000000 -8.585304 28.553537 0.000000 -124.637720 148.264703 -95.179899 176.804100 0.000000 0.000000 0.000000 0.000000 0.000000 0.080000 -0.080000 0.944000 20.520000 27.216000 75.924000 -0.186000 0.000000 1.130000 0.000000 0.000000 0.000000
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


p3d_set_camera_pos -0.232248 -0.149940 1.030175 1.493162 5.146935 0.822500 0.000000 0.000000 1.000000 0.000000
