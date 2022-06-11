# Red_BetterCSharp

If you ever tried to script with C# in FiveM you know how tedious it can be to 

Build --> Move --> Adapt --> Refresh --> Restart

This resource automates the refresh/restart part and provides an example to automate the move and adapt part.
To make it work in visual studio you just need to edit your active debug configuration and add an executable file, bind it to a .bat like the one provied
and let xcopy and curl do all of the work.

![Image1](https://cdn.discordapp.com/attachments/976130772572446780/985175911622140034/unknown.png)
![Image2](https://user-images.githubusercontent.com/33759569/173190255-0645687e-9047-46be-853b-9d14bf189d35.png)

## Better CS How-To

- Download/clone the repository
- Update your server.cfg to include the exec_me.cfg file instructions
- Customise the example .bat file provided according to your folders
- Setup the Visual Studio ( or your preferred IDE ) debug option to build and then execute the .bat file
