# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.23.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.23.0/iamlive-v0.23.0-darwin-amd64.zip"
    sha256 "3bf1894d62a4cef537ae2370cc0dca7912635d9f890598843e1597b9641e26b9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.23.0/iamlive-v0.23.0-darwin-arm64.zip"
    sha256 "bc124a344be3d38be238c9ccd26094547c9d324a981255f7f1f8033554f38017"
  end

  def install
    bin.install "iamlive"
  end
end
