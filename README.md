# Operation: Frozen Hell

## What this is about
As a linux poweruser, I already use Linux on every productive System that I am allowed to install it on.
For a long time now I am wondering, wether I could replace windows on my gaming rig, too.
Like, combining productivitity and leisure. Have Linux as a viable gaming system.
People tend to assume this wasn't even possible. Someone even told me that this will happen when hell freezes over.

Well, what can I say...for me, this day has come.
I've tested [Garuda Linux](https://garudalinux.org) for a few weekds now, and was able to migrate nearly everything, causing me to decide to do the swap now.

In this repo I want to share my journey, problems I encountered and how I solved them, as well as my config files.

---

## Why I chose Garuda Linux
One day, I just woke up, scrolled through the news tab, and discovered an article about Garuda Linux. First I thought: "Another day, another new distro". But then I read something, that caught my attention: Native NVIDIA driver Support! I dove deeper into this distro and discovered it to be arch based as well, which I enjoyed even more. 
I looked up a few things I previously had difficulties with and decided to give it a try.

## Native applications
- Text editor, CLI, ...
- Mozilla Thunderbird
- Mozilla Firefox, Chrome, ...
- Davinci Resolve Studio 
- IntelliJ IDEA, Eclipse, Visual Studio Code, ...

## Successfull migrations:

| Application/Task   | Description               | replacement           | How to accomplish |
| ------------------ | ------------------------- | --------------------- | ----------------- |
| Steam              | Game Launcher             | none                  | Native, Proton    |
| iCue (Keyboard)    | Keyboard lighting/macros  | ckb-next              | install [ckb-next](https://aur.archlinux.org/packages/ckb-next/) |
| iCue (fan control) | Commander Pro fan Control | pwmconfig, fancontrol | follow [this](https://blog.ktz.me/a-usb-fan-controller-that-now-works-under-linux/) tutorial |

## Impossible migrations

| Application/Task                        | Reason                                              |
| --------------------------------------- | --------------------------------------------------- |
| Ubisoft Connect Games w/Easy Anti Cheat | They use a pre-Epic EAC with no wine/proton support | 

## My configuration

I configured many things to my own style and wishes. I chose orange as a base colour, but you can put in whatever you like, of course. 
Any custom config files will be uploaded to this repo.

# i3 config

Be careful before using my i3 config. To be still able to do anything you should first edit the preferred applications to be those you personally like to use, and have them installed. Else the keyboard shortcuts won't be effective (especially terminal and file browser), potentially ending in a softlock, where you cannot correct this from within your system.
