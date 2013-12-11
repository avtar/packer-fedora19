About
=====

This repository contains a `Packer <http://www.packer.io/>`_ template and scripts that can be used to create a Fedora 19 64-bit Vagrant box. It is primarily meant to assist developers working on the `GPII Personalization Framework <https://github.com/GPII/linux>`_ so as a result the image will contain a GNOME desktop environment.

Requirements
============

You will need the following software:

* Packer 0.4.1
* Vagrant 1.4.0

Usage
=====

After cloning this repository you can start the build process using this command: ::

  $ packer build -only=virtualbox fedora19-x86_64.json

This process can take a while since it involves downloading a Fedora 19 DVD, an automated installation, and some provisioning procedures. A resulting ``fedora19-x86_64.box`` file will be created. You can add it using vagrant: ::

  $ vagrant box add 'fedora19-x86_64' 'fedora19-x86_64.box'

A new Vagrant project can then be started using this new box: ::

  $ vagrant init 'fedora19-x86_64'

Credits
=======

The `veewee-to-packer <https://github.com/mitchellh/veewee-to-packer>`_ tool was used to convert `this veewee template <https://github.com/jedi4ever/veewee/tree/master/templates/Fedora-19-x86_64>`_ and then modified. Following is the license information from the original project:

Copyright (c) 2010-2012 Patrick Debois

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
