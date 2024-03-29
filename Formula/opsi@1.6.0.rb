# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsiAT160 < Formula
  desc "All-in-one CLI for Beliven Ops daily usage!"
  homepage ""
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.6.0/opsi_1.6.0_darwin_amd64.tar.gz"
      sha256 "d26511b6d3bfc53c81826f027b22a3f4de50002f76e06a72a994aa2e2a837336"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/opsi/releases/download/1.6.0/opsi_1.6.0_darwin_arm64.tar.gz"
      sha256 "478430382aa211da953e5c7ed3d606695a2eb516f1fe96dfd645d04c164cca11"

      def install
        bin.install "opsi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/opsi/releases/download/1.6.0/opsi_1.6.0_linux_arm64.tar.gz"
      sha256 "b1b0c37184cc563fe0a137585c21c17ec0f7cb5af10bba7bb38f625d27d6e609"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.6.0/opsi_1.6.0_linux_amd64.tar.gz"
      sha256 "7b665085168443afa2c23fa0cd4228e31315efc38a7e1856c9e3fe92808a115a"

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
