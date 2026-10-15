cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "04e06dc211a9528e3fbbe5cccde0662b9d50aadccd20e89b60e211229fad8d43",
         intel: "2a630f2d23741e6c3f20891d6d417a2ea03d09b5d8de4a50257badf9fa0c75e0"

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
