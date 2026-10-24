# Run in GitHub Codespaces

Create a Codespace from this repository using the DeepSeek Harness configuration. Setup installs Node.js 24, pnpm 11.28.5, repository dependencies, and runs the source build. Wait for setup to finish successfully.

Run in the Codespaces terminal:

```bash
bash .devcontainer/start.sh
```

Open the HTTPS launch URL printed by the application, including its token, in your own browser. Keep forwarded port 3080 private. The script advertises the Codespaces forwarded hostname and trusts that exact hostname; authentication remains enabled. Do not share the tokenized URL.

In the application, open Settings → Models and configure your model API credential, then choose a workspace before starting a chat. Never commit API credentials or paste them into public issues. Model usage and Codespaces may incur charges depending on your account and provider.

This is an on-demand development environment, not an always-on public deployment. Stopping the Codespace stops the application. Restart with the same command. Review the repository SAFETY.md before allowing agent commands.

Configuration JSON parsing and shell syntax were checked when this setup was added. Container creation, dependency installation, the full source build, forwarded browser authentication, and real model requests still require verification in a running Codespace.
