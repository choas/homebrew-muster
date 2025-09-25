# typed: false
# frozen_string_literal: true

class Muster < Formula
  desc "A CLI tool for managing and discovering external services and tools."
  homepage "https://github.com/giantswarm/muster"
  version "0.0.52"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/giantswarm/muster/releases/download/v0.0.52/muster_darwin_arm64.zip"
      sha256 "cbd774aee78b619023f8fac5fed06f2629a03651be7bf8bd87e86c2b4b994b89"
    end
    if Hardware::CPU.intel?
      url "https://github.com/giantswarm/muster/releases/download/v0.0.52/muster_darwin_amd64.zip"
      sha256 "..."
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/giantswarm/muster/releases/download/v0.0.52/muster_linux_arm64.tar.gz"
      sha256 "..."
    end
    if Hardware::CPU.intel?
      url "https://github.com/giantswarm/muster/releases/download/v0.0.52/muster_linux_amd64.tar.gz"
      sha256 "..."
    end
  end

  def install
    bin.install "muster"
  end

  test do
    system "#{bin}/muster --version"
  end
end