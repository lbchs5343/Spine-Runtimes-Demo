package com.bytedance.pangle.util.a;

import android.text.TextUtils;
import com.bytedance.pangle.util.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class a {
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] a(File file) {
        String str;
        String str2;
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                boolean z2 = false;
                boolean z3 = false;
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    if (nextElement.getName().startsWith("META-INF/")) {
                        if (nextElement.getName().endsWith("MANIFEST.MF")) {
                            z3 = true;
                        } else if (nextElement.getName().endsWith(".SF")) {
                            z = true;
                        } else if (nextElement.getName().endsWith(".RSA")) {
                            z2 = true;
                        }
                        arrayList.add(Long.valueOf(nextElement.getCrc()));
                    }
                }
                Collections.sort(arrayList, Collections.reverseOrder());
                StringBuilder sb = new StringBuilder();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sb.append((Long) it.next());
                }
                if (z3 && z && z2) {
                    str = f.a(sb.toString());
                    str2 = "";
                } else {
                    str2 = "without v1 signature.";
                    str = "";
                }
                c.a(zipFile2);
            } catch (Exception unused) {
                zipFile = zipFile2;
                c.a(zipFile);
                str = "";
                str2 = str;
                return new String[]{str, TextUtils.isEmpty(str) ? "" : "V1", str2};
            } catch (Throwable th) {
                th = th;
                zipFile = zipFile2;
                c.a(zipFile);
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        return new String[]{str, TextUtils.isEmpty(str) ? "" : "V1", str2};
    }
}
