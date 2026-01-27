# Set the path to the Claude binary
$ClaudeBin = "C:\Users\11605\.local\bin\claude.exe"

# Inject API credentials as environment variables for the current process
$env:ANTHROPIC_AUTH_TOKEN = "975ec04b-1e97-4422-95ae-d00d04c6d791"
$env:ANTHROPIC_BASE_URL = "http://localhost:8317"
$env:ANTHROPIC_DEFAULT_HAIKU_MODEL = "nvi/z-ai/glm4.7"
$env:ANTHROPIC_DEFAULT_SONNET_MODEL = "gemini-claude-sonnet-4-5"
$env:ANTHROPIC_DEFAULT_OPUS_MODEL = "nvi/minimaxai/minimax-m2.1"
$env:API_TIMEOUT_MS = "3000000"

# Optional: Set a separate config directory
$env:CLAUDE_CONFIG_DIR = "C:\Users\11605\timtrick\CherryStudio\workspace\.claude-nv"
$env:Path += ";C:\Users\11605\.local\bin"
$env:CLAUDE_CODE_GIT_BASH_PATH="C:\Users\11605\timtrick\Git\bin\bash.exe"
# Execute the binary and pass all incoming script arguments ($args)
& $ClaudeBin @args

# $env:HTTP_PROXY = "http://192.168.3.98:7890"
# $env:HTTPS_PROXY = "http://192.168.3.98:7890"
# $env:all_proxy="socks5://192.168.3.98:7890"
# #### CLIProxyAPI_6.7.12\config.yaml
# openai-compatibility:
#   - name: Nvidia
#     prefix: nvi
#     base-url: https://integrate.api.nvidia.com/v1
#     api-key-entries:
#       - api-key: nvapi-
#     models:
#       - name: z-ai/glm4.7
#         alias: ""
#       - name: minimaxai/minimax-m2.1
#         alias: ""
# payload:
#   override:
#     - models:
#         - name: "minimaxai/minimax-m2.1"
#           protocol: "openai"
#         - name: "z-ai/glm4.7"
#           protocol: "openai"
#       params:
#         "reasoning.effort": "high"

##### %USERPROFILE%\.claude-code-router\config.json
#   "Providers": [
#     {
#       "name": "nvidia",
#       "api_base_url": "https://integrate.api.nvidia.com/v1/chat/completions",
#       "api_key": "nvapi-",
#       "models": [
#         "minimaxai/minimax-m2.1",
#         "z-ai/glm4.7"
#       ],
#       "transformer": {
#         "use": [
#           "OpenAI"
#         ]
#       }
#     }
#   ],

# Set the path to the Claude binary
# $ClaudeBin = "C:\Users\11605\.local\bin\claude.exe"

# # CCR
# $env:ANTHROPIC_AUTH_TOKEN = "975ec04b-1e97-4422-95ae-d00d04c6d791"
# $env:ANTHROPIC_BASE_URL = "http://localhost:3456"
# $env:ANTHROPIC_MODEL = "z-ai/glm4.7"
# $env:API_TIMEOUT_MS = "3000000"

# # Optional: Set a separate config directory
# $env:CLAUDE_CONFIG_DIR = "C:\Users\11605\timtrick\CherryStudio\workspace\.claude-ccr"
# $env:Path += ";C:\Users\11605\.local\bin"
# $env:CLAUDE_CODE_GIT_BASH_PATH="C:\Users\11605\timtrick\Git\bin\bash.exe"
# # Execute the binary and pass all incoming script arguments ($args)
# & $ClaudeBin @args
