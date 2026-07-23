class RmComments < Formula
  desc "Strip all comments from source files, safely, via tree-sitter"
  homepage "https://github.com/bryceremick/rm-comments"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.2.0/rm-comments-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "839d9b4c1eb442d0f407e857c247ad2af7338f8b6137c844d95f92c27271e019"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.2.0/rm-comments-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "186e4e33cd0a2a0b4d6ca7cc13b8d5887c9094b7e93be3a4c914866959328865"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.2.0/rm-comments-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f60af00918c5949ca4814511016eb069abf3d46637ce0e15a85717fb84f032ad"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.2.0/rm-comments-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79ec55858ed0901584931b3db60da7ae24216e81530c2e02f804169cf4f4835d"
    end
  end

  def install
    bin.install "rm-comments"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rm-comments --help")
  end
end
