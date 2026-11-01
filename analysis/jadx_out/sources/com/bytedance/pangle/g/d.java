package com.bytedance.pangle.g;

import android.content.pm.Signature;
import android.os.Build;
import com.bytedance.pangle.g.c;
import java.io.RandomAccessFile;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.security.cert.Certificate;

/* loaded from: classes.dex */
public final class d {
    public static o a(String str) {
        int[] iArr;
        RandomAccessFile randomAccessFile = null;
        Signature[] signatureArr = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "r");
                try {
                    try {
                        f.a(str, randomAccessFile2, -262969152, 1896449818);
                        try {
                            try {
                                m mVar = f.f1430a.get(str).get(-262969152);
                                if (mVar == null) {
                                    throw new n("findVerifiedSigner, No APK Signature Scheme v3 signature in package");
                                }
                                c.C0098c a2 = c.a(randomAccessFile2, mVar);
                                Signature[] a3 = a(new Certificate[][]{a2.f1427a});
                                c.b bVar = a2.f1428b;
                                if (bVar != null) {
                                    int size = bVar.f1425a.size();
                                    Signature[] signatureArr2 = new Signature[size];
                                    iArr = new int[a2.f1428b.f1426b.size()];
                                    for (int i = 0; i < size; i++) {
                                        signatureArr2[i] = new Signature(a2.f1428b.f1425a.get(i).getEncoded());
                                        iArr[i] = a2.f1428b.f1426b.get(i).intValue();
                                    }
                                    signatureArr = signatureArr2;
                                } else {
                                    iArr = null;
                                }
                                o oVar = new o(a3, 3, signatureArr, iArr);
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused) {
                                }
                                return oVar;
                            } catch (n unused2) {
                                o a4 = a.a(str);
                                try {
                                    randomAccessFile2.close();
                                } catch (Exception unused3) {
                                }
                                return a4;
                            } catch (Exception e2) {
                                throw new q(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v2", e2);
                            }
                        } catch (n unused4) {
                            m mVar2 = f.f1430a.get(str).get(1896449818);
                            if (mVar2 == null) {
                                throw new n("findVerifiedSigner, No APK Signature Scheme v2 signature in package");
                            }
                            o oVar2 = new o(a(b.a(randomAccessFile2, mVar2).f1423a));
                            try {
                                randomAccessFile2.close();
                            } catch (Exception unused5) {
                            }
                            return oVar2;
                        } catch (Exception e3) {
                            throw new q(4, "Failed to collect certificates from " + str + " using APK Signature Scheme v3", e3);
                        }
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Exception unused6) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    throw new q(4, "Failed to collect certificates from " + str + " when findSignatureInfo at once", e4);
                }
            } catch (Exception unused7) {
                throw new q(6, "failed to read apk file, minSignatureSchemeVersion : 1, apkPath : ".concat(String.valueOf(str)));
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Signature[] a(Certificate[][] certificateArr) {
        Signature[] signatureArr = new Signature[certificateArr.length];
        for (int i = 0; i < certificateArr.length; i++) {
            if (Build.VERSION.SDK_INT <= 28) {
                Constructor a2 = com.bytedance.pangle.b.b.a.a((Class<?>) Signature.class, (Class<?>[]) new Class[]{Certificate[].class});
                if (a2 != null) {
                    a2.setAccessible(true);
                }
                if (a2 != null && a2.isAccessible()) {
                    try {
                        signatureArr[i] = (Signature) a2.newInstance(certificateArr[i]);
                    } catch (IllegalAccessException e2) {
                        e2.printStackTrace();
                    } catch (InstantiationException e3) {
                        e3.printStackTrace();
                    } catch (InvocationTargetException e4) {
                        e4.printStackTrace();
                    }
                }
            } else {
                signatureArr[i] = new Signature(certificateArr[i][0].getEncoded());
            }
        }
        return signatureArr;
    }
}
