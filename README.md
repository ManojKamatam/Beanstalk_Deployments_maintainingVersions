# Beanstalk_Deployments_maintainingVersions

No need to terraform here, as we are not updating existing app versions and not creating any resource

Jenkins alone can handle the deployement...
Just creating application version and updating the environment...

aws elasticbeanstalk create-application-version \
                        --application-name ${APPLICATION_NAME} \
                        --version-label ${VERSION_LABEL} \
                        --source-bundle S3Bucket=${S3_BUCKET},S3Key=${S3_KEY} \
                        --region ${AWS_REGION}
aws elasticbeanstalk update-environment \
                          --application-name ${APPLICATION_NAME} \
                          --environment-name ${ENVIRONMENT_NAME} \
                          --version-label ${VERSION_LABEL} \
                          --region ${AWS_REGION}
