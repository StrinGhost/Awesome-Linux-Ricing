# Prefix key
```
CTRL+Space
```
 
 # Panes
```
f   - search pane
x   - kill active pane
z   - toggle zoom state
{   - Swap current & previous pane
}   - Swap current & next pane
```
 
 ### Move between panes
 ```
 LEFT   -   h
 DOWN   -   j
 UP     -   k
 RIGHT  -   l
 ```

 ### Split Panes
```
 LEFT   -   Shift+H
 DOWN   -   Shift+J
 UP     -   SHift+K
 RIGHT  -   Shift+L
```

 ### Select Panes
```
Up     - Select above pane
Down   - Select below pane
Left   - Select left pane
Right  - Select right pane
```

 ### Resize Panes
 ```
M-Up     - Resize up
M-Down   - Resize down
M-Left   - Resize left
M-Right  - Resize right
```


# Window

```
r   - rename window
c   - Create window


0 to 9      Select windows 0 to 9
```

# Sessions
 
 ```
R   - rename session
s   - switch session
k   - kill session
d   - detach session
```
 ### Switch Sessions
 ```
(           Switch to previous session.
 )          Switch to next session.
```


# Client
```
D           Choose a client to detach.
```

 # General
```
R   - rename session
s   - switch session
r   - rename window
k   - kill session
c   - Create window
f   - search pane
C   - copy mode
d   - detach session
:   - command mode
x   - kill active pane
```
 

C-Space $       Rename current session
C-Space &       Kill current window
C-Space ,       Rename current window
C-Space :       Prompt for a command
C-Space ;       Move to the previously active pane
C-Space ?       List key bindings
C-Space C       Customize options
C-Space [       Enter copy mode
C-Space c       Create a new window
C-Space f       Search for a pane
C-Space n       Select the next window
C-Space o       Select the next pane
C-Space p       Select the previous window
C-Space q       Display pane numbers
C-Space s       Choose a session from a list
C-Space x       Kill the active pane

C-Space M-Up    Resize the pane up by 5
C-Space M-Down  Resize the pane down by 5
C-Space M-Left  Resize the pane left by 5
C-Space M-Right Resize the pane right by 5

C-Space C-Up    Resize the pane up
C-Space C-Down  Resize the pane down
C-Space C-Left  Resize the pane left
C-Space C-Right Resize the pane right

 

 "           Split the current pane into two, top and bottom.
 $           Rename the current session.
 %           Split the current pane into two, left and right.
 &           Kill the current window.
 (           Switch the attached client to the previous session.
 )           Switch the attached client to the next session.
 ,           Rename the current window.
 -           Delete the most recently copied buffer of text.
 .           Prompt for an index to move the current window.
 0 to 9      Select windows 0 to 9.
 :           Enter the tmux command prompt.
 ;           Move to the previously active pane.

 D           Choose a client to detach.
 L           Switch the attached client back to the last session.
 [           Enter copy mode to copy text or view the history.
 ]           Paste the most recently copied buffer of text.
 c           Create a new window.
 d           Detach the current client.
 f           Prompt to search for text in open windows.
 i           Display some information about the current window.
 l           Move to the previously selected window.
 m           Mark the current pane (see select-pane -m).
 M           Clear the marked pane.
 n           Change to the next window.
 o           Select the next pane in the current window.
 p           Change to the previous window.
 q           Briefly display pane indexes.
 r           Force redraw of the attached client.
 s           Select a new session for the attached client interactively.
 t           Show the time.
 w           Choose the current window interactively.
 x           Kill the current pane.
 z           Toggle zoom state of the current pane.
 {           Swap the current pane with the previous pane.
 }           Swap the current pane with the next pane.
 ~           Show previous messages from tmux, if any.
 Page Up     Enter copy mode and scroll one page up.

# About Tmux

 ## Sessions
   A session is a single collection of pseudo terminals under the management of tmux.
   Each session has one or more windows linked to it.

 ## Windows
 A window occupies the entire screen and may be split into rectangular **panes**, each of which is  a  separate pseudo terminal. Any number of tmux instances may connect to the same session and any number of windows may be present in the same session.
 **Once all sessions are killed, tmux exits.**


![[2024-September_22-09.svg]]
