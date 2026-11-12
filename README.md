# Hypr-Scripts
Collection of my Hyprland scripts.

<details>
<summary><h2>Nightmode</h2></summary>  
It changes color temperature with sunsetr based on your location via http://ip-api.com.

#### Instalation
```
git clone https://github.com/FrederikFazberovic/Hypr-Scripts.git
cd ./Hypr-Scripts
chmod +x nightmode.sh
```
You will need to download [sunsetr](https://github.com/psi4j/sunsetr) based on your distro.  
Then just run the script on your autostart for it to automatically work.
</details>

<details>
<summary><h2>Tailscale toggle</h2></summary>  
Use this, only if you have tailscale mulvad plugin.  
This is wrapper that will turn off tailscale with tailscale down.  

#### Installation  

```
git clone https://github.com/FrederikFazberovic/Hypr-Scripts.git
cd ./Hypr-Scripts
chmod +x tailscale-toggle.sh
```
  
To run this, use it as wrapper like prime-run.
</details>

<details>
<summary><h2>Toggle Touchpad</h2></summary>
This is toggle touchpad script.

#### Installation
```
git clone https://github.com/FrederikFazberovic/Hypr-Scripts.git
cd ./Hypr-Scripts
chmod +x toggle_touchpad.sh
```  
For this to work, just run it, and it will disable your touchpad, rerun it to enable it again.  
It will create /tmp/touchpad.lock for touchpad state.
You can bind it to any key in your Hyprland config.
##### Example of config:
```
hl.bind("SUPER + CTRL + code:202", hl.dsp.exec_cmd("~/.config/caelestia/scripts/toggle_touchpad.sh"))
```
</details>
