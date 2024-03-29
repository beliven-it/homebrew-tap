# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsiAT140 < Formula
  desc "All-in-one CLI for Beliven Ops daily usage!"
  homepage ""
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.4.0/opsi_1.4.0_darwin_amd64.tar.gz"
      sha256 "a5056d40bd37cd58aac17fe905070641d94314fda87907c0adaa9e6d46454632"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/opsi/releases/download/1.4.0/opsi_1.4.0_darwin_arm64.tar.gz"
      sha256 "13458da4765e06593529f232c4d3f6f3f4f058b38bd457f28e1eb518947a76c4"

      def install
        bin.install "opsi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.4.0/opsi_1.4.0_linux_amd64.tar.gz"
      sha256 "9b0aeac522dee604fcd66f372576de0a3c79719a600e7d9e8e738de6b1404fac"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/opsi/releases/download/1.4.0/opsi_1.4.0_linux_arm64.tar.gz"
      sha256 "52da9017305158fecd025075a7d60cfad95f1946785b1301e51948d6eac1a0da"

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
