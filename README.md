Notes
=====
A note taking app.

Design Decisions
----------------
* I only have the location manager running when the master view is shown, so that it won't use up too much battery. I can turn it off otherwise because I only need the location when notes are being created and that is done from the master view.
* I still allow users to make notes when their location is off. I just do not display those notes on the map. I thought that the note taking functionality shouldn't force the user to give his/her location, so I just check for nil whenever I use the location.

Resources
---------
* git.to/masterdetail
* git.to/corelocation
