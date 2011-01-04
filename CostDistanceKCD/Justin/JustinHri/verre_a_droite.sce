#************************************************************
# Scenario of Test
#
# date : Wed Nov 12 19:28:26 2008
#************************************************************

p3d_sel_desc_name P3D_ENV Test



p3d_sel_desc_name P3D_ROBOT justin

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -7.866273 -3.539824 40.951328 -37.411504 0.000000 0.000000 56.833824 -87.315628 -65.191734 54.277283 71.878075 -19.987707 40.575218 -15.000000 -46.000000 -8.000000 120.000000 138.000000 62.000000 29.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -4.000000 -19.500000 28.300000 -8.800000 0.000000 0.000000 13.372668 -63.716812 -23.402164 79.056046 68.534904 -2.780238 25.530972 -15.000000 -46.000000 -8.000000 119.000000 138.000000 62.000000 29.000000


p3d_constraint_dof p3d_fixed_jnt 1 6 0 0 1 0.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 7 0 0 1 0.000000 0 1
p3d_constraint_dof p3d_min_max_dofs 0 2 3 2 0 0 2 0.000000 135.000000 0 1
p3d_constraint_dof p3d_lin_rel_dofs 1 4 0 2 2 3 0 0 3 -1.000000 -1.000000 0.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 17 0 0 1 -15.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 18 0 0 1 -46.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 19 0 0 1 -8.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 20 0 0 1 119.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 21 0 0 1 138.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 22 0 0 1 62.000000 0 1
p3d_constraint_dof p3d_fixed_jnt 1 23 0 0 1 29.000000 0 1
