package com.bytedance.sdk.component.panglearmor.dq.d;

import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {
    private static JSONObject d(List<dq> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        JSONObject jSONObject = new JSONObject();
        for (dq dqVar : list) {
            if (dqVar != null) {
                arrayList.add(dq(dqVar.d()));
                arrayList2.add(String.valueOf(dqVar.dq()));
            }
        }
        dq(jSONObject, "sign", arrayList, false);
        dq(jSONObject, "subject", arrayList2, false);
        return jSONObject;
    }

    public static long dq(long j, InputStream inputStream) throws IOException {
        if (j != -1) {
            return j;
        }
        byte[] bArr = new byte[8192];
        long j2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j2;
            }
            j2 += read;
        }
    }

    @DungeonFlag
    private static String dq(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x0271, code lost:
    
        if (r10 == null) goto L118;
     */
    @DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject dq(File file) {
        ZipFile zipFile;
        JSONObject jSONObject;
        long j;
        JSONObject jSONObject2;
        Enumeration<? extends ZipEntry> enumeration;
        long j2;
        char c2;
        JSONObject jSONObject3 = new JSONObject();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        JSONObject jSONObject4 = new JSONObject();
        dq(file, arrayList7);
        try {
            zipFile = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                long j3 = 0;
                while (entries.hasMoreElements()) {
                    try {
                        ZipEntry nextElement = entries.nextElement();
                        if (nextElement != null) {
                            String name = nextElement.getName();
                            if (!TextUtils.isEmpty(name) || !nextElement.isDirectory()) {
                                String[] split = name.split("/");
                                enumeration = entries;
                                j2 = j3;
                                long size = nextElement.getSize();
                                if (name.startsWith("res/drawable/")) {
                                    jSONObject2 = jSONObject3;
                                    if (name.length() > 13) {
                                        try {
                                            arrayList2.add(split[2]);
                                            entries = enumeration;
                                            j3 = j2;
                                            jSONObject3 = jSONObject2;
                                        } catch (Throwable unused) {
                                            jSONObject3 = jSONObject2;
                                        }
                                    }
                                } else {
                                    jSONObject2 = jSONObject3;
                                }
                                if (name.startsWith("res/")) {
                                    c2 = 1;
                                    if (split.length == 2) {
                                        arrayList3.add(split[1]);
                                        entries = enumeration;
                                        j3 = j2;
                                        jSONObject3 = jSONObject2;
                                    }
                                } else {
                                    c2 = 1;
                                }
                                if (name.startsWith("classes") && name.endsWith(".dex")) {
                                    j3 = j2 + dq(size, zipFile.getInputStream(nextElement));
                                    entries = enumeration;
                                    jSONObject3 = jSONObject2;
                                } else {
                                    if (name.startsWith("assets/") && split.length >= 2) {
                                        arrayList.add(split[c2]);
                                        if (name.startsWith("assets/assets/resources/native/") && split.length >= 6 && jSONObject4.length() < 10) {
                                            if (!TextUtils.isEmpty(split[4]) && !jSONObject4.has(split[4])) {
                                                jSONObject4.put(split[4], dq(size, zipFile.getInputStream(nextElement)));
                                            } else if (jSONObject4.has(split[4])) {
                                                jSONObject4.put(split[4], jSONObject4.getLong(split[4]) + dq(size, zipFile.getInputStream(nextElement)));
                                            }
                                        }
                                    } else if (name.startsWith("lib/armeabi/") && name.length() > 12) {
                                        arrayList4.add(split[2]);
                                    } else if (name.startsWith("lib/armeabi-v7a/") && name.length() > 16) {
                                        arrayList5.add(split[2]);
                                    } else if (name.startsWith("lib/arm64-v8a/") && name.length() > 14) {
                                        arrayList6.add(split[2]);
                                    } else if (((name.startsWith("META-INF/") && name.endsWith(".RSA")) || name.endsWith(".DSA") || name.endsWith(".EC")) && arrayList7.isEmpty()) {
                                        try {
                                            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                                            if (certificateFactory != null) {
                                                for (Certificate certificate : certificateFactory.generateCertificates(zipFile.getInputStream(nextElement))) {
                                                    if (certificate instanceof X509Certificate) {
                                                        arrayList7.add(new dq(String.valueOf(((X509Certificate) certificate).getSubjectDN()), ((X509Certificate) certificate).getEncoded()));
                                                    }
                                                }
                                            }
                                        } catch (CertificateException unused2) {
                                        }
                                    }
                                    entries = enumeration;
                                    j3 = j2;
                                    jSONObject3 = jSONObject2;
                                }
                            }
                        }
                        jSONObject2 = jSONObject3;
                        enumeration = entries;
                        j2 = j3;
                        entries = enumeration;
                        j3 = j2;
                        jSONObject3 = jSONObject2;
                    } catch (Throwable unused3) {
                    }
                }
                jSONObject = jSONObject3;
                j = j3;
            } catch (Throwable unused4) {
            }
            try {
                jSONObject3 = jSONObject;
                jSONObject3.put("apkSize", file.length());
                jSONObject3.put("dexSize", j);
                if (jSONObject4.length() > 0) {
                    jSONObject3.put("cocos", jSONObject4);
                }
                dq(jSONObject3, "assets", arrayList, false);
                JSONObject jSONObject5 = new JSONObject();
                dq(jSONObject5, "eabi", arrayList4, false);
                dq(jSONObject5, "v7a", arrayList5, false);
                dq(jSONObject5, "v8a", arrayList6, false);
                if (jSONObject5.length() > 0) {
                    jSONObject3.put("lib", jSONObject5);
                }
                JSONObject dq = dq(arrayList2);
                if (dq != null && dq.length() > 0) {
                    jSONObject3.put("drawable", dq);
                }
                JSONObject dq2 = dq(arrayList3);
                if (dq2 != null && dq2.length() > 0) {
                    jSONObject3.put("res", dq2);
                }
                JSONObject d2 = d(arrayList7);
                if (d2.length() > 0) {
                    jSONObject3.put("signInfo", d2);
                }
            } catch (Throwable unused5) {
                jSONObject3 = jSONObject;
            }
        } catch (Throwable unused6) {
            zipFile = null;
        }
        try {
            zipFile.close();
        } catch (IOException unused7) {
        }
        return jSONObject3;
    }

    private static JSONObject dq(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (String str : list) {
            if (str.endsWith(".png")) {
                arrayList2.add(str.substring(0, str.lastIndexOf(".png")));
            } else if (str.endsWith(".xml")) {
                arrayList.add(str.substring(0, str.lastIndexOf(".xml")));
            } else {
                arrayList3.add(str);
            }
        }
        dq(jSONObject, "xml", arrayList, true);
        dq(jSONObject, "png", arrayList2, true);
        dq(jSONObject, "other", arrayList3, true);
        return jSONObject;
    }

    private static void dq(File file, List<dq> list) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                d dq = ox.dq(randomAccessFile, 0L, randomAccessFile.length());
                list.addAll(com.bytedance.sdk.component.panglearmor.dq.dq.d.dq.dq.dq.dq(dq, com.bytedance.sdk.component.panglearmor.dq.dq.dq.dq.dq(dq)));
                randomAccessFile.close();
            } finally {
            }
        } catch (Throwable unused) {
        }
    }

    public static void dq(JSONObject jSONObject, String str, List<String> list, boolean z) {
        if (jSONObject == null || list == null || list.isEmpty()) {
            return;
        }
        if (z) {
            try {
                jSONObject.put(str + "Size", list.size());
            } catch (JSONException unused) {
                return;
            }
        }
        jSONObject.put(str, s.dq(list));
    }
}
