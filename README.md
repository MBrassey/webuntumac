#### webuntumac (depreciated)

ubuntu 4.4.15-moby x86_64 GNU/Linux accessible from the browser, on your mac.

![licensebadge](https://img.shields.io/badge/license-CC0_1.0_Universal-blue)

#### Requirements

    A Mac
    <a href="https://docs.docker.com/engine/installation/mac/#/docker-for-mac">Docker for Mac</a>
    A web browser

#### Features

* ubuntu root [web] shell with the ability to open many concurrent shells.
* openbox [web] GUI with firefox pre-installed, multiple desktops for productivity.
* vmstat [web] live system statistics.
* includes: python, tmux, vim, nano, feh, terminator, unzip, wget and atop.

[<img src="/initialize/webuntumac_screenie.png">](https://brassey.io/)

#### Run from Docker index ( install )
You can pull, install & start the webuntumac container using this command within the Docker Terminal:
<pre>
docker run -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntumac
</pre>
Run webuntumac with logging:
<pre>
docker run -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -t -i mattinclude/webuntumac
</pre>
Run webuntumac with persistent storage directory:
<pre>
docker run -v webuntumac:/root/storage -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntumac
</pre>

#### Pull from Docker index

    docker pull mattinclude/webuntumac

#### Build it yourself

<pre>
git clone https://github.com/mattinclude/webuntumac.git
<br>
docker build --rm -t mattinclude/webuntumac webuntumac
<br>
docker run -d -h webuntumac -p 6080:6080 -p 369:369 -p 80:80 -p 88:8010 -d -i mattinclude/webuntumac
</pre>

#### Connect to webuntumac web-interface

Open a web browser and navigate to: <b>localhost</b>.

#### How to Uninstall (Run all three commands bellow)

Stop & Remove webuntumac using this command within the Docker Terminal:
<pre>
docker stop $(docker ps -a -q | grep -v mattinclude/webuntumac) && docker rmi -f mattinclude/webuntumac
</pre>
Stop / Remove ALL docker containers:
<pre>
docker stop $(docker ps -a -q) <br>
docker rm $(docker ps -a -q)
</pre>

#### Troubleshooting

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

#### Questions
Contact me at [matt@brassey.io](mailto:matt@brassey.io) with any questions or comments.

#### License
READMEGenesis is published under the __CC0_1.0_Universal__ license.

> The Creative Commons CC0 Public Domain Dedication waives copyright interest in a work you've created and dedicates it to the world-wide public domain. Use CC0 to opt out of copyright entirely and ensure your work has the widest reach. As with the Unlicense and typical software licenses, CC0 disclaims warranties. CC0 is very similar to the Unlicense.