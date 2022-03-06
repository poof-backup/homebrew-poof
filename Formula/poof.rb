class poof < Formula
  include Language::Python::Virtualenv


  desc "2-way secure data sync/backup/restore against cloud storage."
  homepage "https://pypi.org/project/poof"
  url "https://files.pythonhosted.org/packages/9c/04/e46d7230fa00dc1f18fb696047c3ed01ab04cb492e6990ea20183697facc/poof-1.3.1-py3-none-any.whl"
  sha256 "087ac84ad79d51ae9578a9a3293cd2a4e411c36951c16c9ab00f9febb5b4abab"
  license "BSD-3"
  head "https://github.com/poof-backup/poof", branch: "master"


  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/dd/cf/706c1ad49ab26abed0b77a2f867984c1341ed7387b8030a6aa914e2942a0/click-8.0.4.tar.gz"
    sha256 "8458d7b1287c5fb128c90e23381cf99dcde74beaf6c7ff6384ce84d6fe090adb"
  end

  resource "poof" do
    url "https://files.pythonhosted.org/packages/9c/04/e46d7230fa00dc1f18fb696047c3ed01ab04cb492e6990ea20183697facc/poof-1.3.1-py3-none-any.whl"
    sha256 "087ac84ad79d51ae9578a9a3293cd2a4e411c36951c16c9ab00f9febb5b4abab"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/47/b6/ea8a7728f096a597f0032564e8013b705aa992a0990becd773dcc4d7b4a7/psutil-5.9.0.tar.gz"
    sha256 "869842dbd66bb80c3217158e629d6fceaecc3a3166d3d1faee515b05dd26ca25"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end


  def install
    virtualenv_install_with_resources
  end
end

