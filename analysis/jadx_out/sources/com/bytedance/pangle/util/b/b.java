package com.bytedance.pangle.util.b;

import com.bytedance.pangle.c.b;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.b.b.c;
import com.bytedance.pangle.util.b.b.d;
import com.bytedance.pangle.util.i;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {
    private static void a(int i, String str, int i2, long j, Throwable th, String str2) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.bytedance.pangle.log.b.a(Integer.valueOf(i)));
            jSONObject.putOpt("plugin_package_name", com.bytedance.pangle.log.b.a(str));
            jSONObject.putOpt("version_code", com.bytedance.pangle.log.b.a(Integer.valueOf(i2)));
            jSONObject3.putOpt(MediationConstant.EXTRA_DURATION, Integer.valueOf(com.bytedance.pangle.log.b.b(Long.valueOf(j))));
            jSONObject2.putOpt("message", str2 + com.bytedance.pangle.log.b.a(th));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.pangle.c.b.a().a(com.bytedance.pangle.c.b.k, jSONObject, jSONObject3, jSONObject2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
    
        if (r0.h.endsWith(".so") != false) goto L39;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02c3 A[Catch: all -> 0x02be, TryCatch #20 {all -> 0x02be, blocks: (B:93:0x02ba, B:55:0x02c3, B:56:0x02c6, B:57:0x02c9), top: B:92:0x02ba }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(String str, boolean z, boolean z2, String str2, int i, int i2) {
        String str3;
        long j;
        Throwable th;
        int i3;
        int i4;
        int i5;
        int i6;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        String str4;
        ByteArrayOutputStream byteArrayOutputStream;
        int i7;
        int i8;
        Iterator<c> it;
        c next;
        RandomAccessFile randomAccessFile3;
        int i9;
        int i10;
        String str5 = "[shootsTag]";
        String str6 = ZeusLogger.TAG;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            new com.bytedance.pangle.util.b.a.a();
            a aVar = new a(com.bytedance.pangle.util.b.a.a.a(str));
            File file = new File(aVar.f1620a.f1637d.getAbsolutePath() + ".rm_tmp");
            if (file.exists()) {
                file.delete();
            }
            try {
                RandomAccessFile randomAccessFile4 = new RandomAccessFile(file, "rw");
                try {
                    RandomAccessFile randomAccessFile5 = new RandomAccessFile(aVar.f1620a.f1637d, "r");
                    try {
                        List<c> list = aVar.f1620a.f1634a.f1624a;
                        HashSet hashSet = new HashSet();
                        Iterator<c> it2 = list.iterator();
                        int i11 = 0;
                        while (it2.hasNext()) {
                            try {
                                it = it2;
                                next = it2.next();
                            } catch (Throwable th2) {
                                th = th2;
                                j = currentTimeMillis;
                                randomAccessFile2 = randomAccessFile5;
                                randomAccessFile = randomAccessFile4;
                                str3 = str5;
                                if (randomAccessFile2 != null) {
                                    try {
                                        randomAccessFile2.close();
                                    } catch (Throwable th3) {
                                        th = th3;
                                        th = th;
                                        try {
                                            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "rmEntries failed. zipFile:" + str + " rmDex:" + z + " rmSO:" + z2, th);
                                            if (i2 != 0) {
                                            }
                                        } catch (Throwable th4) {
                                            if (i2 == 0) {
                                                throw th4;
                                            }
                                            if (i2 == 1) {
                                                i3 = b.a.f1320c;
                                            } else {
                                                if (i2 != 2) {
                                                    i4 = 0;
                                                    String str7 = "rmSo:" + z2 + " rmDex:" + z;
                                                    ZeusLogger.d(str6, str3.concat(String.valueOf(str7)));
                                                    a(i4, str2, i, System.currentTimeMillis() - j, th, str7);
                                                    throw th4;
                                                }
                                                i3 = b.a.f1321d;
                                            }
                                            i4 = i3;
                                            String str72 = "rmSo:" + z2 + " rmDex:" + z;
                                            ZeusLogger.d(str6, str3.concat(String.valueOf(str72)));
                                            a(i4, str2, i, System.currentTimeMillis() - j, th, str72);
                                            throw th4;
                                        }
                                    }
                                }
                                if (randomAccessFile != null) {
                                    randomAccessFile.close();
                                }
                                a.a(file);
                                throw th;
                            }
                            try {
                                try {
                                    if (z) {
                                        if (i.d()) {
                                            j = currentTimeMillis;
                                            try {
                                                if (!next.h.equals("classes.dex")) {
                                                }
                                                long j2 = next.i;
                                                if ("resources.arsc".equals(next.h)) {
                                                    try {
                                                        long filePointer = randomAccessFile4.getFilePointer() + next.c();
                                                        long j3 = filePointer % 4096 == 0 ? 0L : 4096 - ((filePointer - next.f1633g) % 4096);
                                                        if (j3 != 0) {
                                                            randomAccessFile2 = randomAccessFile5;
                                                            try {
                                                                i9 = next.f1633g;
                                                                i10 = (int) j3;
                                                                next.f1633g = i10;
                                                                randomAccessFile3 = randomAccessFile4;
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                                randomAccessFile3 = randomAccessFile4;
                                                                str3 = str5;
                                                                randomAccessFile = randomAccessFile3;
                                                                if (randomAccessFile2 != null) {
                                                                }
                                                                if (randomAccessFile != null) {
                                                                }
                                                                a.a(file);
                                                                throw th;
                                                            }
                                                            try {
                                                                a.a(randomAccessFile2, randomAccessFile3, j2, 28L, next.h);
                                                                randomAccessFile = randomAccessFile3;
                                                                try {
                                                                    com.bytedance.pangle.util.b.a.c cVar = aVar.f1620a.f1636c;
                                                                    str4 = str6;
                                                                    try {
                                                                        com.bytedance.pangle.util.b.a.c.a(cVar.f1622a, i10);
                                                                        randomAccessFile.write(cVar.f1622a);
                                                                        long j4 = j2 + 30;
                                                                        str3 = str5;
                                                                        try {
                                                                            try {
                                                                                a.a(randomAccessFile2, randomAccessFile, j4, next.f1631e, next.h);
                                                                                randomAccessFile.write(new byte[i10]);
                                                                                a.a(randomAccessFile2, randomAccessFile, j4 + next.f1631e + i9, next.a(), next.h);
                                                                                randomAccessFile = randomAccessFile;
                                                                                long j5 = i11;
                                                                                next.i = j5;
                                                                                i11 = (int) (j5 + next.b());
                                                                                str5 = str3;
                                                                                randomAccessFile5 = randomAccessFile2;
                                                                                it2 = it;
                                                                                str6 = str4;
                                                                                randomAccessFile4 = randomAccessFile;
                                                                                currentTimeMillis = j;
                                                                            } catch (Throwable th6) {
                                                                                th = th6;
                                                                                randomAccessFile = randomAccessFile;
                                                                                str6 = str4;
                                                                                if (randomAccessFile2 != null) {
                                                                                }
                                                                                if (randomAccessFile != null) {
                                                                                }
                                                                                a.a(file);
                                                                                throw th;
                                                                            }
                                                                        } catch (Throwable th7) {
                                                                            th = th7;
                                                                            str6 = str4;
                                                                            if (randomAccessFile2 != null) {
                                                                            }
                                                                            if (randomAccessFile != null) {
                                                                            }
                                                                            a.a(file);
                                                                            throw th;
                                                                        }
                                                                    } catch (Throwable th8) {
                                                                        th = th8;
                                                                        str3 = str5;
                                                                    }
                                                                } catch (Throwable th9) {
                                                                    th = th9;
                                                                    str3 = str5;
                                                                    if (randomAccessFile2 != null) {
                                                                    }
                                                                    if (randomAccessFile != null) {
                                                                    }
                                                                    a.a(file);
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th10) {
                                                                th = th10;
                                                                str3 = str5;
                                                                randomAccessFile = randomAccessFile3;
                                                                if (randomAccessFile2 != null) {
                                                                }
                                                                if (randomAccessFile != null) {
                                                                }
                                                                a.a(file);
                                                                throw th;
                                                            }
                                                        }
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        randomAccessFile2 = randomAccessFile5;
                                                    }
                                                }
                                                str4 = str6;
                                                randomAccessFile2 = randomAccessFile5;
                                                RandomAccessFile randomAccessFile6 = randomAccessFile4;
                                                str3 = str5;
                                                a.a(randomAccessFile2, randomAccessFile6, j2, next.b(), next.h);
                                                randomAccessFile = randomAccessFile6;
                                                long j52 = i11;
                                                next.i = j52;
                                                i11 = (int) (j52 + next.b());
                                                str5 = str3;
                                                randomAccessFile5 = randomAccessFile2;
                                                it2 = it;
                                                str6 = str4;
                                                randomAccessFile4 = randomAccessFile;
                                                currentTimeMillis = j;
                                            } catch (Throwable th12) {
                                                th = th12;
                                                randomAccessFile2 = randomAccessFile5;
                                                randomAccessFile = randomAccessFile4;
                                                str3 = str5;
                                                if (randomAccessFile2 != null) {
                                                }
                                                if (randomAccessFile != null) {
                                                }
                                                a.a(file);
                                                throw th;
                                            }
                                        } else {
                                            j = currentTimeMillis;
                                        }
                                        if (next.h.startsWith("classes") && next.h.endsWith(".dex")) {
                                            hashSet.add(next.h);
                                            it2 = it;
                                            currentTimeMillis = j;
                                        }
                                    } else {
                                        j = currentTimeMillis;
                                    }
                                    next.i = j52;
                                    i11 = (int) (j52 + next.b());
                                    str5 = str3;
                                    randomAccessFile5 = randomAccessFile2;
                                    it2 = it;
                                    str6 = str4;
                                    randomAccessFile4 = randomAccessFile;
                                    currentTimeMillis = j;
                                } catch (Throwable th13) {
                                    th = th13;
                                    str6 = str4;
                                    if (randomAccessFile2 != null) {
                                    }
                                    if (randomAccessFile != null) {
                                    }
                                    a.a(file);
                                    throw th;
                                }
                                long j22 = next.i;
                                if ("resources.arsc".equals(next.h)) {
                                }
                                str4 = str6;
                                randomAccessFile2 = randomAccessFile5;
                                RandomAccessFile randomAccessFile62 = randomAccessFile4;
                                str3 = str5;
                                a.a(randomAccessFile2, randomAccessFile62, j22, next.b(), next.h);
                                randomAccessFile = randomAccessFile62;
                                long j522 = i11;
                            } catch (Throwable th14) {
                                th = th14;
                                randomAccessFile2 = randomAccessFile5;
                                randomAccessFile = randomAccessFile4;
                                str3 = str5;
                                if (randomAccessFile2 != null) {
                                }
                                if (randomAccessFile != null) {
                                }
                                a.a(file);
                                throw th;
                            }
                            if (z2) {
                                if (next.h.startsWith("lib/")) {
                                }
                            }
                        }
                        str4 = str6;
                        j = currentTimeMillis;
                        randomAccessFile2 = randomAccessFile5;
                        randomAccessFile = randomAccessFile4;
                        str3 = str5;
                        aVar.f1620a.f1634a.a(hashSet);
                        d dVar = aVar.f1620a;
                        try {
                            if (dVar == null) {
                                throw new IOException("input parameters is null, cannot finalize zip file");
                            }
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                try {
                                    long filePointer2 = randomAccessFile.getFilePointer();
                                    com.bytedance.pangle.util.b.a.b.a(dVar, byteArrayOutputStream);
                                    int size = byteArrayOutputStream.size();
                                    int i12 = (int) filePointer2;
                                    dVar.f1636c.a((OutputStream) byteArrayOutputStream, 101010256);
                                    dVar.f1636c.a(byteArrayOutputStream, 0);
                                    dVar.f1636c.a(byteArrayOutputStream, 0);
                                    int size2 = dVar.f1634a.f1624a.size();
                                    dVar.f1636c.a(byteArrayOutputStream, size2);
                                    dVar.f1636c.a(byteArrayOutputStream, size2);
                                    dVar.f1636c.a((OutputStream) byteArrayOutputStream, size);
                                    dVar.f1636c.a((OutputStream) byteArrayOutputStream, i12);
                                    dVar.f1636c.a(byteArrayOutputStream, 0);
                                    randomAccessFile.write(byteArrayOutputStream.toByteArray());
                                    byteArrayOutputStream.close();
                                    if (!file.renameTo(aVar.f1620a.f1637d)) {
                                        throw new ZipException("cannot rename modified zip file");
                                    }
                                    try {
                                        randomAccessFile2.close();
                                        randomAccessFile.close();
                                        a.a(file);
                                        if (i2 == 0) {
                                            return true;
                                        }
                                        if (i2 == 1) {
                                            i8 = b.a.f1318a;
                                        } else {
                                            if (i2 != 2) {
                                                i7 = 0;
                                                String str8 = "rmSo:" + z2 + " rmDex:" + z;
                                                ZeusLogger.d(str4, str3.concat(String.valueOf(str8)));
                                                a(i7, str2, i, System.currentTimeMillis() - j, (Throwable) null, str8);
                                                return true;
                                            }
                                            i8 = b.a.f1319b;
                                        }
                                        i7 = i8;
                                        String str82 = "rmSo:" + z2 + " rmDex:" + z;
                                        ZeusLogger.d(str4, str3.concat(String.valueOf(str82)));
                                        a(i7, str2, i, System.currentTimeMillis() - j, (Throwable) null, str82);
                                        return true;
                                    } catch (Throwable th15) {
                                        th = th15;
                                        str6 = str4;
                                        th = th;
                                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "rmEntries failed. zipFile:" + str + " rmDex:" + z + " rmSO:" + z2, th);
                                        if (i2 != 0) {
                                            return false;
                                        }
                                        if (i2 == 1) {
                                            i6 = b.a.f1320c;
                                        } else {
                                            if (i2 != 2) {
                                                i5 = 0;
                                                String str9 = "rmSo:" + z2 + " rmDex:" + z;
                                                ZeusLogger.d(str6, str3.concat(String.valueOf(str9)));
                                                a(i5, str2, i, System.currentTimeMillis() - j, th, str9);
                                                return false;
                                            }
                                            i6 = b.a.f1321d;
                                        }
                                        i5 = i6;
                                        String str92 = "rmSo:" + z2 + " rmDex:" + z;
                                        ZeusLogger.d(str6, str3.concat(String.valueOf(str92)));
                                        a(i5, str2, i, System.currentTimeMillis() - j, th, str92);
                                        return false;
                                    }
                                } catch (Throwable th16) {
                                    th = th16;
                                    if (byteArrayOutputStream != null) {
                                        byteArrayOutputStream.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th17) {
                                th = th17;
                                byteArrayOutputStream = null;
                            }
                        } catch (Throwable th18) {
                            th = th18;
                            if (randomAccessFile2 != null) {
                            }
                            if (randomAccessFile != null) {
                            }
                            a.a(file);
                            throw th;
                        }
                    } catch (Throwable th19) {
                        th = th19;
                    }
                } catch (Throwable th20) {
                    th = th20;
                    j = currentTimeMillis;
                    randomAccessFile = randomAccessFile4;
                    str3 = "[shootsTag]";
                    randomAccessFile2 = null;
                    if (randomAccessFile2 != null) {
                    }
                    if (randomAccessFile != null) {
                    }
                    a.a(file);
                    throw th;
                }
            } catch (Throwable th21) {
                th = th21;
                str3 = "[shootsTag]";
                j = currentTimeMillis;
                randomAccessFile = null;
            }
        } catch (Throwable th22) {
            th = th22;
            str3 = "[shootsTag]";
            j = currentTimeMillis;
        }
    }
}
