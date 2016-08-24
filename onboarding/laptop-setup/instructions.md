# Laptop setup

Dotfiles, shell scripts, and setup instructions for basic Bivee tooling.

----

## To set up a new Mac:

1. Download these files and move to your user root folder (the folder with the same name as your computer login). You may need to [reveal hidden files in the finder](http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/).
2. Install [XCode](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#step-1), [Ruby RVM](https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#step-5) and [Node.js](https://nodejs.org/en/download/package-manager/#osx).
3. Set up system config files:
    1. global .gitignore: `git config --global core.excludesfile '~/.gitignore_global'`
    2. add `.bash_profile` to your user root folder
4. set up your [SSH keys](https://help.github.com/articles/generating-ssh-keys/)
6. If you'd like to automatically install the basics, download brew-install.sh & save to user root. Run `$ chmod +x brew-install.sh`, then `$ ./brew-install.sh` to install [Homebrew](http://brew.sh), the essential Homebrew packages, and also a few useful apps using [Homebrew Cask](http://caskroom.io) like web browsers, vagrant, etc. You can do all this manually too, if you prefer your own setup.

### Useful apps

#### Essentials
- [1Password](https://agilebits.com/onepassword)
- [Dropbox](http://dropbox.com)
- [Slack](https://slack.com/downloads)
- [Zoom](http://zoom.us)
- A code editor of your choice; our favorites are [Sublime Text](http://www.sublimetext.com) and [Github's Atom](https://atom.io). Or just use [VIM](https://en.wikipedia.org/wiki/Vim_(text_editor)) if you're crazy hardcore.
- A git client like [Github Desktop](https://desktop.github.com), [SourceTree](https://www.sourcetreeapp.com), or [Git Tower](https://www.git-tower.com). You can do anything you need in git with the command line, but you might find a GUI client more convenient for day-to-day commits and pushes.
- You'll likely be using [Terminal](https://en.wikipedia.org/wiki/Terminal_%28OS_X%29) quite frequently. By default it's installed in `~/Applications/Utilities`; add it to your dock so you don't have to dig for it all the time.

#### Design apps
- [Sketch](http://www.sketchapp.com)
- A graphics editor like [Affinity Photo](https://affinity.serif.com/en-us/photo/), [Affinity Designer](https://affinity.serif.com/en-us/designer/), or [Pixelmator](http://www.pixelmator.com/mac/)
- [Fontstand](https://fontstand.com)

#### Bonus apps we really like:
- [Alfred](https://www.alfredapp.com) - super-configurable app launcher and task runner. Spotlight on steroids.
- [IA Writer](https://ia.net/writer) - the best writing app ever
- [Pocket](https://getpocket.com) - super handy service for bookmarking
- [Pushbullet](https://www.pushbullet.com) - if you also have an Android/Windows/Linux machine, a great way to share stuff between devices

### Sublime text config:
If you use Sublime Text and would like to sync your configuration using a cloud service like Dropbox, you'll need to "link" your default preferences folder to the synced one. First make sure you've installed [package control](https://packagecontrol.io/installation#st3). By default, installed packages/preferences are in `~/Dropbox/Config/Sublime`. Point your Sublime text to the sync folder using [these instructions](https://sublime.wbond.net/docs/syncing#dropbox-osx), and package control will automatically install all the packages, prefs, etc. there.

### Useful browser extensions

#### Safari
- [1Password](https://agilebits.com/onepassword/extensions)

#### Chrome
- [1Password](https://agilebits.com/onepassword/extensions)
- [Ember Inspector](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
- [Emmet Re:View](https://chrome.google.com/webstore/detail/emmet-review/epejoicbhllgiimigokgjdoijnpaphdp)
- [Full Page Screen Capture](https://chrome.google.com/webstore/detail/full-page-screen-capture/fdpohaocaechififmbbbbbknoalclacl)
- [JSONView](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc)

### Further reading
- http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/#step-1
- http://sourabhbajaj.com/mac-setup/
- http://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-1-core-files-and-custom-shell
- https://github.com/thoughtbot/dotfiles
