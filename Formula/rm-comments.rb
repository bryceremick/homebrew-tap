class RmComments < Formula
  desc "Strip all comments from source files, safely, via tree-sitter"
  homepage "https://github.com/bryceremick/rm-comments"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.4.1/rm-comments-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "bbd4cd1a603349747e0ff9f8bd691de8d01b1a365c92611f9d841b1635fbd680"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.4.1/rm-comments-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "96eeb0fda9131af6972fce871c9a3b5f286caa2180f019e45fc115626acfe997"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.4.1/rm-comments-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ce77e0ba44628024b587c49f2b0390f59c468836224001060ca26a02b9554c9"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.4.1/rm-comments-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24ee7e2e143281fd9491f4d363fd1ccf2b4a08bccf227a791d7b29e0bb6fffb5"
    end
  end

  def install
    bin.install "rm-comments"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rm-comments --help")
  end
end
