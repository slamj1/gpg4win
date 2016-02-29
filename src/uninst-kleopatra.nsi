# uninst-kleopatra.nsi - Installer snippet for kleopatra.    -*- coding: latin-1; -*-
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
!define prefix ${ipdir}/kleopatra-${gpg4win_pkg_kleopatra_version}


; Uninstaller section.
Section "-un.kleopatra"
!ifdef SOURCES
  Push "${gpg4win_pkg_kleopatra}"
  Call un.SourceDelete
!else
  Delete "$INSTDIR\bin\kleopatra.exe"
  Delete "$INSTDIR\kcm_kleopatra.dll"
 # Delete "$INSTDIR\bin\kwatchgnupg.exe"
  RMDir "$INSTDIR\bin"

  Delete "$INSTDIR\share\icons\hicolor\64x64\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\48x48\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\32x32\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\256x256\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\22x22\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\16x16\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\128x128\apps\kleopatra.png"
  Delete "$INSTDIR\share\icons\hicolor\icon-theme.cache"
  Delete "$INSTDIR\share\icons\hicolor\index.theme"
  RMDir "$INSTDIR\share\icons\hicolor\64x64\apps"
  RMDir "$INSTDIR\share\icons\hicolor\64x64"
  RMDir "$INSTDIR\share\icons\hicolor\48x48\apps"
  RMDir "$INSTDIR\share\icons\hicolor\48x48"
  RMDir "$INSTDIR\share\icons\hicolor\32x32\apps"
  RMDir "$INSTDIR\share\icons\hicolor\32x32"
  RMDir "$INSTDIR\share\icons\hicolor\256x256\apps"
  RMDir "$INSTDIR\share\icons\hicolor\256x256"
  RMDir "$INSTDIR\share\icons\hicolor\22x22\apps"
  RMDir "$INSTDIR\share\icons\hicolor\22x22"
  RMDir "$INSTDIR\share\icons\hicolor\16x16\apps"
  RMDir "$INSTDIR\share\icons\hicolor\16x16"
  RMDir "$INSTDIR\share\icons\hicolor\128x128\apps"
  RMDir "$INSTDIR\share\icons\hicolor\128x128"
  RMDir "$INSTDIR\share\icons\hicolor"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menuwindow.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menuview.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menutools.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menusettings.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menuhelp.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menucertificates.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\menu.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\introduction.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\index.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions-search.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions-newkey.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\functions-keybox-management.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\credits-and-license.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-dn-order.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-smime-validation.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-gnupg-system.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-crypto-operations.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\configuration-appearance.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\commandline-options.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\admin.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\admin-key-filters.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\admin-checksum-definitions.html"
#  Delete "$INSTDIR\share\doc\HTML\en\kleopatra\admin-archive-definitions.html"
#
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menuwindow.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menuview.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menutools.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menusettings.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menuhelp.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menucertificates.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\menu.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\introduction.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\index.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\functions.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\functions-search.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\functions-newkey.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\functions-keybox-management.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\credits-and-license.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\configuration.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\configuration-dn-order.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\configuration-smime-validation.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\configuration-gnupg-system.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\configuration-crypto-operations.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\configuration-appearance.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\commandline-options.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\admin.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\admin-key-filters.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\admin-checksum-definitions.html"
#  Delete "$INSTDIR\share\doc\HTML\de\kleopatra\admin-archive-definitions.html"
#
#  Delete "$INSTDIR\share\doc\HTML\common\xml.dcl"
#  Delete "$INSTDIR\share\doc\HTML\common\x11-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\top.jpg"
#  Delete "$INSTDIR\share\doc\HTML\common\top-right.png"
#  Delete "$INSTDIR\share\doc\HTML\common\top-right.jpg"
#  Delete "$INSTDIR\share\doc\HTML\common\top-middle.png"
#  Delete "$INSTDIR\share\doc\HTML\common\top-left.png"
#  Delete "$INSTDIR\share\doc\HTML\common\top-left.jpg"
#  Delete "$INSTDIR\share\doc\HTML\common\top-kde.jpg"
#  Delete "$INSTDIR\share\doc\HTML\common\tabs.css"
#  Delete "$INSTDIR\share\doc\HTML\common\qpl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\print.css"
#  Delete "$INSTDIR\share\doc\HTML\common\mainheader.html"
#  Delete "$INSTDIR\share\doc\HTML\common\mainfooter.html"
#  Delete "$INSTDIR\share\doc\HTML\common\lgpl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\lgpl-license"
#  Delete "$INSTDIR\share\doc\HTML\common\kde_logo_bg.png"
#  Delete "$INSTDIR\share\doc\HTML\common\kde_logo.png"
#  Delete "$INSTDIR\share\doc\HTML\common\kde.css"
#  Delete "$INSTDIR\share\doc\HTML\common\kde-localised.css.template"
#  Delete "$INSTDIR\share\doc\HTML\common\kde-docs.css"
#  Delete "$INSTDIR\share\doc\HTML\common\kde-default.css"
#  Delete "$INSTDIR\share\doc\HTML\common\header.html"
#  Delete "$INSTDIR\share\doc\HTML\common\gpl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\gpl-license"
#  Delete "$INSTDIR\share\doc\HTML\common\footer.html"
#  Delete "$INSTDIR\share\doc\HTML\common\flat.css"
#  Delete "$INSTDIR\share\doc\HTML\common\fdl-notice.html"
#  Delete "$INSTDIR\share\doc\HTML\common\fdl-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\fdl-license"
#  Delete "$INSTDIR\share\doc\HTML\common\favicon.ico"
#  Delete "$INSTDIR\share\doc\HTML\common\doxygen.css"
#  Delete "$INSTDIR\share\doc\HTML\common\bsd-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\bottom-right.png"
#  Delete "$INSTDIR\share\doc\HTML\common\bottom-middle.png"
#  Delete "$INSTDIR\share\doc\HTML\common\bottom-left.png"
#  Delete "$INSTDIR\share\doc\HTML\common\block_title_top.png"
#  Delete "$INSTDIR\share\doc\HTML\common\block_title_mid.png"
#  Delete "$INSTDIR\share\doc\HTML\common\block_title_bottom.png"
#  Delete "$INSTDIR\share\doc\HTML\common\artistic-license.html"
#  Delete "$INSTDIR\share\doc\HTML\common\9.png"
#  Delete "$INSTDIR\share\doc\HTML\common\8.png"
#  Delete "$INSTDIR\share\doc\HTML\common\7.png"
#  Delete "$INSTDIR\share\doc\HTML\common\6.png"
#  Delete "$INSTDIR\share\doc\HTML\common\5.png"
#  Delete "$INSTDIR\share\doc\HTML\common\4.png"
#  Delete "$INSTDIR\share\doc\HTML\common\3.png"
#  Delete "$INSTDIR\share\doc\HTML\common\2.png"
#  Delete "$INSTDIR\share\doc\HTML\common\10.png"
#  Delete "$INSTDIR\share\doc\HTML\common\1.png"
#  Delete "$INSTDIR\share\doc\HTML\common\fdl-translated.html"
#  Delete "$INSTDIR\share\doc\HTML\common\gpl-translated.html"
#  Delete "$INSTDIR\share\doc\HTML\common\lgpl-translated.html"
#  Delete "$INSTDIR\share\doc\HTML\common\kde-localised.css"

  Delete "$INSTDIR\share\kservices5\kleopatra_config_appear.desktop"
  Delete "$INSTDIR\share\kservices5\kleopatra_config_gnupgsystem.desktop"
  Delete "$INSTDIR\share\kservices5\kleopatra_config_cryptooperations.desktop"
  Delete "$INSTDIR\share\kservices5\kleopatra_config_smimevalidation.desktop"
  Delete "$INSTDIR\share\kservices5\kleopatra_config_dirserv.desktop"
  RmDir "$INSTDIR\share\kservices5\"

  Delete "$INSTDIR\share\kdeglobals"
  Delete "$INSTDIR\share\klanguageoverridesrc"
  Delete "$INSTDIR\share\QtProject\qtlogging.ini"
#  Delete "$INSTDIR\share\apps\kwatchgnupg\pics\kwatchgnupg2.png"
#  Delete "$INSTDIR\share\apps\kwatchgnupg\pics\kwatchgnupg.png"
#  Delete "$INSTDIR\share\apps\kwatchgnupg\kwatchgnupgui.rc"
  Delete "$INSTDIR\share\kleopatra\pics\kleopatra_wizard.svgz"
  Delete "$INSTDIR\share\kleopatra\pics\kleopatra_wizard.png"
  Delete "$INSTDIR\share\kleopatra\pics\kleopatra_splashscreen.svgz"
  Delete "$INSTDIR\share\kleopatra\pics\kleopatra_splashscreen.png"
  Delete "$INSTDIR\share\kleopatra\pics\gpg4win.png"
  Delete "$INSTDIR\share\kleopatra\pics\gpg4win-compact.png"
  Delete "$INSTDIR\share\kleopatra\kleopatra.rc"
  Delete "$INSTDIR\bin\libkleopatraclientgui.dll"
  Delete "$INSTDIR\bin\libkleopatraclientcore.dll"
  Delete "$INSTDIR\bin\libkleopatraclientgui.dll"

#  RMDir "$INSTDIR\share\doc\HTML\en\kleopatra"
#  RMDir "$INSTDIR\share\doc\HTML\en"
#  RMDir "$INSTDIR\share\doc\HTML\common"
#  RMDir "$INSTDIR\share\doc\HTML\de\kleopatra"
#  RMDir "$INSTDIR\share\doc\HTML\de"
#  RMDir "$INSTDIR\share\doc\HTML"
#  RMDir "$INSTDIR\share\doc"
  RMDir "$INSTDIR\share\QtProject"
  RMDir "$INSTDIR\share\kleopatra\pics"
  RMDir "$INSTDIR\share\kleopatra"
  RMDir "$INSTDIR\share"
  RMDir "$INSTDIR"

!endif
SectionEnd
