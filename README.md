## Create an application

 ```shell
 ❯ aws elasticbeanstalk create-application --application-name docker-travis-demo
{
    "Application": {
        "ApplicationName": "docker-travis-demo", 
        "ConfigurationTemplates": [], 
        "DateUpdated": "2016-01-22T20:44:18.265Z", 
        "DateCreated": "2016-01-22T20:44:18.265Z"
    }
}
```

Create an application version

```shell
❯ aws elasticbeanstalk create-application-version --application-name docker-travis-demo --version-label version1
{
    "ApplicationVersion": {
        "ApplicationName": "docker-travis-demo", 
        "Status": "UNPROCESSED", 
        "VersionLabel": "version1", 
        "DateCreated": "2016-01-22T20:45:25.207Z", 
        "DateUpdated": "2016-01-22T20:45:25.207Z", 
        "SourceBundle": {
            "S3Bucket": "elasticbeanstalk-us-west-1-service", 
            "S3Key": "GenericSampleApplication"
        }
    }
}
```

## Check DNS name availability

```shell
❯ aws elasticbeanstalk check-dns-availability --cname-prefix=docker-travis-demo
{
    "Available": true, 
    "FullyQualifiedCNAME": "docker-travis-demo.us-west-1.elasticbeanstalk.com"
}
```

## Pick a solution stack

```shell
❯ aws elasticbeanstalk list-available-solution-stacks
...
```

## Create the environment

```shell
❯ aws elasticbeanstalk create-environment --application-name docker-travis-demo --version-label version1 --environment-name demo --cname-prefix docker-travis-demo --solution-stack-name "64bit Amazon Linux 2015.09 v2.0.6 running Multi-container Docker 1.7.1 (Generic)"
{
    "ApplicationName": "docker-travis-demo", 
    "EnvironmentName": "demo", 
    "VersionLabel": "version1", 
    "Status": "Launching", 
    "EnvironmentId": "e-pneaerhhf9", 
    "SolutionStackName": "64bit Amazon Linux 2015.09 v2.0.6 running Multi-container Docker 1.7.1 (Generic)", 
    "CNAME": "docker-travis-demo.us-west-1.elasticbeanstalk.com", 
    "Health": "Grey", 
    "Tier": {
        "Version": " ", 
        "Type": "Standard", 
        "Name": "WebServer"
    }, 
    "DateUpdated": "2016-01-22T20:49:38.566Z", 
    "DateCreated": "2016-01-22T20:49:38.566Z"
}
```

## Setup on travis

```shell
❯ travis setup elasticbeanstalk
...
```
