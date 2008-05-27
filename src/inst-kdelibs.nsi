# inst-kdelibs.nsi - Installer snippet for kdelibs.      -*- coding: latin-1; -*-
# Copyright (C) 2005, 2007, 2008 g10 Code GmbH
# 
# This file is part of GPG4Win.
# 
# GPG4Win is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# GPG4Win is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA


!ifdef prefix
!undef prefix
!endif
!define prefix ${ipdir}/kdelibs-${gpg4win_pkg_kdelibs_version}

!ifdef DEBUG
Section "kdelibs" SEC_kdelibs
!else
Section "-kdelibs" SEC_kdelibs
!endif
  SetOutPath "$INSTDIR"
!ifdef SOURCES
  File "${gpg4win_pkg_kdelibs_src}"
!else

  # Relocate this when dbus-daemon is relocated.
  SetOutPath "$INSTDIR\bin"
  File ${prefix}/bin/kcmdwrapper.exe
  SetOutPath "$INSTDIR"

  File ${prefix}/bin/kbuildsycoca4.exe
  File ${prefix}/bin/libgpgme++-glib.dll
  File ${prefix}/bin/libgpgme++-qt.dll
  File ${prefix}/bin/libgpgme++.dll
  File ${prefix}/bin/libkdecore.dll
  File ${prefix}/bin/libkdeui.dll
  File ${prefix}/bin/libkmime.dll
  File ${prefix}/bin/libqgpgme.dll
  File ${prefix}/lib/libkcmutils.dll
  File ${prefix}/lib/kde4/kded_globalaccel.dll

  SetOutPath "$INSTDIR\share\apps\kcharselect"

  File ${prefix}/share/apps/kcharselect/kcharselect-data

  SetOutPath "$INSTDIR\share\apps\kdeui\about"

  File ${prefix}/share/apps/kdeui/about/bar-bottom-left.png
  File ${prefix}/share/apps/kdeui/about/bar-bottom-middle.png
  File ${prefix}/share/apps/kdeui/about/bar-bottom-right.png
  File ${prefix}/share/apps/kdeui/about/bar-middle-left.png
  File ${prefix}/share/apps/kdeui/about/bar-middle-right.png
  File ${prefix}/share/apps/kdeui/about/bar-top-left.png
  File ${prefix}/share/apps/kdeui/about/bar-top-middle.png
  File ${prefix}/share/apps/kdeui/about/bar-top-right.png
  File ${prefix}/share/apps/kdeui/about/bottom-left.png
  File ${prefix}/share/apps/kdeui/about/bottom-middle.png
  File ${prefix}/share/apps/kdeui/about/bottom-right.png
  File ${prefix}/share/apps/kdeui/about/box-bottom-left.png
  File ${prefix}/share/apps/kdeui/about/box-bottom-middle.png
  File ${prefix}/share/apps/kdeui/about/box-bottom-right.png
  File ${prefix}/share/apps/kdeui/about/box-middle-left.png
  File ${prefix}/share/apps/kdeui/about/box-middle-right.png
  File ${prefix}/share/apps/kdeui/about/box-top-left.png
  File ${prefix}/share/apps/kdeui/about/box-top-middle.png
  File ${prefix}/share/apps/kdeui/about/box-top-right.png
  File ${prefix}/share/apps/kdeui/about/kde_infopage.css
  File ${prefix}/share/apps/kdeui/about/kde_infopage_rtl.css
  File ${prefix}/share/apps/kdeui/about/top-middle.png
  File ${prefix}/share/apps/kdeui/about/top-right.png

  SetOutPath "$INSTDIR\share\apps\kdeui\pics"

  File ${prefix}/share/apps/kdeui/pics/aboutkde.png
  File ${prefix}/share/apps/kdeui/pics/kdeprint_nup1.png
  File ${prefix}/share/apps/kdeui/pics/kdeprint_nup2.png
  File ${prefix}/share/apps/kdeui/pics/kdeprint_nup4.png
  File ${prefix}/share/apps/kdeui/pics/kdeprint_nupother.png
  File ${prefix}/share/apps/kdeui/pics/ktip-bulb.png

  SetOutPath "$INSTDIR\share\config\colors"

  File ${prefix}/share/config/colors/40.colors
  File ${prefix}/share/config/colors/Oxygen.colors
  File ${prefix}/share/config/colors/Rainbow.colors
  File ${prefix}/share/config/colors/Royal.colors
  File ${prefix}/share/config/colors/Web.colors

  SetOutPath "$INSTDIR\share\config"

  File ${prefix}/share/config/kdebug.areas
  File ${prefix}/share/config/kdebugrc

  SetOutPath "$INSTDIR\share\config\ui"

  File ${prefix}/share/config/ui/ui_standards.rc

  SetOutPath "$INSTDIR\share\kde4\services\kded"

  File ${prefix}/share/kde4/services/kded/kdedglobalaccel.desktop

  SetOutPath "$INSTDIR\share\kde4\servicetypes"

  File ${prefix}/share/kde4/servicetypes/kconfigbackend.desktop
  File ${prefix}/share/kde4/servicetypes/kplugininfo.desktop
  File ${prefix}/share/kde4/servicetypes/sonnetspeller.desktop

  SetOutPath "$INSTDIR\share\locale"

  File ${prefix}/share/locale/all_languages

!endif
SectionEnd