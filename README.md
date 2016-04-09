<h1>webuntu </h1>

webuntu is a docker container usable on Windows, Linux and Mac. The container allows you to launch an ubuntu openbox gui, bash-shell and system statistics from your web browser. This container is one of the quickest ways to run a Linux GUI on Windows and Mac. This container offers a useful base image, edit the Dockerfile and research/fork/clone this repository to customize your own sandboxed host container.  

<h1>Prerequisites</h1>
* <a href="https://www.docker.com/">Docker</a>
* A web browser

<h1>Features</h1>
<ul>
  <li>ubuntu root [web] shell with the ability to open many concurrent shells.</li>
  <li>openbox [web] GUI with firefox pre-installed, multiple desktops for productivity.</li>
  <li>vmstat [web] live system statistics.</li>
</ul>
<img src="https://github.com/mattinclude/webuntu/blob/master/initialize/webuntu_screenie.png">

<h1>Run from Docker index ( install )</h1>
You can pull, install & start the webuntu container using this command within the Docker Terminal:
<pre>
docker run -h webuntu -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntu
</pre>
Run webuntu with logging:
<pre>
docker run -h webuntu -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -t -i mattinclude/webuntu
</pre>

<h1>Pull from Docker index</h1>
<pre>
docker pull mattinclude/webuntu
</pre>

<h1>Build it yourself</h1>
<pre>
git clone https://github.com/mattinclude/webuntu.git
<br>
docker build --rm -t mattinclude/webuntu webuntu
<br>
docker run -d -h webuntu -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntu
</pre>

<h1>Connect to webuntu web-interface</h1>

Find webuntu's container IP address:
<pre>
docker-machine ls
</pre>
Or..
<pre>
docker-machine ip default
</pre>

Navigate to this IP address using your web browser or launch the container's web preview using Kitematic.

<h1>How to Uninstall</h1>

Stop & Remove webuntu using this command within the Docker Terminal:
<pre>
docker stop $(docker ps -a -q | grep -v mattinclude/webuntu) && docker rmi -f mattinclude/webuntu
</pre>
Stop / Remove ALL docker containers:
<pre>
docker stop $(docker ps -a -q) <br>
docker rm $(docker ps -a -q)
</pre>

<h1>Troubleshooting</h1>
Docker: dial tcp: lookup index.docker.io: no such host
<pre>
docker-machine ssh default <br>
sudo sed -i '1s/^/nameserver 8.8.8.8\n/' /etc/resolv.conf && exit
</pre>
web-gui: Cannot Type, Keyboard Input Not Detected. Click the title bar at the top of the novnc ubuntu window
that says:
<pre>
Connected (unencrypted) to: webuntu:1
</pre>
Your keyboard input now functions as expected.
<h1>Credits</h1>
<pre>
System Platforms: ubuntu, pm2, noVNC, web-vmstats
</pre>
