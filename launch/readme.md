<h1>#README</h1>
<p>If you do not find what you are looking for visit the project page: <a href="https://github.com/mattinclude/webuntumac"><strong>here</strong></a></p>

<h1>Usage</h1>
<p>
Navigate to the left menu, choose the option you would like to launch.  
<br><br><code>
Take a look at the Dockerfile, research/fork/clone this repository and edit the settings to make your own custom ubuntu container, you can choose a different base OS too.  
</code><br><br>
<strong>
web-shell: Open Multiple, Resize Shells & Open New Tabs
</strong><br>
Double-click on the title bar of the shell window to collapse it:
<br><br><code>
then follow the on screen instructions (will appear on lower left corner).
</code><br><br>
<strong>
web-gui: Cannot Type, Keyboard Input Not Detected.
</strong><br>
Click the title bar at the top of the noVNC ubuntu window that says:
<br><br><code>
Connected (unencrypted) to: webuntumac:1
</code><br><br>
Your keyboard input now functions as expected.</p>

<h1>How to Uninstall</h1>
<p>
Stop & Remove webuntumac using this command within the Docker Terminal:
<br><br><code>
docker stop $(docker ps -a -q | grep -v mattinclude/webuntumac) && docker rmi -f mattinclude/webuntumac
</code>
<br><br>
Stop / Remove ALL docker containers:
<br><br><code>
docker stop $(docker ps -a -q)<br>
docker rm $(docker ps -a -q)
</code></p><br>
