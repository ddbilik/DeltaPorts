--- compat.mk.orig	2015-06-06 13:45:32.000000000 +0300
+++ compat.mk
@@ -16,6 +16,15 @@ CFLAGS+=	-DHAVE_STRLCPY -DHAVE_STRLCAT
 CFLAGS+=	-DHAVE_STRTONUM -DHAVE_OPEN_MEMSTREAM
 .PATH:		${.CURDIR}/../replace
 SRCS+=		reallocarray.c
+.elif ${HOSTTYPE} == "DragonFly"
+#
+# DragonFly
+#
+CFLAGS+=	-DBSD_COMPAT -DTAILQ_FOREACH_SAFE=TAILQ_FOREACH_MUTABLE
+CFLAGS+=	-DHAVE_STRLCPY -DHAVE_STRLCAT
+CFLAGS+=	-DHAVE_STRTONUM -DHAVE_OPEN_MEMSTREAM
+.PATH:		${.CURDIR}/../replace
+SRCS+=		reallocarray.c
 .elif ${HOSTTYPE} == "NetBSD"
 #
 # NetBSD
