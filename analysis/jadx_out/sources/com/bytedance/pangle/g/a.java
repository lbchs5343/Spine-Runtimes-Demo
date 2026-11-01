package com.bytedance.pangle.g;

import android.content.pm.Signature;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicReference<byte[]> f1420a = new AtomicReference<>();

    public static o a(String str) {
        Throwable th;
        JarFile jarFile;
        JarFile jarFile2 = null;
        try {
            try {
                jarFile = new JarFile(str);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        } catch (RuntimeException e3) {
            e = e3;
        } catch (GeneralSecurityException e4) {
            e = e4;
        }
        try {
            ArrayList arrayList = new ArrayList();
            JarEntry jarEntry = jarFile.getJarEntry("AndroidManifest.xml");
            if (jarEntry == null) {
                throw new q(1, "Package " + str + " has no manifest");
            }
            Certificate[][] a2 = a(jarFile, jarEntry);
            if (com.bytedance.pangle.util.d.a(a2)) {
                throw new q(4, "Package " + str + " has no certificates at entry AndroidManifest.xml");
            }
            Signature[] a3 = d.a(a2);
            Enumeration<JarEntry> entries = jarFile.entries();
            while (entries.hasMoreElements()) {
                JarEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory()) {
                    String name = nextElement.getName();
                    if (!name.startsWith("META-INF/") && !name.equals("AndroidManifest.xml")) {
                        arrayList.add(nextElement);
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                JarEntry jarEntry2 = (JarEntry) it.next();
                Certificate[][] a4 = a(jarFile, jarEntry2);
                if (com.bytedance.pangle.util.d.a(a4)) {
                    throw new q(4, "Package " + str + " has no certificates at entry " + jarEntry2.getName());
                }
                if (!o.a(a3, d.a(a4))) {
                    throw new q(3, "Package " + str + " has mismatched certificates at entry " + jarEntry2.getName());
                }
            }
            o oVar = new o(a3, 1, null, null, null);
            try {
                jarFile.close();
            } catch (Exception unused) {
            }
            return oVar;
        } catch (IOException e5) {
            e = e5;
            throw new q(4, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
        } catch (RuntimeException e6) {
            e = e6;
            throw new q(4, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
        } catch (GeneralSecurityException e7) {
            e = e7;
            throw new q(2, "Failed to collect certificates from ".concat(String.valueOf(str)), e);
        } catch (Throwable th3) {
            th = th3;
            jarFile2 = jarFile;
            if (jarFile2 == null) {
                throw th;
            }
            try {
                jarFile2.close();
                throw th;
            } catch (Exception unused2) {
                throw th;
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0015: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:31:0x0015 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Certificate[][] a(JarFile jarFile, JarEntry jarEntry) {
        Throwable e2;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            try {
                InputStream inputStream3 = jarFile.getInputStream(jarEntry);
                try {
                    byte[] andSet = f1420a.getAndSet(null);
                    if (andSet == null) {
                        andSet = new byte[4096];
                    }
                    while (inputStream3.read(andSet, 0, andSet.length) != -1) {
                    }
                    f1420a.set(andSet);
                    Certificate[][] certificateArr = {jarEntry.getCertificates()};
                    try {
                        inputStream3.close();
                    } catch (RuntimeException e3) {
                        throw e3;
                    } catch (Exception unused) {
                    }
                    return certificateArr;
                } catch (IOException e4) {
                    e2 = e4;
                    throw new q(5, "Failed reading " + jarEntry.getName() + " in " + jarFile, e2);
                } catch (RuntimeException e5) {
                    e2 = e5;
                    throw new q(5, "Failed reading " + jarEntry.getName() + " in " + jarFile, e2);
                }
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (RuntimeException e6) {
                        throw e6;
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException e7) {
            e = e7;
            e2 = e;
            throw new q(5, "Failed reading " + jarEntry.getName() + " in " + jarFile, e2);
        } catch (RuntimeException e8) {
            e = e8;
            e2 = e;
            throw new q(5, "Failed reading " + jarEntry.getName() + " in " + jarFile, e2);
        } catch (Throwable th2) {
            th = th2;
            if (inputStream2 != null) {
            }
            throw th;
        }
    }
}
