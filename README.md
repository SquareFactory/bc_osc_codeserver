# Batch Connect - OSC Code Server

![GitHub Release](https://img.shields.io/github/release/csquare-ai/bc_osc_codeserver.svg)

An improved file viewer / editor for OSC OnDemand that launches a
Code Server within a batch job. Code Server leverages VSCode as its
editor.

## Prerequisites

This Batch Connect app requires the following software be installed on the
**compute nodes** that the batch job is intended to run on (**NOT** the
OnDemand node):

- [Lmod] 6.0.1+ or any other `module purge` and `module load <modules>` based
  CLI used to load appropriate environments within the batch job before
  launching Code server.
- [OpenVSCode Server] available from Github: https://github.com/gitpod-io/openvscode-server/

[openvscode server]: https://coder.com/
[lmod]: https://www.tacc.utexas.edu/research-development/tacc-projects/lmod
[vs code]: https://code.visualstudio.com/

## Install

1.  Use Git to clone this app and checkout the desired branch/version you want to
    use and place this wherever you store batch connect apps (`/var/www/ood/apps/sys` or `~/ondemand/dev`):

    ```sh
    git clone <repo>
    cd <dir>
    git checkout <tag/branch>
    ```

2.  Deploy code-server on your systems.

3.  Update form.yml to use the correct cluster, and any other changes as necessary to form.yml or submit.yml that is appropriate for your cluster.

## Update

To update the app you would:

```sh
cd <dir>
git fetch
git checkout <tag/branch>
```

Again, you do not need to restart the app as it isn't a Passenger app.

## Known Issues

- None.

## Contributing

1. Fork it ( https://github.com/csquare-ai/bc_osc_codeserver/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
