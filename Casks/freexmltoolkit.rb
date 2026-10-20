cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "ff3bf270292d23bb5e4ab30c23a04495f7f58007aee48151cb72d1cf485f56e1",
         intel: "27220c1f54e9a205f18a8ddbde161b06890eec5ee4b286262c305b5775c256df"

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
