## MOVING FUXTICK!!
WHAZZZAPPPPPPPP!
In this guide, I will teach you how to move the "fuxtick.sh" file out the directory it comes installed in, and into any directory you want it to be in. 

Before you execute the move, do make sure that the location you are moving the program to is one that you want your cloned repositories to be in. fuxtick will automatically install any and all cloned repositories that a user selects into the same directory that the program itself is located in.
## FIND THE PATH OF THE FILES
The first step you need to take is finding out where the file you want to move is actually located. You can do this using the "realpath" command in bash. Here is an example.
First, go into the directory for fuxtick.
```
cd fuxtick
```
Then, use the "realpath" command to find the exact path for the fuxtick.sh file:
```
realpath fuxtick.sh
```
It should look something like this:
```
/home/fuxtick/fuxtick.sh
```
NOTE: This path will look different based on the platform you have downloaded fuxtick on. Ex: Termux
```
/data/data/com.termux/files/home/fuxtick/fuxtick.sh
```
## FIND THE LOCATION YOU WANT TO MOVE TO
Now that you have identified where the file you'd like to move is located, you have to find the path to the location you want to move the file to.
For this example, I will be moving the fuxtick.sh file from the directory it came installed in, to the "home" directory. 

I am doing this because when we clone a repository using fuxtick, the program will automatically install that repository in whatever directory it is located in.
In Termux, the path for the home directory will look something like this:
```
/data/data/com.termux/files/home/
```
In general, if you are simply trying to move the fuxtick.sh file out of the directory it is stored in, you can simply take the realpath of the file, and delete the "fuxtick" directory portion.
## MOVE THE FILE!
Now that we have identified the current location of the file, as well as the location we would like to move it to, and their respective paths, all we have to do now is execute the move!
We can do this with a simple "mv" command.
```
mv <current path to file> <desired path of file>
```
(NOTE: DO NOT INCLUDE THE "<>" SYMBOLS IN THE ACTUAL COMMAND)

It's really as simple as that! You have now moved fuxtick to the directory you want it to be in. Thank you for using fuxtick, and be sure to enjoy it responsibly.
