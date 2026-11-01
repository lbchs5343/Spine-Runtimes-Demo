package com.bytedance.embedapplog;

import com.bytedance.embedapplog.util.TTEncryptUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public class z {
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0038, code lost:
    
        if (r1 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] dq(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream = null;
        try {
            if (dq.mn()) {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream2.write(str.getBytes("UTF-8"));
                    gZIPOutputStream = gZIPOutputStream2;
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    try {
                        jo.d(th);
                    } finally {
                        if (gZIPOutputStream != null) {
                            try {
                                gZIPOutputStream.close();
                            } catch (IOException e2) {
                                jo.d(e2);
                            }
                        }
                    }
                }
            } else {
                byteArrayOutputStream.write(str.getBytes("UTF-8"));
            }
        } catch (Throwable th2) {
            th = th2;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return dq.mn() ? TTEncryptUtils.a(byteArray, byteArray.length) : byteArray;
    }
}
