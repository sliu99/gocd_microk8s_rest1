
6/5/2019

//create pipeline
//run gocd dashboard
http://localhost:8153/go/admin/pipeline

Go to group dev
click link "Create a new pipeline within this group"

Step1 Basic Settings:
Pipeline Name: gocd_microk8s_rest1
Pipeline Group Name: dev            

Step2 Materials:
Material Type: Git
URL: https://github.com/sliu99/gocd_microk8s_rest1.git

Step3 stage/Job:
Stage Name: BuildStage

Job Name: buildSourceCode
Task Type: More
Command: /bin/sh
Arguments: build.sh

Click Finish button.
Click Stages tab
Click "Add new stage"

Then add a new stage TestStage in the same pipeline.
Job Name: testCode
Command: /bin/sh
Arguments: test.sh
Click Save button

In the Stages tab
click "Add new stage", 
Stage Name: CreateServiceStage
Job Name: createKubeServiceJob
Command: /bin/sh
Arguments: createService.sh


click "Add new stage", 
Stage Name: CreateDeploymentStage
Job Name: createKubeDeploymentJob
Command: /bin/sh
Arguments: createDeployment.sh


Then add a new stage DeployStage in the same pipeline.
Job Name: deployJob
Command: /bin/sh
Arguments: deploy.sh

Click "||" Pause icon on top to start pipleline


target (with jar files) is created at /var/lib/go-agent/pipelines/gocd_microk8s_rest1

======================================================



















