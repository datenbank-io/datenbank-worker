eval "echo \"$(<ecs-definition.json)\"" > ecs-definition.tmp.json
aws ecs register-task-definition --cli-input-json file://ecs-definition.tmp.json > output.json
export TASK_REVISION=`cat output.json | grep revision | awk '{print $2}'`
aws ecs update-service --cluster datenbank-worker-$CIRCLE_BRANCH --service worker --task-definition datenbank-worker:$TASK_REVISION