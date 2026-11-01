package com.bykv.vk.openvk.component.video.dq.s;

import g.awf;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class ox {
    public static File d(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, awf.c(str2, ".temp"));
    }

    public static long dq(String str, String str2) {
        File ox = ox(str, str2);
        if (ox.exists()) {
            return ox.length();
        }
        File d2 = d(str, str2);
        if (d2.exists()) {
            return d2.length();
        }
        return 0L;
    }

    public static void dq(RandomAccessFile randomAccessFile, byte[] bArr, int i, int i2, String str) throws IOException {
        try {
            randomAccessFile.seek(i);
            randomAccessFile.write(bArr, 0, i2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static File ox(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }
}
