# 💻 Linux Setup — Asus Vivobook (Ubuntu)

Automated installation and setup scripts for Ubuntu / Debian-based Linux systems.

---

## 🗂️ Repository Structure

```
linux-setup/
├── settings/             → System-level settings (key remapping, etc.)
├── browser/              → Browser installers (Brave, Chrome)
├── code-editors/         → Code editor installers (VS Code, Antigravity IDE)
├── cli-tools/            → Terminal tools, shell enhancements & utilities
├── runtimes/             → Language runtimes & compilers
├── devops-tools/         → DevOps, cloud CLI & container tools
├── applications/         → System tools & core applications
├── daily-apps/           → Daily essentials (clipboard, media, chat, mail, VPN, etc.)
├── document-apps/        → Office suites, note-taking, e-readers & book managers
├── creative-apps/        → Audio, video, graphics, CAD & bootable disk tools
└── hardware-analysis/    → Disk, CPU, GPU & hardware analysis tools
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
cd ..
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

### 7. 📦 Core Applications
```bash
cd applications
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

### 8. ☕ Daily Applications
```bash
cd daily-apps
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

### 9. 📄 Document & Note Applications
```bash
cd document-apps
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

### 10. 🎨 Creative & Media Applications
```bash
cd creative-apps
chmod +x ./*.sh
for script in ./*.sh; do bash "$script"; done
cd ..
```

### 11. 🔍 Hardware & Disk Analysis
```bash
cd hardware-analysis
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
| `fish.sh` | **Fish Shell** | Smart and user-friendly command line shell |
| `vim.sh` | **Vim** | Highly configurable text editor |
| `unimatrix.sh` | **Unimatrix** | Python-based Matrix digital rain terminal screen |
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
| `localsend.sh` | **LocalSend** | Cross-platform local network file sharing |
| `multipass.sh` | **Multipass** | Canonical lightweight Ubuntu VM manager |
| `postman.sh` | **Postman** | API design, testing, and collaboration platform |
| `virtualbox.sh` | **VirtualBox** | Oracle VM VirtualBox hypervisor |

---

### ☕ Daily Applications (`daily-apps/`)
| Script | Software | Description |
|---|---|---|
| `alacritty.sh` | **Alacritty** | Fast, GPU-accelerated terminal emulator |
| `bitwarden.sh` | **Bitwarden** | Secure cloud-synced password manager |
| `copyq.sh` | **CopyQ** | Advanced clipboard manager with searchable history |
| `flameshot.sh` | **Flameshot** | Powerful screenshot and annotation tool |
| `kdeconnect.sh` | **KDE Connect** | Seamless device integration and clipboard sharing |
| `keepassxc.sh` | **KeePassXC** | Local, encrypted offline password manager |
| `kitty.sh` | **Kitty** | Fast, feature-rich, GPU-based terminal emulator |
| `mpv.sh` | **MPV** | Lightweight, high-performance media player |
| `protonvpn.sh` | **ProtonVPN** | Secure VPN client for Linux (GNOME) |
| `qbittorrent.sh` | **qBittorrent** | Open-source BitTorrent client |
| `rustdesk.sh` | **RustDesk** | Open-source remote desktop software |
| `spotify.sh` | **Spotify** | Music streaming desktop client |
| `syncthing.sh` | **Syncthing** | Continuous, decentralized peer-to-peer file sync |
| `telegram.sh` | **Telegram** | Telegram desktop messaging client |
| `thunderbird.sh` | **Thunderbird** | Email, calendar, and contacts client |
| `vlc.sh` | **VLC Media Player** | Versatile cross-platform multimedia player |
| `whatsapp.sh` | **WhatsApp for Linux** | WhatsApp desktop client for Linux |

---

### 📄 Document & Note Applications (`document-apps/`)
| Script | Software | Description |
|---|---|---|
| `calibre.sh` | **Calibre** | E-book manager, reader, and format converter |
| `joplin.sh` | **Joplin** | Open-source note-taking app with end-to-end encryption |
| `libreoffice.sh` | **LibreOffice** | Comprehensive open-source office suite |
| `obsidian.sh` | **Obsidian** | Extensible Markdown-based knowledge base and notes |
| `onlyoffice.sh` | **ONLYOFFICE** | Highly compatible office editors for docs, sheets, slides |
| `thorium-reader.sh` | **Thorium Reader** | Modern, accessible EPUB and e-book reader |
| `yacreader.sh` | **YACReader** | Comic book reader and library organizer |

---

### 🎨 Creative & Media Applications (`creative-apps/`)
| Script | Software | Description |
|---|---|---|
| `ardour.sh` | **Ardour** | Digital audio workstation for recording, editing, and mixing |
| `audacity.sh` | **Audacity** | Multi-track audio editor and recorder |
| `freecad.sh` | **FreeCAD** | Open-source parametric 3D CAD modeler |
| `gimp.sh` | **GIMP** | GNU Image Manipulation Program for photo editing |
| `inkscape.sh` | **Inkscape** | Professional vector graphics editor (SVG, logos, illustrations) |
| `kdenlive.sh` | **Kdenlive** | Non-linear video editor powered by MLT |
| `krita.sh` | **Krita** | Professional digital painting and sketching application |
| `lmms.sh` | **LMMS** | Music production software (beats, synth, sound generation) |
| `obs.sh` | **OBS Studio** | Video recording and live streaming suite |
| `openboard.sh` | **OpenBoard** | Interactive whiteboard application for teaching and drawing |
| `shotcut.sh` | **Shotcut** | Cross-platform open-source video editor |
| `ventoy.sh` | **Ventoy** | Bootable USB creation tool for ISO/WIM/IMG files |

---

### 🔍 Hardware & Disk Analysis (`hardware-analysis/`)
| Script | Software | Description |
|---|---|---|
| `qdirstat.sh` | **QDirStat** | Qt-based disk usage analyzer for Linux (`kdirStat` / `WinDirStat` equivalent) |
