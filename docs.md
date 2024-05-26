---
name: Is It Up Yet?
description: Plugin to check for a service to start listening on a specified host and port.

author: dvjn
tags: [woodpecker, service]
containerImage: ghcr.io/dvjn/woodpecker-is-it-up-yet-plugin
containerImageUrl: https://github.com/dvjn/woodpecker-is-it-up-yet-plugin/pkgs/container/woodpecker-is-it-up-yet-plugin
url: https://github.com/dvjn/woodpecker-is-it-up-yet-plugin
---

Woodpecker CI plugin to check for a service to start listening on a specified host and port.

It continuously polls the configured host and port using netcat until the service starts.

## Settings

| Name | Default | Description          |
| ---- | ------- | -------------------- |
| host | _none_  | Host for the service |
| port | _none_  | Port for the service |

## Example

Using a detached step:

```yaml
steps:
  - name: server
    detach: true
    image: ...

  - name: wait_for_server
    image: ghcr.io/dvjn/woodpecker-is-it-up-yet-plugin
    settings:
      host: server
      port: 8080
```

Using a service:

```yaml
steps:
  - name: wait_for_server
    image: ghcr.io/dvjn/woodpecker-is-it-up-yet-plugin
    settings:
      host: server
      port: 8080

service:
  - name: server
    image: ...
```
