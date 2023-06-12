# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsiAT171 < Formula
  desc "All-in-one CLI for Beliven Ops daily usage!"
  homepage ""
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/opsi/releases/download/1.7.1/opsi_1.7.1_darwin_arm64.tar.gz"
      sha256 "c1b923af2a1b4f959001a6ec52b936ccc4eea39fd09f26c557dacf6819302c7d"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.7.1/opsi_1.7.1_darwin_amd64.tar.gz"
      sha256 "cbe0a6aa3247eabe739632f4a93e45b874d7abdaa496dedd2ea6c2a8bebe60c0"

      def install
        bin.install "opsi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.7.1/opsi_1.7.1_linux_amd64.tar.gz"
      sha256 "9557c48c2f0e9bacacad0ae4aa2d83a3587bea546ab1cbe37a0f4ab6f1e0ae1e"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/opsi/releases/download/1.7.1/opsi_1.7.1_linux_arm64.tar.gz"
      sha256 "e5443db4765b65b9dd64bd9e52e9e5f084992c66107e8212869405ae32dd47dc"

      def install
        bin.install "opsi"
      end
    end
  end

  def caveats
    <<~EOS
      Run `opsi init` to generate config file inside
       `~/.config/opsi/config.yml` (works only if not exists yet).

       Type `opsi help` for further information.
    EOS
  end
end
