# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "0.50.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v0.50.0/iamlive-v0.50.0-darwin-amd64.zip"
    sha256 "ed17ca2009c9f8a61991e6ae9d720863d718027754670b57cb364f9d70aeca35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v0.50.0/iamlive-v0.50.0-darwin-arm64.zip"
    sha256 "c50abde2d7cd3c9da31aa3f8971f031807de29094168e594b6af41e5107ba57f"
  end

  def install
    bin.install "iamlive"
  end
end
