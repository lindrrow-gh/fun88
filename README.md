# FUN88

an MIs Code Test

## Kindly Follow

By default, browsers block requests to resources from a different domain unless the server explicitly allows it with CORS headers. Since Flutter web apps run in the browser, any http calls from the prject are subject to those CORS checks.

Since the network image failed to load due to this blocker the command below is required for the project to run smoothly:

```bash
flutter run -d chrome --wasm --web-browser-flag --disable-web-security
```


