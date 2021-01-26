# actions-jenkins-caller

#### About this project

GH action for calling Jenkins jobs

#### Getting Started

```yaml
on: pull_request

jobs:
  deploy:
    runs-on: self-hosted
    steps:
      - uses: actions/checkout@v2
      - uses: tradeshift/actions-jenkins-caller@master
        with:
          caCert: ${{ secrets.CACERT }}
          clientCert: ${{ secrets.CLIENTCERT }}
          clientKey: ${{ secrets.CLIENTKEY }}
          jenkinsURL: https://myjenkins.example
          jenkinsJob: deploy-all-things
          jenkinsToken: ${{ secrets.Jenkins_Token }}
          jenkinsUser: ${{ secrets.Jenkins_User }}
          jenkinsPassword: ${{ secrets.Jenkins_Password }}
          jenkinsJobOptions: ${{ secrets.Jenkins_Options }}
```
