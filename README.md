# GoQit One Time Sync Tool

A simple, forceful, and elegant batch script created by **GoQit One** to fix common Windows time synchronization issues and set the correct time from reliable NTP servers.

![Screenshot](https://github.com/user-attachments/assets/03b3b298-b86f-4025-98a7-34b606d8ecf3)

---

## Features
- **Administrator Check**: Automatically checks if the script is run with admin rights.
- **Internet Check**: Checks for an active internet connection and provides a clean retry/exit option.
- **Forceful Sync**: Completely resets the Windows Time service (`w32time`) to clear stubborn errors before syncing.
- **Reliable Servers**: Uses a list of well-known NTP servers (Google, NIST, Microsoft).
- **Clean UI**: Presents all messages in a clean, centered, and professional-looking interface.
- **Customizable Timezone**: Easily configurable to any timezone by editing one variable.

## Author
- This tool is created by **Parth**.
- **Brand:** GoQit One
- **Website:** **[https://goqit.netlify.app/](https://goqit.netlify.app/)**

## System Requirements
This script is designed to work on **Windows Vista and all newer versions**, including:
- Windows 7, 8, 8.1, 10, 11
- Windows Server versions (2008 and newer)

It will **not** work on Windows XP or older versions.

## How to Use
1.  Download the `GoQit_TimeSync.bat` file from this repository.
2.  Right-click the file and select **"Run as administrator"**.
3.  The script will handle the rest!

## Configuration: How to Change the Timezone

By default, the script is set to `India Standard Time`. If you live in a different timezone, you can easily change it by following these steps:

### Step 1: Find Your Official Timezone Name

1.  Open the Windows Command Prompt. You can do this by pressing **Win + R**, typing `cmd`, and hitting **Enter**.

2.  In the command prompt window, type the following command and press **Enter**:
    ```cmd
    tzutil /l
    ```
    This command will display a long list of all timezones recognized by Windows.

3.  Scroll through the list to find the official name for your region. For example, someone in New York would look for `Eastern Standard Time`.

4.  Carefully copy the full, exact name of your timezone.

### Step 2: Edit the Script File

1.  Right-click the `GoQit_TimeSync.bat` file and select **Edit**. The file will open in Notepad.

2.  At the very top of the script, you will see the `CONFIGURATION` section:
    ```batch
    :: =================================================================
    ::                       CONFIGURATION
    :: =================================================================
    set "TIMEZONE=India Standard Time"
    ```

3.  Replace `"India Standard Time"` with the timezone name you copied from the command prompt. For example:
    ```batch
    set "TIMEZONE=Eastern Standard Time"
    ```

4.  Click **File > Save** in Notepad to save your changes.

That's it! Now, when you run the script, it will use the new timezone you have set.

---

## Contributing
If you find a bug or have a suggestion, please feel free to [open an issue](https://github.com/GoQit/GoQit-Time-Sync-Tool/issues).

---
*&copy; 2025 GoQit One*
