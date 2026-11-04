cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm:   "49a985f01b81d7c4fe65b55599cdf05e88eca6c9d6c1eb34fe06fd87ebbc80f9",
         intel: "46655c7c0371af5b1189b7096f67f160656e61fc1a8df502ecb11fca0f2cc7af"

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
