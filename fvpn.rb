# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fvpn < Formula
  desc "Forest VPN CLI client for macOS, Linux, and Windows"
  homepage "https://github.com/forestvpn/cli"
  version "0.2.0-beta.24"

  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.24/fvpn_darwin_arm64.tar.gz"
      sha256 "8b69df788edca3484ba7ec2d5a86953ad735b0ba435de9f8465c15aa483e141b"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.24/fvpn_darwin_amd64.tar.gz"
      sha256 "7dab6bfaeeddb059f2b8954a59cb83df4a92ee8ee47694169baaf340d85aaa7a"

      def install
        bin.install "fvpn"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.24/fvpn_linux_arm64.tar.gz"
      sha256 "160184cb7bc012cdd7b94f7740ea9bb71bcec923920dbbc1fe40f4c9f360312e"

      def install
        bin.install "fvpn"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/forestvpn/cli/releases/download/v0.2.0-beta.24/fvpn_linux_amd64.tar.gz"
      sha256 "26aad6a578899a62e919480cfdd79ef51bb950a6e9a33a4865a516dd775ed4fd"

      def install
        bin.install "fvpn"
      end
    end
  end

  test do
    system "#{bin}/fvpn version"
  end
end
