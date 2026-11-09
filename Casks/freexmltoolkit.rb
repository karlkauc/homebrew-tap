cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "c9f82067f5f3f5ffdfdb08be9febb7a97bda9e2df49e6678d2b7352a9e1681b0",
         intel: "f820475e7baf6d25bc99bb90a07c3caab2d7ea63a01fedc5381554b483032680"

  url "https://github.com/karlkauc/FreeXmlToolkit/releases/download/v#{version}/FreeXmlToolkit-#{arch}-#{version}.dmg"
  name "FreeXmlToolkit"
  desc "Edit, validate and transform XML, XSD, XSLT, Schematron and JSON"
  homepage "https://github.com/karlkauc/FreeXmlToolkit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "FreeXmlToolkit.app"

  zap trash: [
    "~/.freeXmlToolkit",
    "~/Library/Saved Application State/org.fxt.freexmltoolkit.savedState",
  ]
end
