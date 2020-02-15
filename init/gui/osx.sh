echo "Installing GUI applications..."
brew install caskroom/cask/brew-cask
brew cask install visual-studio-code
brew cask install slack
brew cask install alfred
brew cask install iterm2
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install discord
brew cask install adobe-reader
brew cask install line

echo "Installing Powerline..."
brew tap sanemat/font
brew install ricty --with-powerline
cp -f /usr/local/Cellar/ricty/4.1.0_2/share/fonts/*.ttf ~/Library/Fonts/
fc-cache -vf
