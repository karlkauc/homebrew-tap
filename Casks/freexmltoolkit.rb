cask "freexmltoolkit" do
  arch arm: "arm64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "7646b95580f776e83b5b2c137600810b7738975317bf955b1582afe1a272112f",
         intel: "ca46dcaa78e213c00913ea026a931aef3feba8945b50eb73fa259aff3ca7f214"

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
