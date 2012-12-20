cmake_minimum_required(VERSION 2.8.3)
project(manipulation_msgs)

set(MSG_DEPS
  std_msgs
  geometry_msgs
  sensor_msgs
  shape_msgs
  )

find_package(catkin REQUIRED genmsg ${MSG_DEPS})

set(
  MESSAGE_FILES
  CartesianGains.msg
  ClusterBoundingBox.msg
  DatabaseModelPose.msg
  GraspableObjectList.msg
  GraspableObject.msg
  Grasp.msg
  GraspPlanningErrorCode.msg
  GraspResult.msg
  GripperTranslation.msg
  ManipulationPhase.msg
  ManipulationResult.msg
  PlaceLocationResult.msg
  SceneRegion.msg
)

add_message_files(DIRECTORY msg FILES ${MSG_FILES})

generate_messages(DEPENDENCIES ${MSG_DEPS})

catkin_package()
