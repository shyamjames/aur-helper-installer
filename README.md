## 🚀 A Simple Script to Install an AUR Helper in Your Arch Linux! 🖥️🐧

Yay (Yet Another Yaourt) and Paru are AUR helpers for Arch Linux that simplify installing and managing AUR packages while also handling Pacman packages.

🛠️ Paru, designed as a Yay alternative, focuses on minimalism, speed, and better security with a cleaner codebase.

### 📜 Installation Steps:

**Option 1: One-Click Installation (Recommended)**

To install either Yay or Paru with a single command, open your terminal and execute:  
Note - You need package `curl` for this.  

```bash
sh <(curl -L https://raw.githubusercontent.com/shyamjames/aur-helper-installer/refs/heads/main/aur-helper-installer.sh)
```

**Option 2: Using Git**

1.  🔗 Clone the repository:
    ```bash
    git clone https://github.com/shyamjames/aur-helper-installer.git
    ```
2.  📂 Navigate to the directory:
    ```bash
    cd aur-helper-installer
    ```
3.  🔑 Give execution permission to the script:
    ```bash
    chmod +x aur-helper-installer.sh
    ```
4.  ▶️ Run the script:
    ```bash
    ./aur-helper-installer.sh
    ```

✨ Enjoy seamless AUR package management! 🚀
