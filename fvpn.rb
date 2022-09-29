# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0-beta.11"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.11/fvpn_darwin_arm64.tar.gz"
      sha256 "ca06a3991bfb3a0b481e9a7b9ccacd0173ccdd4016c73e1744bc6954d1c3f97d"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.11/fvpn_darwin_amd64.tar.gz"
      sha256 "69f6eb6096e5f75b859ec1c7e7462f8923fc63fbb819d35233b673fa97afeef2"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.11/fvpn_linux_arm64.tar.gz"
      sha256 "8d7f18ca5875a666f2b792797e12091e3a8eebd7331390ad15d0a1644d156db5"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.11/fvpn_linux_amd64.tar.gz"
      sha256 "2c050ee0120256d9357f7944534ab8e75bf4e8cb441e44c75adbf996cdcc6923"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
