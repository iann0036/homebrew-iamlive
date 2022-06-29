# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.48.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.48.0/iamlive-v0.48.0-darwin-amd64.zip"
    sha256 "7a02c0ee2d5a5df889885c33e2ee9fd1987d75e4aa622b169c9f1ec72600ba1b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.48.0/iamlive-v0.48.0-darwin-arm64.zip"
    sha256 "4046398b0f5ce6305d7ae1ee5627ac2712d628e3b68ba3beb16390fb6ef493e7"
  end

  def install
    bin.install "iamlive"
  end
end
