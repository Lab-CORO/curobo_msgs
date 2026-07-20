std_msgs/Header header

# End-effector position error used for convergence/on_target (FK-based).
float64 fk_err_m

# Pose tracking error as computed by the solver itself (position/orientation,
# separate from fk_err_m which is computed independently via FK).
float64 pose_pos_err_m
float64 pose_rot_err_rad

# Cost terms (horizon-summed), from the optimization rollout's cost_cfg.
float64 cost_tool_pose_pos
float64 cost_tool_pose_orient
float64 cost_cspace

# Constraint terms (horizon-summed); 0 = no violation.
float64 con_self_collision
float64 con_scene_collision
float64 con_cspace_bound
