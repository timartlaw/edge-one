function Show-MainMenu {
    Write-Host "`nSelect an option:" -ForegroundColor Cyan
    Write-Host "1. Show System Hostname" -ForegroundColor Green
    Write-Host "2. z-ai/glm4.7" -ForegroundColor Green
    Write-Host "3. minimaxai/minimax-m2.1" -ForegroundColor Green
    Write-Host "4. gemini-3-pro-preview" -ForegroundColor Green
    Write-Host "5. gemini-3-flash-preview" -ForegroundColor Green
    Write-Host "6. gemini-3-pro-image-preview" -ForegroundColor Green
    Write-Host "7. gemini-2.5-flash" -ForegroundColor Green
    Write-Host "8. gemini-2.5-flash-lite" -ForegroundColor Green
    Write-Host "9. gpt-oss-120b-medium" -ForegroundColor Green
    Write-Host "a. tab_flash_lite_preview" -ForegroundColor Green
    Write-Host "b. gemini-claude-sonnet-4-5" -ForegroundColor Green
    Write-Host "c. gemini-claude-sonnet-4-5-thinking" -ForegroundColor Green
    Write-Host "d. gemini-claude-opus-4-5-thinking" -ForegroundColor Green
    Write-Host "e. moonshotai/kimi-k2.5" -ForegroundColor Green
    Write-Host "Q. Quit" -ForegroundColor Yellow

    $selection = Read-Host -Prompt "Please select an option"
    switch ($selection) {
        '1' {
            Write-Host "Hostname: $(hostname)"
            # Wait for user to acknowledge output before re-displaying menu
            Read-Host -Prompt "Press Enter to continue..." | Out-Null
            Show-MainMenu
        }
        '2' {
            $env:ANTHROPIC_MODEL = "z-ai/glm4.7"
        }
        '3' {
            $env:ANTHROPIC_MODEL = "minimaxai/minimax-m2.1"
        }
        '4' {
            $env:ANTHROPIC_MODEL = "gemini-3-pro-preview"
        }
        '5' {
            $env:ANTHROPIC_MODEL = "gemini-3-flash-preview"
        }
        '6' {
            $env:ANTHROPIC_MODEL = "gemini-3-pro-image-preview"
        }
        '7' {
            $env:ANTHROPIC_MODEL = "gemini-2.5-flash"
        }
        '8' {
            $env:ANTHROPIC_MODEL = "gemini-2.5-flash-lite"
        }
        '9' {
            $env:ANTHROPIC_MODEL = "gpt-oss-120b-medium"
        }
        'a' {
            $env:ANTHROPIC_MODEL = "tab_flash_lite_preview"
        }
        'b' {
            $env:ANTHROPIC_MODEL = "gemini-claude-sonnet-4-5"
        }
        'c' {
            $env:ANTHROPIC_MODEL = "gemini-claude-sonnet-4-5-thinking"
        }
        'd' {
            $env:ANTHROPIC_MODEL = "gemini-claude-opus-4-5-thinking"
        }
        'e' {
            $env:ANTHROPIC_MODEL = "moonshotai/kimi-k2.5"
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
$env:ANTHROPIC_DEFAULT_HAIKU_MODEL = "nvi/minimaxai/minimax-m2.1"
$env:ANTHROPIC_DEFAULT_SONNET_MODEL = "gemini-claude-sonnet-4-5"
$env:ANTHROPIC_DEFAULT_OPUS_MODEL = "nvi/z-ai/glm4.7"
# $env:ANTHROPIC_THINKING_MODEL = "gemini-claude-opus-4-5-thinking"
$env:API_TIMEOUT_MS = "3000000"

# Optional: Set a separate config directory
$env:CLAUDE_CONFIG_DIR = "$pwd\.claude"
# $env:Path += ";C:\Users\11605\.local\bin"
$env:CLAUDE_CODE_GIT_BASH_PATH="C:\Users\11605\timtrick\Git\bin\bash.exe"

if ($args[0] -eq "v") {
    "Running in detailed mode..."
    # Call the function to start the menu
    Show-MainMenu
} elseif ($args[0] -eq "p") {
    "Running in path mode..."
    $env:Path += ";C:\Users\11605\.local\bin"
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
#       - name: z-ai/glm4.7
#         alias: ""
#       - name: minimaxai/minimax-m2.1
#         alias: ""
#       - name: moonshotai/kimi-k2.5
#         alias: ""
# payload:
#   override:
#     - models:
#         - name: minimaxai/minimax-m2.1
#           protocol: openai
#         - name: z-ai/glm4.7
#           protocol: openai
#         - name: moonshotai/kimi-k2.5
#           protocol: openai
#       params:
#         reasoning_effort: high

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
# $env:ANTHROPIC_AUTH_TOKEN = "YOUR_KEY"
# $env:ANTHROPIC_BASE_URL = "http://localhost:3456"
# $env:ANTHROPIC_MODEL = "z-ai/glm4.7"
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
