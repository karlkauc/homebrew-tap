cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "3c2e6273466f361312c8f8a7c9e47fa9b8d5c6a99ac3f3ad224e1d13b27f36be",
         intel: "bf9a3b903d4d8506becbf92b902f86a97831e0d259a4787c11f794ece1762787"

  url "https://github.com/karlkauc/FreeXmlToolkit/releases/download/v#{version}/FreeXmlToolkit-#{arch}-#{version}.dmg"
  name "FreeXmlToolkit"
  desc "Edit, validate and transform XML, XSD, XSLT, Schematron and JSON"
  homepage "https://github.com/karlkauc/FreeXmlToolkit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FreeXmlToolkit.app"

  zap trash: [
    "~/.freeXmlToolkit",
    "~/Library/Saved Application State/org.fxt.freexmltoolkit.savedState",
  ]
end
