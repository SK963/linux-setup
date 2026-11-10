# 💻 Asus Vivobook Setup : Linux (Ubuntu)



---


# flow 

setting 
- remapping the right alt to ctrl key


clipboard and screenshot apps
- cliboard : 
- screenshot : 

Browser
- Browser installations : brave , chrome

code editors
- VS Code 
- antigravity ide 


Resource Monitoring tools 
- Vitals 
- extion manager + vitals extiension 


runtime 
- install all the runtimes dir (c , cpp , java , rust ,go , python , node )

terminal & cli tools
- terminals :
- Terminal Setting & extensions : oh-my-zsh , other terminal extensions : 
- terminal softwares : git , gh , curl , bat (batcat ) etc (in the cli-tools)





---

# Settings 
Remap the Right Alt key to Right Control system-wide using `keyd`:
```bash
cd settings
chmod +x remap-rightalt-to-ctrl.sh
./remap-rightalt-to-ctrl.sh
```

### ⚡ Batch Installation

**Install all CLI tools & utilities:**
```bash
cd cli-tools
chmod +x ./*.sh
./*.sh
cd ..
```

**Install all developer environments, runtimes & applications:**
```bash
cd installers
chmod +x ./*.sh
./*.sh
cd ..
```

> **Tip:** You can also run individual scripts as needed (e.g., `./cli-tools/fzf.sh` or `./installers/docker.sh`).

---

## Included Software & Tools

### 📦 Applications, Runtimes & Dev Environments (`installers/`)

| Script | Software / Tool | Description |
|---|---|---|
| `ansible.sh` | **Ansible** | IT automation tool for configuration management and deployment |
| `antigravity.sh` | **Google Antigravity** | Google Antigravity developer agent application |
| `aws-cli.sh` | **AWS CLI** | Amazon Web Services unified command-line interface |
| `azure-cli.sh` | **Azure CLI** (`az`) | Microsoft Azure command-line tools |
| `cpp.sh` | **C / C++** (`g++`, `gcc`, `gdb`, `cmake`) | GNU C/C++ compilers (`build-essential`), debugger (`gdb`), and CMake |
| `docker.sh` | **Docker Engine** | Docker container runtime and CLI tools |
| `docker-destop.sh` | **Docker Desktop** | Complete Docker Desktop GUI development environment |
| `gcp-cli.sh` | **Google Cloud SDK** (`gcloud`) | Google Cloud Platform management CLI |
| `go.sh` | **Go** (`golang-go`) | The Go programming language compiler and tools |
| `java8.sh` | **Java 8** (`openjdk-8-jdk`) | OpenJDK 8 development kit |
| `java21.sh` | **Java 21** (`openjdk-21-jdk`) | OpenJDK 21 LTS development kit |
| `kubectl.sh` | **Kubectl** | Kubernetes command-line cluster management tool |
| `minikube.sh` | **Minikube** | Local single-node Kubernetes cluster for development |
| `multipass.sh` | **Multipass** | Canonical's lightweight Ubuntu virtual machine manager |
| `nodejs18.sh` | **Node.js 18** & **npm** | JavaScript runtime and package manager |
| `oh-my-zsh.sh` | **Zsh & Oh My Zsh** | Zsh shell, `fonts-powerline`, and the Oh My Zsh configuration framework |
| `postman.sh` | **Postman** | API design, testing, and collaboration platform (via Snap) |
| `python312.sh` | **Python 3.12** | Python 3.12 interpreter, `python3.12-venv`, and `pip` |
| `rust.sh` | **Rust** & **Cargo** | Rust systems programming language and package manager (via `rustup`) |
| `terraform.sh` | **Terraform** | HashiCorp infrastructure-as-code automation tool |
| `virtualbox.sh` | **VirtualBox** | Oracle VM VirtualBox hypervisor |
| `vscode.sh` | **Visual Studio Code** | Code editor and developer IDE |

---

### 🛠️ CLI Tools & Utilities (`cli-tools/`)

| Script | Software / Tool | Description |
|---|---|---|
| `bat.sh` | **bat** (`batcat`) | Modern `cat` clone with syntax highlighting and Git integration |
| `bottom.sh` | **bottom** (`btm`) | Customizable, cross-platform graphical process and system monitor |
| `btop.sh` | **btop** | Resource monitor showing usage and stats for CPU, RAM, disks, network, and processes |
| `dust.sh` | **dust** (`du-dust`) | Rust-based, intuitive disk usage analyzer (`du` alternative) |
| `exa.sh` | **exa** | Modern replacement for `ls` with color and tree view |
| `eza.sh` | **eza** | Modern, actively maintained successor to `exa` for directory listings |
| `fastfetch.sh` | **fastfetch** | Fast, lightweight system information display tool |
| `fd-find.sh` | **fd** (`fdfind`) | Simple, fast, and user-friendly alternative to `find` |
| `fzf.sh` | **fzf** | Command-line fuzzy finder for files, history, and processes |
| `git.sh` | **Git** | Distributed version control system |
| `github-cli.sh` | **GitHub CLI** (`gh`) | Official GitHub command line tool for PRs, issues, and repos |
| `htop.sh` | **htop** | Interactive, colorful process viewer and system monitor |
| `jq.sh` | **jq** | Lightweight and flexible command-line JSON processor |
| `lazygit.sh` | **lazygit** | Simple terminal UI for git workflows |
| `localsend.sh` | **LocalSend** | Open-source cross-platform local network file sharing tool |
| `ncdu.sh` | **ncdu** | NCurses disk usage analyzer |
| `neofetch.sh` | **neofetch** | CLI system info tool displaying distribution logo and specs |
| `nvtop.sh` | **nvtop** | Task monitor for GPUs (Nvidia, AMD, Intel) |
| `ripgrep.sh` | **ripgrep** (`rg`) | Fast line-oriented regex search tool (`grep` alternative) |
| `terminal-autosuggestion.sh` | **Zsh Autosuggestions Repo** | OpenSUSE repository configuration for `zsh-autosuggestions` |
| `tldr.sh` | **tldr** | Simplified, community-driven practical man pages |
| `tmux.sh` | **tmux** | Terminal multiplexer for managing multiple terminal sessions |
| `tree.sh` | **tree** | Recursive directory listing command producing a depth-indented file tree |
| `yq.sh` | **yq** | Command-line YAML, JSON, and XML processor |
| `zoxide.sh` | **zoxide** | Smarter `cd` command with fuzzy directory jump memory |
| `zsh-autosuggestions.sh` | **zsh-autosuggestions** | Fish-like autosuggestions for Zsh shell |
| `zsh-syntax-highlighting.sh` | **zsh-syntax-highlighting** | Fish-like syntax highlighting for Zsh commands |
