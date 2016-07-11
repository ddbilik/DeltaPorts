--- error.h.orig	1998-09-05 04:33:37.000000000 +0200
+++ error.h
@@ -1,7 +1,11 @@
 #ifndef ERROR_H
 #define ERROR_H
 
+#ifdef __DragonFly__
+#include <errno.h>
+#else
 extern int errno;
+#endif
 
 extern int error_intr;
 extern int error_nomem;
