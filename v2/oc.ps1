# Set the path to the Opencode binary
# $OpencodeBin = "C:\Users\11605\timtrick\nvm\nodejs\opencode"

# Optional: Set a separate config directory
$env:OPENCODE_CONFIG_DIR = "$pwd\.opencode"
$env:OPENCODE_CONFIG = "$pwd\.opencode\opencode.json"
# $env:OPENCODE_AUTH_JSON = "$pwd\.opencode\auth.json"
# $env:OPENCODE_CACHE = "$pwd\.opencode\cache"

# CRUSH
$env:TIMGPT_API_ENDPOINT = "https://integrate.api.nvidia.com/v1"
$env:TIMGPT_API_KEY = "YOUR_KEY"
$env:CRUSH_DISABLE_PROVIDER_AUTO_UPDATE=0
$env:CATWALK_URL="https://gh-proxy.org/https://github.com/timartlaw/edge-one/blob/main"

# CODEX
$env:TIMGPT_API_KEY = "YOUR_KEY"
$env:TIMEX_API_KEY = "YOUR_KEY"
$env:CODEX_HOME = "$pwd\.codex"
# $env:Path += ";C:\Users\11605\timtrick\Git\bin"

# Execute the binary and pass all incoming script arguments ($args)
# & $OpencodeBin @args
