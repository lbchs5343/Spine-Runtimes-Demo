package com.ss.android.downloadlib.mn;

import java.io.File;

/* loaded from: classes.dex */
public class mn {
    public static long dq(File file) {
        if (file == null || !file.exists()) {
            return 0L;
        }
        return dq(file, file.lastModified(), 0);
    }

    private static long dq(File file, long j, int i) {
        File[] listFiles;
        if (file != null && file.exists()) {
            j = Math.max(j, file.lastModified());
            int i2 = i + 1;
            if (i2 < 50 && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    j = Math.max(j, dq(file2, j, i2));
                }
            }
        }
        return j;
    }
}
