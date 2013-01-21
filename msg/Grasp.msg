Header header

# An id for the grasp
string id

# The internal posture of the hand for the pre-grasp
# only positions are used
sensor_msgs/JointState pre_grasp_posture

# The internal posture of the hand for the grasp
# positions and efforts are used
sensor_msgs/JointState grasp_posture

# The position of the end-effector for the grasp relative to a reference frame 
# (that is always specified elsewhere, not in this message)
geometry_msgs/Pose grasp_pose

# The estimated probability of success for this grasp, or some other
# measure of how "good" it is.
float64 grasp_quality

# The approach direction
geometry_msgs/Vector3 approach_direction

# how far the pre-grasp should ideally be away from the grasp
float32 desired_approach_distance

# how much distance between pre-grasp and grasp must actually be feasible 
# for the grasp not to be rejected
float32 min_approach_distance

# The direction for gripper translation after the grasp is achieved
geometry_msgs/Vector3 translation_direction

# the desired translation distance
float32 desired_translation_distance

# the minimum translation distance
float32 min_translation_distance

# the maximum contact force to use while grasping (<=0 to disable)
float32 max_contact_force

# an optional list of obstacles that we have semantic information about
# and that can be touched/pushed/moved in the course of grasping
string[] allowed_touch_objects
