# Woodpecker Plugin - Is It Up Yet?


**Usage:**

```yaml
steps:
  - name: server
    detach: true
    image: ...

  - name: wait_for_server
    image: dvjn/woodpecker-is-it-up-yet-plugin
    settings:
      host: server
      port: 8080
```

