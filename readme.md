# Yandex password export script
## Why?
Because yandex browser dev team had cut password export feature from chromium and had change password storing method. So you don't have any chance to backup/transfer your passwords in normal way.

## How? 
I had make a script which simulate typical copypaste from ya.browser password manager to excel (or any compatible spreadsheet editor). Algorythm is simple:  
1. Select passwords list by pressing Tab
2. Open password using Enter
3. Copy - Alt+Tab - Paste - Alt+Tab (repeat for username, pass, URL)
4. Scroll to next password and repeat steps 2-3
5. ???
6. PROFIT!

## Demo
Check out this video: https://www.youtube.com/watch?v=wly1G78QwgE

## Usage
1. Close every app that could drop a popup window or change app focus
2. First of all you should install AutoHotkey from https://www.autohotkey.com (In my case it is AutoHotkey 1.1.30.03)
3. Download .ahk file from this repository
4. Open blank excel file
   1. Fill A1-D1 cells (column titles) like this: name, url, username, password
   2. Set coursor on A2 position
5. Prepare 3 windows in your visibility: script folder, excel and yandex password manager
6. Just remember: Ctrl+Esc will stop script. If you stop it, open file again
7. Prepare script 
   1. Open .ahk file in text editor 
   2. Change PassCount to value "more or equal" your password count. It will duplicate last password if you will enter higher value, nothing critical. Just be ready to close script when it done.
   3. Open script (no visible changes, only AHK icon in tray)
8. (!!!) Click on excel to move app focus on it. Don't change cell coursor.
9. (!!!) Prepare ya.browser. 
   1. Open passwords tab
   2. Add password with url like !!!!!!!!!!!!! (must be first in list, see known issues)
   3. Close/approve all (yellow?) popups like "Store your cards data" or "One click password access"
   4. Open any password card
   5. Press Escape (it should close the card). Don't touch anything else from now!
10. (!!!) Now you are ready. Ya.Browser must be in focus, excel must be previos focused app
11. Press Ctrl+I 
12. When all passwords would copied, check excel file for bad lines (see known issues)
13. Save as CSV (comma separator)
14. Import "chrome csv file" in any app you like

## Known issues
* Missclicks. Because of instability in system perfomance, there are some "lost" key pressing during copy. You can add some delays with Sleep function in .AHK or make some fundumental changes and pull request them :)
* Comments are not copied. Yep, because I dont use them at all. Feel free to improve this
* Code looks like trash. Yep. This is my first-ish working AHK script. Feel free to fix 18 lines of Send {Tab} :)

## FAQ
* Q: But Opera could export your data from yandex! 
  * Yep, everything except passwords. Check "Why" section for reasons.
* Q: Why don't you reverse engineer protocol or password storage methods?
  * Because f-k this, too long for such a one-time task. This script takes me 15 minutes to create including AHK syntax exploration.

Feel free to make any kind of contibution! 