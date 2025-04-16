#!/bin/bash

echo "🚀 Membuat Struktur Proyek vsc-android-web..."

# Folder utama
mkdir -p backend/{core,api,models,utils} \
         frontend/public \
         frontend/src/assets \
         frontend/src/components/{Editor,Sidebar,Toolbar,Tabs,Breadcrumb,Theme,Terminal,UI,Settings} \
         frontend/src/context \
         frontend/src/services \
         frontend/src/utils \
         frontend/src/themes \
         editor-app/src/components/Editor \
         editor-app/src/context \
         docker/executor \
         plugins/extensions/{formatter,auto-import} \
         scripts

# File utama proyek
touch .env package.json vite.config.js README.md

# Backend
touch backend/main.py backend/requirements.txt
touch backend/core/{language_runner.py,terminal_manager.py,plugin_loader.py,docker_runner.py}
touch backend/api/{code_api.py,terminal_api.py,file_api.py,plugin_api.py}
touch backend/models/{code_model.py,file_model.py,user_model.py}
touch backend/utils/{sandbox.py,file_utils.py}

# Frontend
touch frontend/public/{index.html,favicon.ico,manifest.json,logo.png}
touch frontend/src/{App.jsx,index.js,index.css,main.css}
touch frontend/src/components/Editor/{MonacoEditor.jsx,SplitView.jsx,SplitView.css}
touch frontend/src/components/Sidebar/{FileExplorer.jsx,GitPanel.jsx,SettingsPanel.jsx}
touch frontend/src/components/Toolbar/ToolbarMenu.jsx
touch frontend/src/components/Tabs/TabNavigation.jsx
touch frontend/src/components/Breadcrumb/PathBreadcrumb.jsx
touch frontend/src/components/Theme/ThemeSwitcher.jsx
touch frontend/src/components/Terminal/{TerminalWindow.jsx,Execution.jsx,ExecutionOutput.jsx}
touch frontend/src/components/UI/LayoutWrapper.jsx
touch frontend/src/components/Settings/{Keybindings.jsx,UserPreferences.jsx}
touch frontend/src/context/{FileContext.jsx,ThemeContext.jsx,ExecutionContext.js}
touch frontend/src/services/{FileSystemService.js,LanguageService.js,ThemeService.js,ExecutionService.js}
touch frontend/src/utils/helpers.js
touch frontend/src/themes/{dark.json,light.json,vs-code-like.json}

# Editor App
touch editor-app/src/components/Editor/{MonacoEditor.jsx,SplitView.jsx,SplitView.css}
touch editor-app/src/context/FileContext.jsx
touch editor-app/src/{App.jsx,index.js}

# Docker
touch docker/{main.py,requirements.txt,Dockerfile,render.yaml}
touch docker/executor/execute.py

# Plugins
touch plugins/sample-plugin.json

# Scripts
touch scripts/{setup.sh,start_dev.sh}

echo "✅ Struktur proyek selesai dibuat."

