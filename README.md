# Choas Muster

## How do I install these formulae?

You can install any formula from this tap using one of the following methods:

brew install choas/muster/<formula>

Or tap the repository first:

brew tap choas/muster  
brew install <formula>

Or include it in a Brewfile for use with brew bundle:

tap "choas/muster"  
brew "<formula>"

---

## Local Development: Step-by-Step Tap Setup

To test formulae locally without pushing to GitHub:

1. Create a local tap directory:
   mkdir -p ~/homebrew-choas/Formula  
   cd ~/homebrew-choas

2. Add your formula (e.g., muster.rb) to the Formula folder.

3. Initialize Git (optional but recommended):
   git init  
   git add Formula/muster.rb  
   git commit -m "Add muster formula"

4. Tap it locally:
   brew tap --custom-remote choas/local ~/homebrew-choas

5. Install your formula:
   brew install choas/local/muster

This setup is ideal for prototyping before publishing to GitHub.

---

## Documentation

Run brew help, man brew, or visit Homebrew's documentation: https://docs.brew.sh
