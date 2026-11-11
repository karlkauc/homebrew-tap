cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "f88a56bc0d94ee7e6e081b0e095265e12342cddfedcabaf6366ad6159f8019c3",
         intel: "15606af541f1e613bbb1874f94edf38ffa54a5ef7f387e210aa4ac83e8725c91"

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
