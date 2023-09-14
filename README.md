# NestedLv

# Problem description
1. Start the server with `mix phx.server`
2. Open the browser at `http://localhost:4000`
3. Stop the server with double `Ctrl+C`
4. Restart the server with `mix phx.server`
5. Now `/` page in the browser is redirected to `/null` route.

This is a problem because the same behavior is observed when the server is running in production and is restarted. All opened clients are redirected to `/null`.

# Logs
Some suspicious in-browser logs are:
```
error: unauthorized live_redirect. Falling back to page request {reason: 'stale'}
socket: disconnected for page nav
```

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
