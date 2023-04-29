# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.52.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.52.0/iamlive-v0.52.0-darwin-amd64.zip"
    sha256 "0c30dd0963d2d0a8f1bd7a71e629db945dcbadbca7ba6bceb525d92ac6b3c8b4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.52.0/iamlive-v0.52.0-darwin-arm64.zip"
    sha256 "dc09094487e24b77974397b78292d982084f6bd2b0c67fab9b405932b1ba2573"
  end

  def install
    bin.install "iamlive"
  end
end
