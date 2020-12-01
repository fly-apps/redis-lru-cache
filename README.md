# Redis LRU Cache

Deployment Steps

1. create a new app
```bash
flyctl apps create
```
2. set the redis password:
```bash
flyctl secrets set REDIS_PASSWORD=something-secret
```
4. deploy
```bash
flyctl deploy
```
5. scale
```bash
flyctl scale set min=2 max=2
```

You can now connect to your redis instance, eg

```bash
redis-cli -u redis://:your-password@your-app.fly.dev:10000
```