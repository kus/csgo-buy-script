# Kus' Counter-Strike: Global Offensive Buy Script

## What does it do?

Gives you "one click binds" to buy weapons/equipment or use radio commands, and allows you to set the binds up through CS:GO controls menu so you don't have to manually edit your config.cfg or bind them through console. It works the same way most buy scripts worked on CS1.6 and CS:S where you could bind them through the controls screen.

![Custom controls menu](https://raw.github.com/kus/csgo-buy-script/master/screenshots/custom-controls-menu.jpg "Custom controls menu")

![Bind through GUI](https://raw.github.com/kus/csgo-buy-script/master/screenshots/bind-through-gui.jpg "Bind through GUI")

## Important

Due to most servers on CS:GO using the command `sv_pure 1` the file `mouse_keyboard_options.txt` that is customised to allow you to bind your controls through the control screen is flagged if it not the standard file, so you need to use the custom file and bind your controls then change it back to the standard file. For Windows users I have created batch file `@custom-controls-menu.bat` that does this for you in the `cfg` folder. All you simply do is when you install the script, run `@custom-controls-menu.bat` in the `cfg` folder go into CS:GO, bind your controls, exit CS:GO and run the script `@custom-controls-menu.bat` again and it restores the original `mouse_keyboard_options.txt` file and away you go!

## Installation

### Windows

1. Extract the zip to your `Counter-Strike Global Offensive\csgo` folder, generally something like `C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo`
- Run `@custom-controls-menu.bat` in the `Counter-Strike Global Offensive\csgo\cfg` folder to setup the custom controls menu
- Bind your controls
- Exit CS:GO (I have found that alt-tabing can cause the server to still kick you for sv_pure 1, so best to exit and restart CS:GO)
- Run `@custom-controls-menu.bat` in the `cfg` folder again to restore the standard controls menu

If you want to change your binds later on, simply repeat Step 2 onwards again.

### Mac/Linux

1. Extract the zip to your `Counter-Strike Global Offensive/csgo` folder, generally something like `~/Library/Application Support/Steam/steamapps/common/Counter-Strike Global Offensive/csgo`
- Copy `mouse_keyboard_options.txt` in the `Counter-Strike Global Offensive\csgo\scripts` folder to `mouse_keyboard_options_ORIGINAL.txt`, overwrite if prompted
- Copy `mouse_keyboard_options_KUS.txt` in the `Counter-Strike Global Offensive\csgo\scripts` folder to `mouse_keyboard_options.txt`, overwrite if prompted
- Bind your controls
- Exit CS:GO (I have found that alt-tabing can cause the server to still kick you for sv_pure 1, so best to exit and restart CS:GO)
- Copy `mouse_keyboard_options_ORIGINAL.txt` in the `Counter-Strike Global Offensive\csgo\scripts` folder to `mouse_keyboard_options.txt`, overwrite if prompted

If you want to change your binds later on, simply repeat Step 2 onwards again.

## Copyright

Copyright (c) 2013 Blake Kus [blakek.us](http://blakek.us)

This plugin is dual licenced under MIT and GPL Version 2 licences. 

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.