# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.42.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.42.0/iamlive-v0.42.0-darwin-amd64.zip"
    sha256 "98ace56feecff8a0260b385af2a070569b56004ee049329912c23c20b480d668"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.42.0/iamlive-v0.42.0-darwin-arm64.zip"
    sha256 "07c2416addc8fb0f01e04e2748b9bda7852f7336ecf6075f808dae2b52476f09"
  end

  def install
    bin.install "iamlive"
  end
end
