#************************************************************
# Scenario of Test
#
# date : Thu Jun  4 15:32:19 2009
#************************************************************

p3d_sel_desc_name P3D_ENV Test



p3d_sel_desc_name P3D_ROBOT barre

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 740.000000 -860.373657 1110.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 740.000000 -935.000000 1110.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT justin

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 16.519175 -22.123896 31.659294 -9.535398 0.000000 0.000000 81.907578 -88.495575 -56.833824 5.899701 93.608658 -9.540314 -3.672564 -15.000000 -46.000000 -8.000000 119.000000 138.000000 62.000000 29.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -19.665684 -22.123896 31.659294 -9.535398 0.000000 0.000000 -70.206482 -66.076698 1.671586 117.994110 93.608658 -9.540314 -3.672564 -15.000000 -46.000000 -8.000000 119.000000 138.000000 62.000000 29.000000


p3d_constraint_dof p3d_fixed_jnt 1 2 0 0 1 -22.123896 0 1
p3d_constraint_dof p3d_fixed_jnt 1 3 0 0 1 31.659294 0 1
p3d_constraint_dof p3d_fixed_jnt 1 4 0 0 1 -9.535398 0 1
p3d_constraint_dof p3d_fixed_jnt 1 6 0 0 1 0.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 7 0 0 1 0.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 13 0 0 1 93.608658 0 1
p3d_constraint_dof p3d_fixed_jnt 1 14 0 0 1 -9.540314 0 1
p3d_constraint_dof p3d_fixed_jnt 1 15 0 0 1 -3.672564 0 1
p3d_constraint_dof p3d_fixed_jnt 1 17 0 0 1 -15.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 18 0 0 1 -46.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 19 0 0 1 -8.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 20 0 0 1 119.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 21 0 0 1 138.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 22 0 0 1 62.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 23 0 0 1 29.000000 0 1
