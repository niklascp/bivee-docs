#!/bin/sh

# Homebrew shell script (with various casks)
# ------------------------------------------------------------------------
# Ideas stolen from these talented people:
# http://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew
# http://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-2-global-package-managers
# https://gist.github.com/yosukehiyoshi/fa070e3b2d581bee9903
# https://raw.githubusercontent.com/ChristopherA/dotfiles/master/install/brewfile-basic.sh
# https://github.com/kylegordy/Brew-Install-Script

# The "Brewfile" way of doing this got deprecated, but it looks like this can be run as a shell script with minor changes.
# Usage: $ chmod +x brew-install.sh
#        $ ./brew-install.sh

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
 
# Make sure things are current and fix any issues
brew update
brew upgrade
brew doctor

# Add any other libs you'd like to this list
binaries=(
	git
)

# Install Binaries
echo "installing binaries..."
brew install ${binaries[@]}

# Clean up caches
brew cleanup

# Install Cask
brew install caskroom/cask/brew-cask

# Tap Versions to install beta versions of apps like Chrome Canary or Sublime Text 3
brew tap caskroom/versions
 
# Install Casks
#--------------------------------

# Apps
# A number of apps are installable via Cask. Add any others you'd like here.
# To see if an app is available on Cask, just do $ brew cask search [APP NAME]
apps=(

	# file sync/FTP
	virtualbox
	vagrant

	# tools
	colorpicker-skalacolor
	heroku-toolbelt

	# communications
	slack
	zoomus

	# browsers for testing
	google-chrome
	firefox
	opera
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
# If you'd prefer to install in your user folder, just remove the --appdir argument, and edit your .bash_profile
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Clean up caches, symlinks
brew cask cleanup
