--- src/libamdhsacode/amd_elf_image.cpp.orig	2018-11-19 03:01:00 UTC
+++ src/libamdhsacode/amd_elf_image.cpp
@@ -86,7 +86,7 @@
 #define _write write
 #define _lseek lseek
 #define _ftruncate ftruncate
-#ifdef __FreeBSD__
+#if defined(__FreeBSD__) || defined(__DragonFly__)
 #include <sys/types.h>
 #include <sys/socket.h>
 #include <sys/uio.h>
@@ -225,7 +225,7 @@ namespace amd {
       if (_lseek(d, 0L, SEEK_SET) < 0) { return perror("lseek(3) failed"); }
       ssize_t written;
       do {
-#ifdef __FreeBSD__
+#if defined(__FreeBSD__) || defined(__DragonFly__)
         int err = sendfile(in, d, size, 0, NULL, &written, SF_SYNC);
 #else
         written = sendfile(d, in, NULL, size);
