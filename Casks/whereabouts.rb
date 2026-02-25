# Homebrew cask for Whereabouts
#
# Host this file in a personal tap repo: github.com/USERNAME/homebrew-whereabouts
#   Casks/whereabouts.rb
#
# Install:
#   brew install --cask USERNAME/whereabouts/whereabouts
#
# To update after a new release:
#   1. Replace `version` with the new version string.
#   2. Replace `sha256` with the SHA256 printed in the GitHub Actions release summary.

cask "whereabouts" do
  version "1.1.0"
  sha256 "733b577b1f69aa618679fba59fcf213e765276cead4ec2f4096a4cfb2c331999"

  url "https://github.com/zekevh/Whereabouts/releases/download/v#{version}/Whereabouts-#{version}.dmg"

  name "Whereabouts"
  desc "macOS menu bar app showing your public IP location and VPN status"
  homepage "https://zvh.io"

  app "Whereabouts.app"

  caveats <<~EOS
    Whereabouts is not notarized. On first launch, right-click the app and select "Open",
    then confirm in the dialog that appears.

    Alternatively, remove the quarantine attribute:
      sudo xattr -d com.apple.quarantine /Applications/Whereabouts.app
  EOS
end
