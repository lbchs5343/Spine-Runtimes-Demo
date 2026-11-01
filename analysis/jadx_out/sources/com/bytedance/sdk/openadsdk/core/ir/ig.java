package com.bytedance.sdk.openadsdk.core.ir;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes3.dex */
public class ig {
    /* JADX WARN: Finally extract failed */
    public static String d(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        } catch (Throwable th) {
            th = th;
            gZIPInputStream = null;
        }
        try {
            byte[] bArr2 = new byte[4096];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read < 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            String str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
            try {
                byteArrayInputStream.close();
                byteArrayOutputStream.close();
                gZIPInputStream.close();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
            try {
                com.bytedance.sdk.component.utils.ig.p("gzip compress error.", th.getMessage());
                try {
                    byteArrayInputStream.close();
                    byteArrayOutputStream.close();
                    if (gZIPInputStream == null) {
                        return null;
                    }
                    gZIPInputStream.close();
                    return null;
                } catch (Throwable th4) {
                    th4.printStackTrace();
                    return null;
                }
            } catch (Throwable th5) {
                try {
                    byteArrayInputStream.close();
                    byteArrayOutputStream.close();
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                } catch (Throwable th6) {
                    th6.printStackTrace();
                }
                throw th5;
            }
        }
    }

    public static byte[] dq(byte[] bArr) {
        byte[] bArr2 = null;
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            byte[] bArr3 = new byte[4096];
            while (true) {
                int read = byteArrayInputStream.read(bArr3, 0, 4096);
                if (read <= 0) {
                    gZIPOutputStream.close();
                    byteArrayInputStream.close();
                    bArr2 = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return bArr2;
                }
                gZIPOutputStream.write(bArr3, 0, read);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return bArr2;
        }
    }
}
