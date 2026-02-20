# Dotfiles

Конфиги для Arch Linux.  
Поддерживаемые окружения:

- GNOME (есть настройки и расширения)  
- KDE (будет позже)  

## Структура

- `/zsh` → `.zshrc`  
- `/tmux` → `.tmux.conf`, `statusline.conf`, `utility.conf`  
- `/desktop`
	- `gnome` → gsettings и список расширений  
- `/scripts` → вспомогательные скрипты  
	- `install-gnome-extensions.sh` → устанавливает все расширения из списка

## Установка

### 1. Пакеты
```bash
git clone https://github.com/Idzu/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x ./scripts/install-packages.sh
./scripts/install-packages.sh
```

## 2. Применение конфигов
```bash
sudo pacman -S stow
cd ~/.dotfiles
stow */
```

## 2.1 GNOME
```bash
# Установить расширения
chmod +x ./scripts/install-gnome-extensions.sh
./scripts/install-gnome-extensions.sh

# Восстановить настройки
dconf load / < desktop/gnome/gsettings.conf
```

## Шпаргалки
### Сохранение установленных пакетов
```bash
# Чтобы перечислить пакеты, установленные из официальных репозиториев Arch
pacman -Qenq > pkglist.txt
# Чтобы перечислить пакеты, установленные из AUR или сторонних репозиториев:
pacman -Qmq > aurlist.txt
```
### GNOME
```bash
# Сохранить список расширений
gnome-extensions list > desktop/gnome/extensions.txt
# Сохранить список активных расширений
gsettings get org.gnome.shell enabled-extensions > desktop/gnome/enabled-extensions.txt
# Сохранить все настройки
dconf dump / > desktop/gnome/gsettings.conf
```

## TODO
- [ ] Добавить скрины GNOME
- [ ] Конфиги для Alacritty, vscode