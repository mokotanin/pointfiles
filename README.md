<div align="center">
<img src="https://raw.githubusercontent.com/cat-milk/Anime-Girls-Holding-Programming-Books/refs/heads/master/Linux/Sakurajima_Mai_Linux_Essentials.jpg" alt="ryo_arch" width="800" style="object-fit: cover; object-position: center;"><br>
My personal dotfiles for Arch Linux with Hyprland.
</div>

# .


## Explanation
### Static configs
[Static configs](./static) are configs that stays the same no matter what theme is applied. To use all the themes properly, try copying all the file in the app directory (even if the same are present in both static conf and themes conf) to your `~/.config` folder. The script will then symlink the files from the theme folder to your `~/.config` folder, overwriting the static configs if they are present in the theme folder.

### Themes
Every theme uses the shell script [switcher](./themes/switcher) to switch between the themes. The script will symlink the files from the theme folder to your `~/.config` folder, overwriting the static configs if they are present in the theme folder.
> [!WARNING]
> If you want to change more files with the theme, add them in both (or more) theme folders. Otherwise, the script will break the files and mess with the application.

### Custom apps
This folder is used to store pre-compiled applications file that are necessery for the good look of the overall theme.
All credit goes to the original authors of the applications, I just compiled them for my personal use and for the use of the themes.


In order: [Waybar-Module-Pomodoro](https://github.com/Andeskjerf/waybar-module-pomodoro).

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>
