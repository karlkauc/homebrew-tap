cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "658e30949d7d3a192a4bbafe80c33af8126465581c7b9365e025d4fcf95025eb",
         intel: "86aaaba3bf0e05fe6653b31e2ae232e8cc805514abf4767cf734824c03a542d4"

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
