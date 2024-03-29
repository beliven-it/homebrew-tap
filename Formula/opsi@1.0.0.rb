# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpsiAT100 < Formula
  desc "All-in-one CLI for Beliven Ops daily usage!"
  homepage ""
  version "1.0.0"
  license "MIT"

  depends_on "fzf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/beliven-it/opsi/releases/download/1.0.0/opsi_1.0.0_darwin_arm64.tar.gz"
      sha256 "db5a23e479ac79468d57d98adc51c5304df39f071a3e168f1175cac110247d07"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.0.0/opsi_1.0.0_darwin_amd64.tar.gz"
      sha256 "0a7bc2e00adae30a8498668a8376a5adb169160f045cd5738c6b293689ccfc31"

      def install
        bin.install "opsi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/beliven-it/opsi/releases/download/1.0.0/opsi_1.0.0_linux_arm64.tar.gz"
      sha256 "e788402bc67fbbf72faa49a4189d95a4dd28da67d09a524419547c9fc026ab55"

      def install
        bin.install "opsi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/beliven-it/opsi/releases/download/1.0.0/opsi_1.0.0_linux_amd64.tar.gz"
      sha256 "81cbeae568b8d8873f86f2fa3ab5f86a6fd4a41576ea62eac2e2456fd7bc1d1c"

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
