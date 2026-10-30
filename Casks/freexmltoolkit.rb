cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "a8e2aa79a288366c8ff2dba6e8c043dad7b1fc642260669c3014d7670d7bf237",
         intel: "b9ad050d13bb50fcc5eaa8faa6f2a425521214e22ae57cfb769a8f9b7a6fa61b"

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
