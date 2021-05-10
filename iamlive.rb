# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.34.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.34.0/iamlive-v0.34.0-darwin-amd64.zip"
    sha256 "985459aeb32f9d8e253c625d5953bcc959c5f35299838107fbc6edde185a7aed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.34.0/iamlive-v0.34.0-darwin-arm64.zip"
    sha256 "29c450c3b009826e447dcbf64aaf488f66c27f65b16f26051c39cd79460e0178"
  end

  def install
    bin.install "iamlive"
  end
end
