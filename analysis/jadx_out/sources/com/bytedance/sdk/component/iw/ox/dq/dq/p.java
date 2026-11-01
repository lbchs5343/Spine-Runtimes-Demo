package com.bytedance.sdk.component.iw.ox.dq.dq;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
final class p {
    static final Charset dq = Charset.forName("US-ASCII");

    /* renamed from: d, reason: collision with root package name */
    static final Charset f1961d = Charset.forName("UTF-8");

    public static void dq(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                dq(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
            }
        }
    }
}
