cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "b64009c10455b943a47ebd16948624d038a1783db3d0b962d59bff8b39ceab68",
         intel: "6e047f999e89ff209d5bf9c63afaec49f583f01216c8c5d7df527ed812a4cec4"

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
