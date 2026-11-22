cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "9967c3c34562c0dbabd6d6db1ac439c5db3f11b854478603dcc4c94aeffbd12e",
         intel: "8e58fb031d75e1e9139fc5f4a43e9090433a1489f1fa4e6d600b2a06c58ea6e6"

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
