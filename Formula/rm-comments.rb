class RmComments < Formula
  desc "Strip all comments from source files, safely, via tree-sitter"
  homepage "https://github.com/bryceremick/rm-comments"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.5.0/rm-comments-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "1bc8a1f94807144b4c8fcd12b4c6713d20ca48f76bbfe245441e7b7fa67bc64b"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.5.0/rm-comments-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "226ac43b2dad520476ea00f72d80e9ce48e35cd98a512b864fba06596738522b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.5.0/rm-comments-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6ce3c3c04450139dac17478b64eaf7cb5c6f24cecb89587e7d2586b242205d6"
    end
    on_intel do
      url "https://github.com/bryceremick/rm-comments/releases/download/v0.5.0/rm-comments-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68059474743589d68a30c600ba7c7664898e8c274ccd431b6261b65b2d595dc5"
    end
  end

  def install
    bin.install "rm-comments"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/rm-comments --help")
  end
end
