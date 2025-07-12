# typed: false
# frozen_string_literal: true

class Iamlive < Formula
  desc "Generate an IAM policy from AWS, Azure, or Google Cloud (GCP) calls using client-side monitoring (CSM) or embedded proxy."
  homepage "https://github.com/iann0036/iamlive"
  version "1.1.26"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.26/iamlive-v1.1.26-darwin-amd64.zip"
    sha256 "694274fa41a39a798990eb0ddba2443b693c5b51eb1b9145767fc665a09e2008"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.26/iamlive-v1.1.26-darwin-arm64.zip"
    sha256 "9af848293310c75487a9128c6574b5ac0b7d57e7f798e9843a35409603fdb270"
  end
  if OS.linux? && Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.26/iamlive-v1.1.26-linux-386.tar.gz"
    sha256 "d6310b809f6dcc539b1f4a962a5ab5f6cec1c94724af5075fae1931a1701ae29"
  end
  if OS.linux? && Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.26/iamlive-v1.1.26-linux-amd64.tar.gz"
    sha256 "4edf412742b62768232ef964482113aba49db3a2436d64b835abadddbacbf50b"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/iann0036/iamlive/releases/download/v1.1.26/iamlive-v1.1.26-linux-arm64.tar.gz"
    sha256 "5cd3b425cdecf8bb230b4a3feae551366ab8096682e314886b55738a74f916f7"
  end

  def install
    bin.install "iamlive"
  end
end
