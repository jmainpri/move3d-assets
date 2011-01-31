#************************************************************
# Scenario of PickAndPlace
#
# date : Mon Jan 31 13:34:39 2011
#************************************************************

p3d_sel_desc_name P3D_ENV PickAndPlace



p3d_sel_desc_name P3D_ROBOT PaperDog

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.731707 -0.790244 0.614634 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT PR2_GRIPPER

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 5.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000


p3d_constraint p3d_lin_rel_dofs 1 3 1 2 2 1.000000 0.000000 0



p3d_sel_desc_name P3D_ROBOT PR2_GRIPPER_LEFT

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT ROBOT_PR2

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -21.935800 33.723556 0.000000 -62.200000 68.731707 0.000000 -46.712195 0.000000 0.000000 0.000000 0.000000 0.000000 58.843902 63.365854 7.292683 -36.980488 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.829268 -0.360976 0.614634 0.000000 0.000000 -0.878049
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 52.624446 44.692629 0.000000 -62.200000 68.731707 0.000000 -46.712195 0.000000 0.000000 0.000000 0.000000 0.000000 58.843902 63.365854 7.292683 -36.980488 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.536585 0.790244 0.614634 0.000000 0.000000 -132.585366
p3d_set_robot_config config_2 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 42.651909 45.127789 0.000000 -62.200000 68.731707 0.000000 -46.712195 0.000000 0.000000 0.000000 0.000000 0.000000 58.843902 63.365854 7.292683 -36.980488 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.536585 0.556098 0.614634 0.000000 0.000000 -65.853659
p3d_set_robot_config config_1 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -62.200000 68.731707 0.000000 -46.712195 0.000000 0.000000 0.000000 0.000000 0.000000 58.843902 63.365854 7.292683 -36.980488 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.673171 -0.731707 0.604878 0.000000 0.000000 72.878049


p3d_constraint p3d_lin_rel_dofs 1 14 1 13 2 1.000000 0.000000 0

p3d_constraint p3d_lin_rel_dofs 1 23 1 22 2 1.000000 0.000000 0

p3d_constraint p3d_pr2_arm_ik 6 6 7 9 10 11 12 1 30 0 2 8 1
p3d_set_cntrt_Tatt2 2 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_pr2_arm_ik 6 15 16 18 19 20 21 1 30 0 2 17 3
p3d_set_cntrt_Tatt2 3 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_head_object_track 2 3 4 1 30 0 0

p3d_set_object_base_and_arm_constraints 30 1 0 2 2 3
p3d_set_arm_data 2 -1 -1 -1 -1 3 30
p3d_set_arm_data 3 -1 -1 -1 -1 3 30


p3d_set_camera_pos 0.285279 0.052903 0.555738 2.373150 0.373125 0.623750 0.000000 0.000000 1.000000 0.000000

