package com.bytedance.sdk.component.kk.d;

import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.q;
import g.awf;
import g.tn;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes.dex */
public class d extends p {

    /* renamed from: d, reason: collision with root package name */
    public File f1982d;
    public File dq;

    public d(ig igVar) {
        super(igVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean ia(Map<String, String> map) {
        return TextUtils.equals(map.get("Content-Encoding"), "gzip");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean iw(Map<String, String> map) {
        if (TextUtils.equals(map.get("Accept-Ranges"), "bytes") || TextUtils.equals(map.get("accept-ranges"), "bytes")) {
            return true;
        }
        String str = map.get("Content-Range");
        if (TextUtils.isEmpty(str)) {
            str = map.get("content-range");
        }
        return str != null && str.startsWith("bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long mn(Map<String, String> map) {
        String str = map.containsKey("content-length") ? map.get("content-length") : map.containsKey("Content-Length") ? map.get("Content-Length") : null;
        if (!TextUtils.isEmpty(str) && str != null) {
            try {
                return Long.valueOf(str).longValue();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        try {
            this.dq.delete();
        } catch (Throwable unused) {
        }
        try {
            this.f1982d.delete();
        } catch (Throwable unused2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x027e A[Catch: all -> 0x0282, TRY_LEAVE, TryCatch #2 {all -> 0x0282, blocks: (B:100:0x0279, B:102:0x027e), top: B:99:0x0279, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0286 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01fa A[EDGE_INSN: B:126:0x01fa->B:127:0x01fa BREAK  A[LOOP:1: B:82:0x01c6->B:94:0x01f0], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01fc A[Catch: all -> 0x01f5, TryCatch #16 {all -> 0x01f5, blocks: (B:89:0x01d8, B:91:0x01e0, B:95:0x01e6, B:128:0x01fc, B:135:0x0217, B:137:0x021f, B:139:0x0229, B:141:0x0233, B:160:0x0246, B:163:0x025a, B:174:0x020d), top: B:88:0x01d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01af A[Catch: all -> 0x01ba, TryCatch #17 {all -> 0x01ba, blocks: (B:71:0x01a9, B:73:0x01af, B:75:0x01b3), top: B:70:0x01a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01d3  */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.InputStream] */
    @Override // com.bytedance.sdk.component.kk.d.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.bytedance.sdk.component.kk.d dq() {
        com.bytedance.sdk.component.kk.d dVar;
        ?? r2;
        long j;
        RandomAccessFile randomAccessFile;
        boolean z;
        ?? r3;
        InputStream ox;
        byte[] bArr;
        int i;
        InputStream inputStream;
        int read;
        InputStream inputStream2;
        File file = this.dq;
        if (file == null || this.f1982d == null) {
            return null;
        }
        if (file.exists() && this.dq.length() != 0) {
            long currentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.kk.d dVar2 = new com.bytedance.sdk.component.kk.d(true, 200, "Success", null, null, currentTimeMillis, currentTimeMillis);
            dVar2.dq(this.dq);
            return dVar2;
        }
        long length = this.f1982d.length();
        if (length < 0) {
            length = 0;
        }
        q.dq dqVar = new q.dq();
        dqVar.dq((Object) d());
        d("Range", "bytes=" + length + "-");
        if (TextUtils.isEmpty(this.iw)) {
            Log.e("DownloadExecutor", "execute: Url is Empty");
            return null;
        }
        try {
            dqVar.dq(this.iw);
            dq(dqVar);
            try {
                f dq = this.ox.dq(dqVar.dq().d()).dq();
                if (dq == null || !dq.p()) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                iw mn = dq.mn();
                if (mn != null) {
                    for (int i2 = 0; i2 < mn.dq(); i2++) {
                        hashMap.put(mn.dq(i2), mn.d(i2));
                    }
                }
                com.bytedance.sdk.component.kk.d dVar3 = new com.bytedance.sdk.component.kk.d(dq.p(), dq.ox(), dq.s(), hashMap, null, dq.d(), dq.dq());
                long dq2 = dq.iw().dq();
                if (dq2 <= 0) {
                    dq2 = mn(hashMap);
                }
                try {
                    long length2 = this.f1982d.length();
                    boolean iw = iw(hashMap);
                    if (iw) {
                        dq2 += length2;
                        dVar = null;
                        try {
                            String str = (String) hashMap.get("Content-Range");
                            if (!TextUtils.isEmpty(str)) {
                                String str2 = "bytes " + length2 + "-" + (dq2 - 1);
                                if (TextUtils.indexOf(str, str2) == -1) {
                                    com.bytedance.sdk.component.kk.p.s.dq("DownloadExecutor", "execute: The Content-Range Header is invalid Assume[" + str2 + "] vs Real[" + str + "], please remove the temporary file [" + this.f1982d + "].");
                                    s();
                                    return null;
                                }
                            }
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            s();
                            return dVar;
                        }
                    } else {
                        dVar = null;
                    }
                    if (dq2 > 0 && this.f1982d.exists() && this.f1982d.length() == dq2) {
                        if (this.f1982d.renameTo(this.dq)) {
                            dVar3.dq(this.dq);
                            return dVar3;
                        }
                        com.bytedance.sdk.component.kk.p.s.dq("DownloadExecutor", "Rename fail");
                        return dVar;
                    }
                    try {
                        r2 = new RandomAccessFile(this.f1982d, "rw");
                    } catch (Throwable unused) {
                        r2 = dVar;
                    }
                    if (!iw) {
                        r2.setLength(0L);
                        j = 0;
                        randomAccessFile = r2;
                        ox = dq.iw().ox();
                        ox = ox;
                        if (ia(hashMap)) {
                        }
                        bArr = new byte[16384];
                        i = 0;
                        long j2 = 0;
                        inputStream = ox;
                        while (true) {
                            z = iw;
                            read = inputStream.read(bArr, i, 16384 - i);
                            inputStream2 = inputStream;
                            if (read != -1) {
                            }
                            iw = z;
                            inputStream = inputStream2;
                        }
                        if (read == 0) {
                        }
                        if (z) {
                        }
                        dq2 = this.f1982d.length();
                        if (dq2 > 0) {
                        }
                        StringBuilder sb = new StringBuilder(" tempFile.length() == fileSize is");
                        sb.append(this.f1982d.length() != dq2);
                        com.bytedance.sdk.component.kk.p.s.dq("DownloadExecutor", sb.toString());
                        inputStream2.close();
                        randomAccessFile.close();
                        return dVar;
                    }
                    r2.seek(length);
                    j = length;
                    randomAccessFile = r2;
                    try {
                        ox = dq.iw().ox();
                        try {
                            ox = ox;
                            if (ia(hashMap)) {
                                boolean z2 = ox instanceof GZIPInputStream;
                                ox = ox;
                                if (!z2) {
                                    ox = new GZIPInputStream(ox);
                                }
                            }
                            try {
                                bArr = new byte[16384];
                                i = 0;
                                long j22 = 0;
                                inputStream = ox;
                                while (true) {
                                    z = iw;
                                    try {
                                        read = inputStream.read(bArr, i, 16384 - i);
                                        inputStream2 = inputStream;
                                        if (read != -1) {
                                            break;
                                        }
                                        i += read;
                                        j22 += read;
                                        try {
                                            if (j22 % 16384 == 0 || j22 == dq2 - length) {
                                                randomAccessFile.seek(j);
                                                randomAccessFile.write(bArr, 0, i);
                                                j += i;
                                                i = 0;
                                            }
                                            iw = z;
                                            inputStream = inputStream2;
                                        } catch (Throwable th) {
                                            th = th;
                                            r3 = inputStream2;
                                            try {
                                                th.printStackTrace();
                                                if (!z) {
                                                }
                                                if (r3 != 0) {
                                                }
                                                try {
                                                    randomAccessFile.close();
                                                } catch (Throwable unused2) {
                                                }
                                                return dVar;
                                            } finally {
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        r3 = inputStream;
                                    }
                                }
                                if (read == 0) {
                                    randomAccessFile.seek(j);
                                    randomAccessFile.write(bArr, 0, i);
                                }
                                if (z || length == 0) {
                                    dq2 = this.f1982d.length();
                                }
                                if (dq2 > 0 || !this.f1982d.exists() || this.f1982d.length() != dq2) {
                                    StringBuilder sb2 = new StringBuilder(" tempFile.length() == fileSize is");
                                    sb2.append(this.f1982d.length() != dq2);
                                    com.bytedance.sdk.component.kk.p.s.dq("DownloadExecutor", sb2.toString());
                                    try {
                                        inputStream2.close();
                                    } catch (Throwable unused3) {
                                    }
                                    try {
                                        randomAccessFile.close();
                                    } catch (Throwable unused4) {
                                    }
                                    return dVar;
                                }
                                if (!this.f1982d.renameTo(this.dq)) {
                                    try {
                                        inputStream2.close();
                                    } catch (Throwable unused5) {
                                    }
                                    try {
                                        randomAccessFile.close();
                                    } catch (Throwable unused6) {
                                    }
                                    return dVar;
                                }
                                dVar3.dq(this.dq);
                                try {
                                    inputStream2.close();
                                } catch (Throwable unused7) {
                                }
                                try {
                                    randomAccessFile.close();
                                } catch (Throwable unused8) {
                                }
                                return dVar3;
                            } catch (Throwable th3) {
                                th = th3;
                                z = iw;
                                r3 = ox;
                                th.printStackTrace();
                                if (!z) {
                                    s();
                                }
                                if (r3 != 0) {
                                    try {
                                        r3.close();
                                    } catch (Throwable unused9) {
                                    }
                                }
                                randomAccessFile.close();
                                return dVar;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        z = iw;
                        r3 = dVar;
                    }
                } catch (IOException e3) {
                    e = e3;
                    dVar = null;
                }
            } catch (IOException e4) {
                e = e4;
                dVar = null;
            }
        } catch (IllegalArgumentException unused10) {
            Log.e("DownloadExecutor", "execute: Url is not a valid HTTP or HTTPS URL");
            return null;
        }
    }

    public void dq(final com.bytedance.sdk.component.kk.dq.dq dqVar) {
        File file = this.dq;
        if (file == null || this.f1982d == null) {
            if (dqVar != null) {
                dqVar.dq(this, new IOException("File info is null, please exec setFileInfo(String dir, String fileName)"));
                return;
            }
            return;
        }
        if (file.exists() && this.dq.length() != 0 && dqVar != null) {
            long currentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.kk.d dVar = new com.bytedance.sdk.component.kk.d(true, 200, "Success", null, null, currentTimeMillis, currentTimeMillis);
            dVar.dq(this.dq);
            dqVar.dq(this, dVar);
            return;
        }
        long length = this.f1982d.length();
        final long j = length >= 0 ? length : 0L;
        q.dq dqVar2 = new q.dq();
        dqVar2.dq((Object) d());
        d("Range", "bytes=" + j + "-");
        if (TextUtils.isEmpty(this.iw)) {
            dqVar.dq(this, new IOException("Url is Empty"));
            return;
        }
        try {
            dqVar2.dq(this.iw);
            dq(dqVar2);
            this.ox.dq(dqVar2.dq().d()).dq(new com.bytedance.sdk.component.d.dq.ox() { // from class: com.bytedance.sdk.component.kk.d.d.1
                @Override // com.bytedance.sdk.component.d.dq.ox
                public void onFailure(com.bytedance.sdk.component.d.dq.d dVar2, IOException iOException) {
                    com.bytedance.sdk.component.kk.dq.dq dqVar3 = dqVar;
                    if (dqVar3 != null) {
                        dqVar3.dq(d.this, iOException);
                    }
                    d.this.s();
                }

                /* JADX WARN: Removed duplicated region for block: B:54:0x014f A[Catch: all -> 0x013b, TryCatch #7 {all -> 0x013b, blocks: (B:46:0x0122, B:48:0x0130, B:50:0x0134, B:51:0x013e, B:52:0x0145, B:54:0x014f, B:56:0x015b, B:60:0x0163, B:64:0x0171, B:67:0x017d, B:69:0x0187, B:71:0x0193, B:73:0x019f, B:83:0x01ae, B:84:0x01bb, B:87:0x01d5), top: B:45:0x0122 }] */
                /* JADX WARN: Removed duplicated region for block: B:62:0x016f A[EDGE_INSN: B:62:0x016f->B:63:0x016f BREAK  A[LOOP:1: B:52:0x0145->B:59:0x016c], SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:64:0x0171 A[Catch: all -> 0x013b, TryCatch #7 {all -> 0x013b, blocks: (B:46:0x0122, B:48:0x0130, B:50:0x0134, B:51:0x013e, B:52:0x0145, B:54:0x014f, B:56:0x015b, B:60:0x0163, B:64:0x0171, B:67:0x017d, B:69:0x0187, B:71:0x0193, B:73:0x019f, B:83:0x01ae, B:84:0x01bb, B:87:0x01d5), top: B:45:0x0122 }] */
                /* JADX WARN: Removed duplicated region for block: B:86:0x01d4  */
                @Override // com.bytedance.sdk.component.d.dq.ox
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void onResponse(com.bytedance.sdk.component.d.dq.d dVar2, f fVar) throws IOException {
                    RandomAccessFile randomAccessFile;
                    long j2;
                    InputStream ox;
                    byte[] bArr;
                    int i;
                    long j3;
                    int read;
                    if (dqVar == null) {
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    if (fVar == null) {
                        return;
                    }
                    iw mn = fVar.mn();
                    if (mn != null) {
                        for (int i2 = 0; i2 < mn.dq(); i2++) {
                            hashMap.put(mn.dq(i2), mn.d(i2));
                        }
                    }
                    com.bytedance.sdk.component.kk.d dVar3 = new com.bytedance.sdk.component.kk.d(fVar.p(), fVar.ox(), fVar.s(), hashMap, null, fVar.d(), fVar.dq());
                    if (!fVar.p()) {
                        dqVar.dq(d.this, dVar3);
                        return;
                    }
                    long dq = fVar.iw().dq();
                    long j4 = 0;
                    if (dq <= 0) {
                        dq = d.mn(hashMap);
                    }
                    boolean iw = d.iw(hashMap);
                    if (iw) {
                        dq += j;
                        String str = (String) hashMap.get("Content-Range");
                        if (!TextUtils.isEmpty(str)) {
                            String str2 = "bytes " + j + "-" + (dq - 1);
                            if (TextUtils.indexOf(str, str2) == -1) {
                                d.this.s();
                                com.bytedance.sdk.component.kk.dq.dq dqVar3 = dqVar;
                                d dVar4 = d.this;
                                StringBuilder o = tn.o("The Content-Range Header is invalid Assume[", str2, "] vs Real[", str, "], please remove the temporary file [");
                                o.append(d.this.f1982d);
                                o.append("].");
                                dqVar3.dq(dVar4, new IOException(o.toString()));
                                return;
                            }
                        }
                    }
                    if (dq > 0 && d.this.f1982d.exists() && d.this.f1982d.length() == dq) {
                        d dVar5 = d.this;
                        if (!dVar5.f1982d.renameTo(dVar5.dq)) {
                            dqVar.dq(d.this, new IOException("Rename fail"));
                            return;
                        } else {
                            dVar3.dq(d.this.dq);
                            dqVar.dq(d.this, dVar3);
                            return;
                        }
                    }
                    InputStream inputStream = null;
                    try {
                        randomAccessFile = new RandomAccessFile(d.this.f1982d, "rw");
                    } catch (Throwable unused) {
                        randomAccessFile = null;
                    }
                    if (!iw) {
                        randomAccessFile.setLength(0L);
                        j2 = 0;
                        ox = fVar.iw().ox();
                        if (d.ia(hashMap)) {
                            ox = new GZIPInputStream(ox);
                        }
                        bArr = new byte[16384];
                        long j5 = 0;
                        i = 0;
                        while (true) {
                            j3 = j4;
                            read = ox.read(bArr, i, 16384 - i);
                            if (read != -1) {
                            }
                            j4 = j3;
                        }
                        if (!iw) {
                        }
                        if (dq <= j3) {
                        }
                        com.bytedance.sdk.component.kk.dq.dq dqVar4 = dqVar;
                        d dVar6 = d.this;
                        StringBuilder sb = new StringBuilder(" tempFile.length() == fileSize is");
                        sb.append(d.this.f1982d.length() == dq);
                        dqVar4.dq(dVar6, new IOException(sb.toString()));
                        ox.close();
                        randomAccessFile.close();
                    }
                    randomAccessFile.seek(j);
                    j2 = j;
                    try {
                        ox = fVar.iw().ox();
                        if (d.ia(hashMap) && !(ox instanceof GZIPInputStream)) {
                            ox = new GZIPInputStream(ox);
                        }
                        bArr = new byte[16384];
                        long j52 = 0;
                        i = 0;
                        while (true) {
                            j3 = j4;
                            read = ox.read(bArr, i, 16384 - i);
                            if (read != -1) {
                                break;
                            }
                            i += read;
                            j52 += read;
                            if (j52 % 16384 == j3 || j52 == dq - j) {
                                randomAccessFile.seek(j2);
                                randomAccessFile.write(bArr, 0, i);
                                j2 += i;
                                i = 0;
                            }
                            j4 = j3;
                        }
                        if (!iw) {
                            dq = d.this.f1982d.length();
                        }
                        if (dq <= j3 && d.this.f1982d.exists() && d.this.f1982d.length() == dq) {
                            d dVar7 = d.this;
                            if (dVar7.f1982d.renameTo(dVar7.dq)) {
                                dVar3.dq(d.this.dq);
                                dqVar.dq(d.this, dVar3);
                            } else {
                                dqVar.dq(d.this, new IOException("Rename fail"));
                            }
                        } else {
                            com.bytedance.sdk.component.kk.dq.dq dqVar42 = dqVar;
                            d dVar62 = d.this;
                            StringBuilder sb2 = new StringBuilder(" tempFile.length() == fileSize is");
                            sb2.append(d.this.f1982d.length() == dq);
                            dqVar42.dq(dVar62, new IOException(sb2.toString()));
                        }
                        try {
                            ox.close();
                        } catch (Throwable unused2) {
                        }
                        try {
                            randomAccessFile.close();
                        } catch (Throwable unused3) {
                        }
                    } catch (Throwable th) {
                        try {
                            th.printStackTrace();
                            dqVar.dq(d.this, new IOException(th.getMessage()));
                            if (!iw) {
                                d.this.s();
                            }
                            if (0 != 0) {
                                try {
                                    inputStream.close();
                                } catch (Throwable unused4) {
                                }
                            }
                            try {
                                randomAccessFile.close();
                            } catch (Throwable unused5) {
                            }
                        } finally {
                        }
                    }
                }
            });
        } catch (IllegalArgumentException unused) {
            dqVar.dq(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    public void dq(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.dq = new File(str, str2);
        this.f1982d = new File(str, awf.c(str2, ".temp"));
    }
}
