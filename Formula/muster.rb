# typed: false
# frozen_string_literal: true

class Muster < Formula
  desc "CLI tool for managing and discovering external services and tools"
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
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/giantswarm/muster/releases/download/v0.0.52/muster_linux_arm64.tar.gz"
      sha256 "eda6507eae451e2f6e60892b30642087f423ddec9e92ca22946523c3f679a5e6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/giantswarm/muster/releases/download/v0.0.52/muster_linux_amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "muster"
  end

  test do
    system "#{bin}/muster", "--version"
  end
end
