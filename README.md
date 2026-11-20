# Chenard Chess Engine (`xchenard`) für Android (Termux & X11)

Portierung der C++-Schach-Engine **Chenard** (von Don Cross) für Android-Smartphones (getestet auf 6,7 Zoll) unter **Termux**, **Termux:X11**, **Openbox** und **XBoard** – inklusive einkompiliertem Eröffnungsbuch, vorberechneten `.egm`-Endspieldatenbanken sowie deutscher und türkischer Oberfläche.

## Enthalten im Paket (`Chenard-Backup.tar.gz`)
- **Engine:** Selbst kompilierte ARM64-C++-Engine `xchenard` (mit integriertem Eröffnungsbuch `openbook.cpp`)
- **Endspieldatenbanken:** Alle 10 vorberechneten `.egm`-Tabellen (`wp.egm`, `wq.egm`, `wr.egm`, `wqbr.egm`, `wqbb.egm`, `wqbn.egm`, `wpbb.egm`, `wpbn.egm`, `wbwb.egm`, `wbwn.egm`)
- **Sprachen:** Deutsche (`de`) und türkische (`tr`) XBoard-Übersetzungen inkl. Openbox-Rechtsklick-Sprachumschalter
- **Konfiguration:**
  - `~/schach.sh` (Startskript mit `-size small`, One-Click-Move und Button-Bar)
  - `~/.config/openbox/rc.xml` & `menu.xml` (zentrierte Dialogfenster & Sprachwechsel DE / TR / EN)
  - `~/.termux/termux.properties` (optimierte Zusatz-Tastenleiste)

## Termux:X11 Empfohlene Einstellungen
- **Display Resolution:** `620x650` (Custom)
- **Touchscreen Input Mode:** `Simulated Touchpad` (für praktischen 2-Finger-Zoom in Menüs)

## Installation auf Android (Termux aus F-Droid)
1. Termux-Pakete installieren:
   ```bash
   pkg update && pkg upgrade -y
   pkg install -y x11-repo
   pkg install -y termux-x11-nightly openbox xboard gettext clang make
   ```
2. `termux-x11.apk` installieren und `Chenard-Backup.tar.gz` im Termux-Home-Verzeichnis entpacken:
   ```bash
   tar -xzf Chenard-Backup.tar.gz -C /
   chmod +x ~/schach.sh ~/chenard/linux/xchenard
   ```
3. Starten:
   ```bash
   ~/schach.sh
   ```
   *(Danach zur App **Termux:X11** wechseln. Per Rechtsklick/Zwei-Finger-Tippen auf den Hintergrund lässt sich die Sprache jederzeit zwischen Deutsch, Türkçe und English wechseln.)*

---
*Original Chenard C++ Source Code by Don Cross (http://cosinekitty.com).*
