include: "/views/project.view"
include: "/views/project_member.view"
include: "/views/member.view"
include: "/views/project_snapshot.view"
include: "/views/task.view"
include: "/views/task_follower.view"
include: "/views/follower.view"
include: "/views/task_tag.view"
include: "/views/task_custom_field.view"
include: "/views/task_event.view"
include: "/views/task_snapshot.view"

explore: project {
  label: "Projects & Tasks"

  join: project_member {
    type: left_outer
    sql_on: ${project.project_id} = ${project_member.project_id} ;;
    relationship: one_to_many
  }

  join: member {
    type: left_outer
    sql_on: ${project_member.user_id} = ${member.user_id} ;;
    relationship: many_to_one
  }

  join: project_snapshot {
    type: left_outer
    sql_on: ${project.project_id} = ${project_snapshot.project_id} ;;
    relationship: one_to_many
  }

  join: task {
    type: left_outer
    sql_on: ${project.project_id} = ${task.project_id} ;;
    relationship: one_to_many
  }

  join: task_follower {
    type: left_outer
    sql_on: ${task.task_id} = ${task_follower.task_id} ;;
    relationship: one_to_many
  }

  join: follower {
    type: left_outer
    sql_on: ${task_follower.user_id} = ${follower.user_id} ;;
    relationship: many_to_one
  }

  join: task_tag {
    type: left_outer
    sql_on: ${task.task_id} = ${task_tag.task_id} ;;
    relationship: one_to_many
  }

  join: task_custom_field {
    type: left_outer
    sql_on: ${task.task_id} = ${task_custom_field.task_id} ;;
    relationship: one_to_many
  }

  join: task_event {
    type: left_outer
    sql_on: ${task.task_id} = ${task_event.task_id} ;;
    relationship: one_to_many
  }

  join: task_snapshot {
    type: left_outer
    sql_on: ${task.task_id} = ${task_snapshot.task_id} ;;
    relationship: one_to_many
  }
}
