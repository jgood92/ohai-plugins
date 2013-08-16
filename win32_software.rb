provides 'installed_software'

installed_software Mash.new

reg_type = Win32::Registry::KEY_READ | 0x100
Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall', reg_type ) do |reg|
  reg.each_key do |key|
    k = reg.open(key)
    installed_software[(k["DisplayName"] rescue "?")] = Mash.new
    installed_software[(k["DisplayName"] rescue "?")]['DisplayVersion'] = k["DisplayVersion"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['Version'] = k["Version"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['Publisher'] = k["Publisher"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['InstallDate'] = k["InstallDate"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['InstallLocation'] = k["InstallLocation"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['URLInfoAbout'] = k["URLInfoAbout"] rescue "?"
  end
end

Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall' ) do |reg|
  reg.each_key do |key|
    k = reg.open(key)
    installed_software[(k["DisplayName"] rescue "?")] = Mash.new
    installed_software[(k["DisplayName"] rescue "?")]['DisplayVersion'] = k["DisplayVersion"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['Version'] = k["Version"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['Publisher'] = k["Publisher"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['InstallDate'] = k["InstallDate"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['InstallLocation'] = k["InstallLocation"] rescue "?"
    installed_software[(k["DisplayName"] rescue "?")]['URLInfoAbout'] = k["URLInfoAbout"] rescue "?"
  end
end
