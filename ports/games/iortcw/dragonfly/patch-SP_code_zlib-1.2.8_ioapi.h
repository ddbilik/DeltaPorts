--- SP/code/zlib-1.2.8/ioapi.h.orig	2016-11-19 09:33:57 UTC
+++ SP/code/zlib-1.2.8/ioapi.h
@@ -55,7 +55,7 @@
 #define ftello64 ftell
 #define fseeko64 fseek
 #else
-#if defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__NetBSD__)
+#if defined(__FreeBSD__) || defined(__OpenBSD__) || defined(__NetBSD__) || defined(__DragonFly__)
 #define fopen64 fopen
 #define ftello64 ftello
 #define fseeko64 fseeko
