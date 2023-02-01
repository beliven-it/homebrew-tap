# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsiAT130 < Formula
  desc "All-in-one CLI for Beliven Ops daily usage!"
  homepage ""
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/opsi/releases/download/1.3.0/opsi_1.3.0_darwin_arm64.tar.gz"
      sha256 "44b4e8101979e73944a37a30a6029de5df1e6b8d1dcdc2603047888f5a3b7268"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.3.0/opsi_1.3.0_darwin_amd64.tar.gz"
      sha256 "8cdfe63305bb31a983f8a3731f65e3d124cdb6e93c2e17e86a62e3c224b9456c"

      def install
        bin.install "opsi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.3.0/opsi_1.3.0_linux_amd64.tar.gz"
      sha256 "44daad922a094ae818442a4941b82b77eec8005c11319fd2da95b2eea4af1d2f"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/opsi/releases/download/1.3.0/opsi_1.3.0_linux_arm64.tar.gz"
      sha256 "da35887a35641dc6d2bee9139a9051af2cd1a1c2bed966ee86fe96b08f64e1e3"

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
