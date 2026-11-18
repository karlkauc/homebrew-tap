cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "3f5ea29716d2b8cdec033a58d7687147c70ab36bf35b214c11cef211a8b1d99a",
         intel: "5c7e5f15ba37a0854a61a32717f57b46adfa37280302546692fe1b72d2ccc872"

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
