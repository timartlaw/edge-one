function Show-MainMenu {
    Write-Host "`nSelect an option:" -ForegroundColor Cyan
    Write-Host "1. Show System Hostname" -ForegroundColor Green
    Write-Host "2. z-ai/glm-5.1" -ForegroundColor Green
    Write-Host "3. minimaxai/minimax-m2.7" -ForegroundColor Green
    Write-Host "4. moonshotai/kimi-k2.6" -ForegroundColor Green
    Write-Host "5. qwen/qwen3-coder-480b-a35b-instruct"" -ForegroundColor Green
    Write-Host "6. deepseek-ai/deepseek-coder-6.7b-instruct" -ForegroundColor Green
    Write-Host "Q. Quit" -ForegroundColor Yellow

    if ($args.Count -gt 1) {
        $selection = $args[1]
    } else {
        $selection = Read-Host -Prompt "Please select an option"
    }
    switch ($selection) {
        '1' {
            Write-Host "Hostname: $(hostname)"
            # Wait for user to acknowledge output before re-displaying menu
            Read-Host -Prompt "Press Enter to continue..." | Out-Null
            Show-MainMenu
        }
        '2' {
            $env:ANTHROPIC_MODEL = "z-ai/glm-5.1"
        }
        '3' {
            $env:ANTHROPIC_MODEL = "minimaxai/minimax-m2.7"
        }
        '4' {
            $env:ANTHROPIC_MODEL = "moonshotai/kimi-k2.6"
        }
        '5' {
            $env:ANTHROPIC_MODEL = "qwen/qwen3-coder-480b-a35b-instruct""
        }
        '6' {
            $env:ANTHROPIC_MODEL = "deepseek-ai/deepseek-coder-6.7b-instruct"
        }
        'q' {
            $env:ANTHROPIC_MODEL =
            Write-Host "Exiting script."
            # Exit the script
        }
        default {
            Write-Warning "$selection is not a valid option. Please try again."
            # Wait for user to acknowledge output before re-displaying menu
            Read-Host -Prompt "Press Enter to continue..." | Out-Null
            Show-MainMenu
        }
    }
}

# Set the path to the Claude binary
$ClaudeBin = "C:\Users\11605\.local\bin\claude.exe"

# Inject API credentials as environment variables for the current process
$env:ANTHROPIC_AUTH_TOKEN = "YOUR_KEY"
$env:ANTHROPIC_BASE_URL = "http://localhost:8317"
$env:ANTHROPIC_DEFAULT_HAIKU_MODEL = "nvi/minimaxai/minimax-m2.7"
$env:ANTHROPIC_DEFAULT_SONNET_MODEL = "moonshotai/kimi-k2.6"
$env:ANTHROPIC_DEFAULT_OPUS_MODEL = "nvi/z-ai/glm-5.1"
# $env:ANTHROPIC_THINKING_MODEL = "deepseek-ai/deepseek-coder-6.7b-instruct"
$env:API_TIMEOUT_MS = "3000000"

# Optional: Set a separate config directory
$env:CLAUDE_CONFIG_DIR = "$pwd\.claude"
$env:CLAUDE_CODE_GIT_BASH_PATH="C:\Users\11605\timtrick\Git\bin\bash.exe"
if (Get-Command "claude" -ErrorAction SilentlyContinue) {
    Write-Host "Claude Code is installed and available."
} else {
    Write-Host "Claude Command not found."
    $env:Path += ";C:\Users\11605\.local\bin"
}

if ($args[0] -eq "v") {
    "Running in detailed mode..."
    # Call the function to start the menu
    Show-MainMenu @args
} elseif ($args[0] -eq "p") {
    "Running in path mode..."
    $env:Path += ";" + $args[1]
} elseif ($args[0] -eq "Silent") {
    "Running in quiet mode..."
} else {
    "Running in standard mode."
}
Get-Item env:ANTHROPIC*

# Execute the binary and pass all incoming script arguments ($args)
# & $ClaudeBin @args

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
#       - name: z-ai/glm-5.1
#         alias: ""
#       - name: minimaxai/minimax-m2.7
#         alias: ""
# payload:
#   override:
#     - models:
#         - name: "minimaxai/minimax-m2.7"
#           protocol: "openai"
#         - name: "z-ai/glm-5.1"
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
#         "minimaxai/minimax-m2.7",
#         "z-ai/glm-5.1"
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
# $env:ANTHROPIC_AUTH_TOKEN = "YOUR_KEY"
# $env:ANTHROPIC_BASE_URL = "http://localhost:3456"
# $env:ANTHROPIC_MODEL = "z-ai/glm-5.1"
# $env:API_TIMEOUT_MS = "3000000"

# # Optional: Set a separate config directory
# $env:CLAUDE_CONFIG_DIR = "C:\Users\11605\timtrick\CherryStudio\workspace\.claude-ccr"
# $env:Path += ";C:\Users\11605\.local\bin"
# $env:CLAUDE_CODE_GIT_BASH_PATH="C:\Users\11605\timtrick\Git\bin\bash.exe"
# # Execute the binary and pass all incoming script arguments ($args)
# & $ClaudeBin @args

# FAQ
# 1 "skipWebFetchPreflight": true in settings.json
# 2 .gitconfig
# [core]
#         editor = \"C:\\Users\\11605\\AppData\\Local\\Programs\\Microsoft VS Code\\bin\\code\" --wait
# [alias]
#         tree = log --all --decorate --oneline --graph
#         lold = log --graph --pretty=format:'%C(auto)%h%d%Creset %C(cyan)(%ci)%Creset %C(green)%cn <%ce>%Creset %s'

# YOUR_KEY
$env:STITCH_API_KEY = "YOUR_KEY"
$env:NEON_API_KEY = "YOUR_KEY"
$env:SUPABASE_PROJECT_REF = "YOUR_KEY"
$env:SUPABASE_ACCESS_TOKEN = "YOUR_KEY"
