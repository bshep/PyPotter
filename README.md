# PyPotter

PyPotter is a Python project allowing you to control your Home Assistant based smart home via a magic wand.

For now, more complete information can be found here: https://www.adamthole.com/category/smart-home/

# Docker

Variables:
<li><code>VIDEO_URL</code> - the URL where we should get the video from
<li><code>API_KEY</code> - an api_key to whatever api you are sending requests to
	
Directories:
<li><code>/config</code> - point this to where you want to store the trainig and config files
<li><code>/config/Training</code> - each folder here will containing training images to match against
<li><code><i>spellname</i>.ini</code> - follow the format below, contain the URL to ping when a spell is matched against
<p>
<code>
	[spell]
	URL = url goes here
</code>
</p>
# Acknowledgements
PyPotter shares inspiration and code from the following projects:  

Raspberry Potter - https://github.com/sean-obrien/rpotter/  
pi_to_potter - https://github.com/mamacker/pi_to_potter  
computer-vision - https://github.com/nrsyed/computer-vision  
