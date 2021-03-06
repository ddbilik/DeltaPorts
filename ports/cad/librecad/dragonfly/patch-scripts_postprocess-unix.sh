--- scripts/postprocess-unix.sh.orig	2016-09-23 05:34:43 UTC
+++ scripts/postprocess-unix.sh
@@ -20,23 +20,6 @@ cp "${SPTDIR}"/fonts/*.lff* "${RESOURCED
 find "${SPTDIR}"/library -type d | sed 's:^.*support/::' | xargs -IFILES  mkdir -p "${RESOURCEDIR}"/FILES
 find "${SPTDIR}"/library -type f -iname *.dxf | sed 's/^.*support//' | xargs -IFILES  cp "${SPTDIR}"/FILES "${RESOURCEDIR}"/FILES
 
-# Generate translations
-${LRELEASE} "${LCDIR}"/src/src.pro
-${LRELEASE} "${PIDIR}"/plugins.pro
-mkdir -p "${RESOURCEDIR}"/qm
-
-# Go into translations directory
-cd "${TSDIRLC}"
-for tf in *.qm
-do
-        cp "${tf}" "${RESOURCEDIR}/qm/${tf}"
-done
-
-cd "${TSDIRPI}"
-for tf in *.qm
-do
-        cp "${tf}" "${RESOURCEDIR}/qm/${tf}"
-done
 
 # copy appdata.xml to unix/appdata/librecad.appdata.xml
 mkdir -p "${APPDATADIR}"
