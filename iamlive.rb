# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.24.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.24.0/iamlive-v0.24.0-darwin-amd64.zip"
    sha256 "5264630c96f840783480bf22bab1f81cbb72ca235ad499cb76b3b0c9bdbbd0ac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.24.0/iamlive-v0.24.0-darwin-arm64.zip"
    sha256 "2a3cb93b265e87832242233ae471b9a5edadfce89f2f7d73034fdad94834028d"
  end

  def install
    bin.install "iamlive"
  end
end
