# GBDK Template

This is my template for getting started with a fresh GBDK project using Emulicious in a VSCode workspace.

The Emulicious Debugger plugin (emulicious.emulicious-debugger) will need to be installed and configured like so:
1. Click the gear icon next to the Emulicious Debugger plugin
2. Provide the path to your Java Runtime
3. Provide the path to your Emulicious.jar

Additionally, you'll need to launch Emulicious once `(java -jar /path/to/emulitious/Emulicious.jar)`, and configure Remote Debugging:
- Tools -> Remote Debugging -> Enabled

This configuration doesn't set a default build task, so when you press **Ctrl + Shift + B**, you'll have the option to either build the GameBoy ROM for your project, or clean up all build files. If you want to change this behavior, you can change the **isDefault** option on the build task in **tasks.json** to **true**.

To run the resulting ROM in Emulicious Debugger, press **F5** and specify the ROM name in the prompt in VSCode and hit **Enter**. To run the resulting rom in Emulicious without debugging, press **Ctrl + F5**, enter the ROM name in the prompt and hit **Enter**.