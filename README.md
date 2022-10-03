# update-github-actions-secret

This action create a new Github Action secret or updates an already existing one.

## Usage

```yaml
- name: Create or update Github Actions secret
  uses: ekowcharles/update-secret@v1
  env:
    OWNER: ekowcharles
    REPOSITORY: update-secret
    ACCESS_TOKEN: et984tnGHtet829je
    SECRET_NAME: SOME_SECRET
    SECRET_VALUE: tcps3cr3t
```

<i>where</i>

`OWNER` is the owner of the repository where the secret is to be created or updated. <b>Required</b>.

`REPOSITORY` is the name of the respository where the secret is to be created or updated. <b>Required</b>.

`ACCESS_TOKEN` is the [access token](https://docs.github.com/en/rest/quickstart) to use for authentication against the repository where the secret is stored. <b>Required</b>.

`SECRET_NAME` is the name of the secret to be created or updated. <b>Required</b>.

`SECRET_VALUE` is value the secret should be set to. <b>Optional</b>. This could be an [output from a previous step or job](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idoutputs).


To view the newly created secret, navidate to settings >> secrets >> actions in the Github repository portal.
## Motivation

I wanted to use the [kubectl-aws-eks](https://github.com/kodermax/kubectl-aws-eks) github action to manage my AWS EKS cluster and it required that I pass the kubenetes configuration to the `KUBE_CONFIG_DATA` variable. This configuration happened to be an ouput of a terraform routine I use to set up the EKS cluster so I wanted a way to persist the kubenetes configuration and access it later when I needed to maintain the cluster.

The solution to that challenge is what I have shared in this github action.

## References

1. [Get repository public key](https://docs.github.com/en/rest/actions/secrets#get-a-repository-public-key)
1. [Create or update a repository secret
](https://docs.github.com/en/rest/actions/secrets#create-or-update-a-repository-secret)
1. [Custom actions](https://docs.github.com/en/actions/creating-actions/about-custom-actions)

## License

MIT License

Copyright (c) 2022 C A Boadu Jnr

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.