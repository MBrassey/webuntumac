[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KYEHRWKYCD3A2)
<h1>webuntumac</h1>

ubuntu 4.4.15-moby x86_64 GNU/Linux accessible from the browser, on your mac.                                                                      
<h1>Prerequisites</h1>
* A Mac
* <a href="https://docs.docker.com/engine/installation/mac/#/docker-for-mac">Docker for Mac</a>
* A web browser
<h1>Features</h1>
<ul>
  <li>ubuntu root [web] shell with the ability to open many concurrent shells.</li>
  <li>openbox [web] GUI with firefox pre-installed, multiple desktops for productivity.</li>
  <li>vmstat [web] live system statistics.</li>
  <li>includes: python, tmux, vim, nano, feh, terminator, unzip, wget and atop.</li>
</ul><br>
<img src="https://github.com/mattinclude/webuntumac/blob/master/initialize/webuntumac_screenie.png">

<h1>Run from Docker index ( install )</h1>
You can pull, install & start the webuntumac container using this command within the Docker Terminal:
<pre>
docker run -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntumac
</pre>
Run webuntumac with logging:
<pre>
docker run -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -t -i mattinclude/webuntumac
</pre>
Runn webuntumac with persistant storage directory:
<pre>
docker run -v webuntumac:/root/storage -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntumac
</pre>

<h1>Pull from Docker index</h1>
<pre>
docker pull mattinclude/webuntumac
</pre>

<h1>Build it yourself</h1>
<pre>
git clone https://github.com/mattinclude/webuntumac.git
<br>
docker build --rm -t mattinclude/webuntumac webuntumac
<br>
docker run -d -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntumac
</pre>
<h1>Connect to webuntumac web-interface</h1>

Open a web browser and navigate to: <b>localhost</b>.

<h1>How to Uninstall (Run all three commands bellow)</h1>

Stop & Remove webuntumac using this command within the Docker Terminal:
<pre>
docker stop $(docker ps -a -q | grep -v mattinclude/webuntumac) && docker rmi -f mattinclude/webuntumac
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
Connected (unencrypted) to: webuntumac:1
</pre>
Your keyboard input now functions as expected.
<h1>Credits</h1>
<pre>
System Platforms: ubuntu, pm2, noVNC, web-vmstats
</pre>
