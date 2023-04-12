# Battery Report Generator

This script generates a battery report for a Windows system and extracts the design capacity and full charge capacity to calculate the battery percentage. The report is generated using the `powercfg` command and the data is extracted using regex.

## Getting Started

To use this script, follow these steps:

1. Clone this repository to your local machine.
2. Open Windows PowerShell and navigate to the directory where the script is located.
3. Run the script using the following command: `.\battery_report.ps1`
4. The script will generate a battery report in HTML format and save it to your user profile directory (`C:\Users\<Username>`).
5. The script will then extract the design capacity and full charge capacity from the report and calculate the battery percentage.
6. The results will be displayed in the PowerShell console.

## Requirements

This script requires Windows PowerShell and the `powercfg` command to be installed on your system. These tools are included with Windows and should be available by default.

## Policy Exceptions

If your device policy does not allow unverified PowerShell scripts to run, you may need to modify the policy or request an exception in order to run the `battery_report.ps1` script. Here are some possible solutions:

- **Option 1: Change the execution policy** - You can change the PowerShell execution policy to allow the script to run. To do this, open PowerShell as an administrator and run the following command: `Set-ExecutionPolicy RemoteSigned`. This will allow scripts signed by a trusted publisher to run on your device.
- **Option 2: Unblock the script** - If the script is blocked by the Windows security policy, you can unblock it using the Unblock-File cmdlet. To do this, open PowerShell as an administrator and run the following command: `Unblock-File C:\path\to\battery_report.ps1`. Replace `C:\path\to\` with the path to the directory where the script is located.
- **Option 3: Request an exception** - If neither of the above solutions work, you may need to request an exception from your device administrator or IT department. Explain that you need to run a PowerShell script to generate a battery report and provide a copy of the script for review. Your administrator can then make an exception for the script or provide an alternative solution.

Note that modifying device policies may have security implications, so be sure to follow best practices and consult with your device administrator or IT department before making any changes.


## Contributing

If you find a bug or would like to suggest an improvement, please open an issue or submit a pull request on GitHub.


