package com.ss.android.dq;

import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class ox {
    private static final char[] dq = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private int f9262d;
        private int dq;
        private int ox;
        private long p;
        private String s;

        private dq() {
        }
    }

    private static long d(String str) throws RuntimeException {
        return (Long.parseLong(str, 16) - 31) >> 4;
    }

    private static String d(File file, int i, long j) throws Exception {
        return dq(new com.ss.android.dq.dq(file), i, j);
    }

    public static int dq(String str, File file) {
        return dq(str, file, (d) null);
    }

    public static int dq(String str, File file, d dVar) {
        int i;
        long j;
        String str2;
        if (str == null || str.length() == 0) {
            return 2;
        }
        try {
            if (dVar != null) {
                if (dVar.dq() <= 0) {
                    try {
                        dVar.d();
                    } catch (Throwable unused) {
                    }
                    return 5;
                }
            } else if (file == null || !file.exists()) {
                return 5;
            }
            try {
                dq dq2 = dq(str);
                if (dq2 == null) {
                    i = -1;
                    j = -1;
                } else {
                    if (dq2.dq > 1) {
                        return 3;
                    }
                    i = dq2.ox;
                    j = dq2.p;
                }
                dq dqVar = null;
                try {
                    str2 = dVar != null ? dq(dVar, i, j) : d(file, i, j);
                } catch (Throwable th) {
                    th.printStackTrace();
                    str2 = null;
                }
                if (str2 != null && str2.length() != 0) {
                    if (dq2 != null && (dq2.dq != 1 || dq2.f9262d != 1)) {
                        if (dq2.s != null) {
                            try {
                                dqVar = dq(str2);
                            } catch (Throwable unused2) {
                            }
                            if (dqVar != null && dq2.ox == dqVar.ox && dq2.p == dqVar.p && dq2.s.equals(dqVar.s)) {
                                return 0;
                            }
                        }
                    }
                    return str2.equals(str) ? 0 : 1;
                }
                return 6;
            } catch (Throwable unused3) {
                return 4;
            }
        } catch (Throwable unused4) {
            return 99;
        }
    }

    private static dq dq(String str) throws Exception {
        if (!str.startsWith("ttmd5:")) {
            return null;
        }
        String[] split = str.split(";");
        String[] split2 = split[0].split(":");
        dq dqVar = new dq();
        dqVar.dq = Integer.parseInt(split2[1]);
        if (dqVar.dq > 1) {
            return dqVar;
        }
        dqVar.f9262d = Integer.parseInt(split2[2]);
        String[] split3 = split2[3].split("g");
        dqVar.ox = (int) d(split3[0]);
        dqVar.p = d(split3[1]);
        dqVar.s = split[1];
        return dqVar;
    }

    private static String dq(int i, long j) {
        return "ttmd5:1:1:" + dq(i) + "g" + dq(j);
    }

    private static String dq(long j) {
        return Long.toHexString((j << 4) + 31);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:5|6|(6:13|14|(3:16|(1:18)|19)|(1:21)|22|(4:31|33|34|35)(3:26|27|28))|38|14|(0)|(0)|22|(1:24)|31|33|34|35) */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e A[Catch: all -> 0x002c, TryCatch #2 {all -> 0x002c, blocks: (B:6:0x000d, B:10:0x001a, B:14:0x0030, B:16:0x003e, B:18:0x004b, B:21:0x005a, B:22:0x0061, B:31:0x0073), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a A[Catch: all -> 0x002c, TryCatch #2 {all -> 0x002c, blocks: (B:6:0x000d, B:10:0x001a, B:14:0x0030, B:16:0x003e, B:18:0x004b, B:21:0x005a, B:22:0x0061, B:31:0x0073), top: B:5:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String dq(d dVar, int i, long j) throws Exception {
        long j2;
        String dq2;
        int i2 = i;
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        if (messageDigest == null) {
            return "";
        }
        try {
            long dq3 = dVar.dq();
            long j3 = 0;
            if (i2 > 0 && j > 0 && i2 * j <= (8 * dq3) / 10) {
                j2 = j;
                byte[] bArr = new byte[8192];
                dq(dVar, messageDigest, bArr, 0L, j2);
                if (i2 > 2) {
                    int i3 = i2 - 1;
                    long j4 = (dq3 - (i2 * j2)) / i3;
                    int i4 = 1;
                    while (i4 < i3) {
                        long j5 = j2 + j4 + j3;
                        dq(dVar, messageDigest, bArr, j5, j2);
                        i4++;
                        j3 = j5;
                    }
                }
                if (i2 > 1) {
                    dq(dVar, messageDigest, bArr, dq3 - j2, j2);
                }
                dq2 = dq(messageDigest.digest());
                if (i2 != 1 && j2 == dq3) {
                    try {
                        dVar.d();
                    } catch (Throwable unused) {
                    }
                    return dq2;
                }
                String str = dq(i2, j2) + ";" + dq2;
                dVar.d();
                return str;
            }
            j2 = dq3;
            i2 = 1;
            byte[] bArr2 = new byte[8192];
            dq(dVar, messageDigest, bArr2, 0L, j2);
            if (i2 > 2) {
            }
            if (i2 > 1) {
            }
            dq2 = dq(messageDigest.digest());
            if (i2 != 1) {
            }
            String str2 = dq(i2, j2) + ";" + dq2;
            dVar.d();
            return str2;
        } catch (Throwable th) {
            try {
                dVar.d();
            } catch (Throwable unused2) {
            }
            throw th;
        }
    }

    public static String dq(File file) {
        return dq(file, 9, 8192L);
    }

    public static String dq(File file, int i, long j) {
        if (file != null) {
            try {
                if (file.exists()) {
                    return d(file, i, j);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return "";
    }

    private static String dq(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        int length = bArr.length * 2;
        char[] cArr = new char[length];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = dq;
            cArr[i] = cArr2[(b2 & 255) >> 4];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr, 0, length);
    }

    private static void dq(d dVar, MessageDigest messageDigest, byte[] bArr, long j, long j2) throws IOException {
        dVar.dq(j, j2);
        long j3 = 0;
        while (j3 < j2) {
            int dq2 = dVar.dq(bArr, 0, (int) Math.min(j2 - j3, bArr.length));
            if (dq2 <= 0) {
                throw new IOException("updateSample unexpected readCount <= 0, readCount = " + dq2 + ", readTotalCount = " + j3 + ", sampleSize = " + j2);
            }
            messageDigest.update(bArr, 0, dq2);
            j3 += dq2;
        }
    }
}
