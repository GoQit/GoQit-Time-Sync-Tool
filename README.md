# GoQit One Time Sync Tool

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows)
![Compatibility](https://img.shields.io/badge/Works%20With-Vista%2C%207%2C%208%2C%2010%2C%2011-blueviolet)

Is your Windows clock always wrong every time you start your computer? This often happens due to a faulty CMOS battery, forcing you to manually update the time again and again.

The **GoQit One Time Sync Tool** is a simple **one-click solution** to this problem. Instead of navigating through settings, just run this script, and it will instantly and forcefully sync your system time with the correct time.

![Screenshot](https://github.com/user-attachments/assets/03b3b298-b86f-4025-98a7-34b606d8ecf3)

---

## Table of Contents
- [Why Use This Tool?](#why-use-this-tool)
- [Key Features](#key-features)
- [System Requirements](#system-requirements)
- [Getting Started](#getting-started)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [Author](#author)

---

### Why Use This Tool?
The primary goal of this script is to provide a quick and effortless fix for systems where the clock resets after every shutdown, typically due to a drained or faulty CMOS battery. It saves you the daily frustration of correcting the time manually.

### Key Features
- ✅ **Administrator Check**: Automatically verifies if the script is run with admin rights.
- ✅ **Internet Check**: Provides a clean retry/exit option if no internet is detected.
- ✅ **Forceful Sync**: Completely resets the Windows Time service (`w32time`) to clear stubborn errors.
- ✅ **Reliable Servers**: Uses a list of well-known NTP servers (Google, NIST, Microsoft).
- ✅ **Clean UI**: Presents all messages in a professional, centered interface.
- ✅ **Customizable Timezone**: Easily configurable to any timezone.

### System Requirements
This script is designed to work on **Windows Vista and all newer versions**, including:
- Windows 7, 8, 8.1, 10, 11
- Windows Server versions (2008 and newer)

It will **not** work on Windows XP or older versions.

### Getting Started
1.  Download the `GoQit_TimeSync.bat` file from the [Releases page](https://github.com/GoQit/GoQit-Time-Sync-Tool/releases).
2.  Right-click the downloaded file.
3.  Select **"Run as administrator"**.
4.  The script will handle the rest!

### Configuration
By default, the script is set to `India Standard Time`. If you live in a different timezone, you can easily change it.

<details>
<summary><b>➡️ Click here for Step-by-Step Instructions on how to change the timezone.</b></summary>
<br>
  
  #### Step 1: Find Your Official Timezone Name
  1. Open the Windows Command Prompt. You can do this by pressing **Win + R**, typing `cmd`, and hitting **Enter**.
  2. In the command prompt window, type the following command and press **Enter**:
     ```cmd
     tzutil /l
     ```
     This command will display a long list of all timezones recognized by Windows.
  3. Scroll through the list to find the official name for your region. For example, someone in New York would look for `Eastern Standard Time`.
  4. Carefully copy the full, exact name of your timezone.

  #### Step 2: Edit the Script File
  1. Right-click the `GoQit_TimeSync.bat` file and select **Edit**. The file will open in Notepad.
  2. At the very top of the script, you will see the `CONFIGURATION` section:
     ```batch
     :: =================================================================
     ::                       CONFIGURATION
     :: =================================================================
     set "TIMEZONE=India Standard Time"
     ```
  3. Replace `"India Standard Time"` with the timezone name you copied from the command prompt. For example:
     ```batch
     set "TIMEZONE=Eastern Standard Time"
     ```
  4. Click **File > Save** in Notepad to save your changes.

That's it! Now, when you run the script, it will use the new timezone you have set.
</details>

---

### Contributing
Found a bug or have a suggestion? Feel free to [open an issue](https://github.com/GoQit/GoQit-Time-Sync-Tool/issues).

### Author
This tool is created and maintained by **Parth (GoQit One)**.
- **Website:** **[https://goqit.netlify.app/](https://goqit.netlify.app/)**

### License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---
*&copy; 2025 GoQit One*
