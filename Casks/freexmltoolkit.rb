cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256 arm:   "43307463673d00b8d66d5f361d9af034f2d8d58ec6ed9cd437fb77acbe0bb076",
         intel: "c6848459ed3843bc5f16ac15380a23be4cb5cb5d4f6c9b5f12fbd000311b959a"

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
