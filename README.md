# 💻 Linux Setup — Asus Vivobook (Ubuntu)

Automated installation and setup scripts for Ubuntu / Debian-based Linux systems.

---

## 🗂️ Repository Structure

```
linux-setup/
├── settings/         → System-level settings (key remapping, etc.)
├── browser/          → Browser installers (Brave, Chrome)
├── code-editors/     → Code editor installers (VS Code, Antigravity IDE)
├── cli-tools/        → Terminal tools, shell enhancements & utilities
├── runtimes/         → Language runtimes & compilers
├── devops-tools/     → DevOps, cloud CLI & container tools
└── applications/     → GUI apps & system applications
```

---

## 🚀 Setup Flow

Follow these steps in order for a fresh Ubuntu install:

### 1. ⚙️ Settings
Remap the Right Alt key to Right Ctrl system-wide using `keyd`:
```bash
cd settings
chmod +x remap-rightalt-to-ctrl.sh
./remap-rightalt-to-ctrl.sh
```

### 2. 🌐 Browsers
```bash
cd browser
chmod +x ./*.sh
./chrome.sh      # Google Chrome
./brave.sh       # Brave Browser
cd ..
```

### 3. 🖥️ Code Editors
```bash
cd code-editors
chmod +x ./*.sh
./vscode.sh               # Visual Studio Code
./angtigravity-ide.sh     # Google Antigravity IDE
cd ..
```

### 4. 🛠️ CLI Tools & Terminal
```bash
cd cli-tools
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```
> Includes Oh My Zsh (`oh-my-zsh.sh`) which installs Zsh and sets it as the default shell.

### 5. ⚡ Runtimes
```bash
cd runtimes
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

### 6. 🐳 DevOps Tools
```bash
cd devops-tools
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

### 7. 📦 Applications
```bash
cd applications
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

---

## 📋 Included Software

### ⚙️ Settings (`settings/`)
| Script | Description |
|---|---|
| `remap-rightalt-to-ctrl.sh` | Remaps Right Alt → Right Ctrl system-wide using `keyd` |

---

### 🌐 Browsers (`browser/`)
| Script | Software | Description |
|---|---|---|
| `chrome.sh` | **Google Chrome** | Official Google Chrome stable browser |
| `brave.sh` | **Brave** | Privacy-focused Chromium-based browser |

---

### 🖥️ Code Editors (`code-editors/`)
| Script | Software | Description |
|---|---|---|
| `vscode.sh` | **Visual Studio Code** | Code editor and developer IDE |
| `angtigravity-ide.sh` | **Google Antigravity IDE** | Google Antigravity developer IDE (Snap) |

---

### 🛠️ CLI Tools & Utilities (`cli-tools/`)
| Script | Software | Description |
|---|---|---|
| `oh-my-zsh.sh` | **Zsh & Oh My Zsh** | Zsh shell + Oh My Zsh framework — sets Zsh as default shell |
| `bat.sh` | **bat** (`batcat`) | Modern `cat` clone with syntax highlighting and Git integration |
| `bottom.sh` | **bottom** (`btm`) | Graphical process and system monitor |
| `btop.sh` | **btop** | Resource monitor for CPU, RAM, disks, network and processes |
| `dust.sh` | **dust** (`du-dust`) | Intuitive disk usage analyzer (`du` alternative) |
| `exa.sh` | **exa** | Modern replacement for `ls` with color and tree view |
| `eza.sh` | **eza** | Actively maintained successor to `exa` |
| `fastfetch.sh` | **fastfetch** | Fast, lightweight system information display tool |
| `fd-find.sh` | **fd** (`fdfind`) | Fast and user-friendly alternative to `find` |
| `fzf.sh` | **fzf** | Command-line fuzzy finder |
| `git.sh` | **Git** | Distributed version control system |
| `github-cli.sh` | **GitHub CLI** (`gh`) | Official GitHub CLI for PRs, issues, and repos |
| `htop.sh` | **htop** | Interactive process viewer and system monitor |
| `jq.sh` | **jq** | Lightweight command-line JSON processor |
| `lazygit.sh` | **lazygit** | Simple terminal UI for git workflows |
| `localsend.sh` | **LocalSend** | Cross-platform local network file sharing |
| `ncdu.sh` | **ncdu** | NCurses disk usage analyzer |
| `neofetch.sh` | **neofetch** | CLI system info display tool |
| `nvtop.sh` | **nvtop** | GPU task monitor (Nvidia, AMD, Intel) |
| `ripgrep.sh` | **ripgrep** (`rg`) | Fast regex search tool (`grep` alternative) |
| `terminal-autosuggestion.sh` | **Zsh Autosuggestions Repo** | OpenSUSE repo config for `zsh-autosuggestions` |
| `tldr.sh` | **tldr** | Simplified, community-driven man pages |
| `tmux.sh` | **tmux** | Terminal multiplexer |
| `tree.sh` | **tree** | Recursive directory listing tool |
| `vitals.sh` | **Vitals** | GNOME Shell system resource monitor extension |
| `yq.sh` | **yq** | Command-line YAML / JSON / XML processor |
| `zoxide.sh` | **zoxide** | Smarter `cd` with fuzzy directory jump memory |
| `zsh-autosuggestions.sh` | **zsh-autosuggestions** | Fish-like autosuggestions for Zsh |
| `zsh-syntax-highlighting.sh` | **zsh-syntax-highlighting** | Fish-like syntax highlighting for Zsh |

---

### ⚡ Runtimes (`runtimes/`)
| Script | Software | Description |
|---|---|---|
| `cpp.sh` | **C / C++** (`gcc`, `g++`, `gdb`, `cmake`) | GNU C/C++ compilers, debugger, and CMake |
| `go.sh` | **Go** | Go programming language compiler and tools |
| `java8.sh` | **Java 8** (`openjdk-8-jdk`) | OpenJDK 8 development kit |
| `java21.sh` | **Java 21** (`openjdk-21-jdk`) | OpenJDK 21 LTS development kit |
| `nodejs18.sh` | **Node.js 18** & **npm** | JavaScript runtime and package manager |
| `python312.sh` | **Python 3.12** | Python 3.12 interpreter, `venv`, and `pip` |
| `rust.sh` | **Rust** & **Cargo** | Rust language and package manager (via `rustup`) |

---

### 🐳 DevOps Tools (`devops-tools/`)
| Script | Software | Description |
|---|---|---|
| `ansible.sh` | **Ansible** | IT automation and configuration management |
| `aws-cli.sh` | **AWS CLI** | Amazon Web Services unified CLI |
| `azure-cli.sh` | **Azure CLI** (`az`) | Microsoft Azure command-line tools |
| `docker.sh` | **Docker Engine** | Docker container runtime and CLI |
| `docker-destop.sh` | **Docker Desktop** | Docker Desktop GUI environment |
| `gcp-cli.sh` | **Google Cloud SDK** (`gcloud`) | Google Cloud Platform management CLI |
| `kubectl.sh` | **Kubectl** | Kubernetes command-line cluster management |
| `minikube.sh` | **Minikube** | Local single-node Kubernetes cluster |
| `terraform.sh` | **Terraform** | HashiCorp infrastructure-as-code tool |

---

### 📦 Applications (`applications/`)
| Script | Software | Description |
|---|---|---|
| `antigravity.sh` | **Google Antigravity** | Google Antigravity developer agent |
| `gnome-extension-manager.sh` | **GNOME Extension Manager** | Manage GNOME Shell extensions |
| `multipass.sh` | **Multipass** | Canonical lightweight Ubuntu VM manager |
| `postman.sh` | **Postman** | API design, testing, and collaboration platform |
| `virtualbox.sh` | **VirtualBox** | Oracle VM VirtualBox hypervisor |
