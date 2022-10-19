PROVIDES = "virtual/libgles1 virtual/libgles2 virtual/egl"
RPROVIDES_${PN} += "libGLESv2.so libEGL.so libGLESv1_CM.so libMali.so"
DEPENDS += "patchelf-native libdrm wayland"

# Add wayland
RPROVIDES_${PN} += "libwayland-egl.so"
