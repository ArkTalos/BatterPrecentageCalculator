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

## Contributing

If you find a bug or would like to suggest an improvement, please open an issue or submit a pull request on GitHub.


