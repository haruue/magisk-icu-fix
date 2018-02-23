AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

print_modname() {
  ui_print "*******************************"
  ui_print " ICU zh-hans Digital Unit Fix  "
  ui_print "        for Android 8.1+       "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

REPLACE="
/system/usr/icu
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
  set_perm            $MODPATH/system/usr/icu   0   0   0755    u:object_r:system_file:s0
  set_perm            $MODPATH/system/usr/icu/icudt58l.dat  0   0   0644    u:object_r:system_file:s0
}

