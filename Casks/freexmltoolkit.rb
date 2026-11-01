cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "e1ce9778ef877bf2313b13821d42a90ca7634c585b64af204c57f1522fc27f2a",
         intel: "ea5df203c23522eb5e4aff1f390cda9d4d3ac1cbe7f41283fdf59bf5eec26b44"

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
