
# Instructs codex to call ops-related MCPs
ops-codex() {
  codex \
    -c features.rmcp_client=true \
    -c mcp_servers.datadog.url="https://mcp.datadoghq.com/api/unstable/mcp-server/mcp" \
    -c mcp_servers.ologs.url="https://obs-mcp-default-internal.gateway.obs-1.internal.api.openai.org/ologs/mcp" \
    -c mcp_servers.nexus.url="https://nexus-backend.deploy-0.internal.api.openai.org/api/v1/mcp" \
    -c mcp_servers.deploy_manager.command="python" \
    -c mcp_servers.deploy_manager.args="[\"$HOME/code/openai/lib/applied/connectors/openai_mcp_servers/scripts/mcp_identity_proxy.py\", \"deploy_manager=https://openai-mcp-servers.gateway.unified-0.internal.api.openai.org/internal/deploy_manager/mcp\"]" \
    -c mcp_servers.deploy_manager.env.OPENAI_API_KEY="$OPENAI_API_KEY" \
    -c mcp_servers.ask.command="oaipkg" \
    -c mcp_servers.ask.args="[\"run\", \"ask_api.mcp.scripts.bridge\", \"--env\", \"prod\"]" \
    "$@"
}

# OpenAI shrc (if customising, comment out to prevent it getting readded)
for file in "/Users/boyd/.openai/shrc"/*; do
		source "$file"
done
export API_REPO_PATH="/Users/boyd/code/openai/api"
source ~/.api_shell_include
source /Users/boyd/code/openai/api/applied-devtools/completions/applied_completions.zsh
