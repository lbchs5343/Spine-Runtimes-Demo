package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import g.awf;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: com.bytedance.sdk.component.utils.iw$1, reason: invalid class name */
    public static class AnonymousClass1 implements Comparator<File> {
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long lastModified = file2.lastModified() - file.lastModified();
            if (lastModified == 0) {
                return 0;
            }
            return lastModified < 0 ? -1 : 1;
        }
    }

    public static final class dq implements Comparator<File> {
        private dq() {
        }

        public /* synthetic */ dq(AnonymousClass1 anonymousClass1) {
            this();
        }

        private int dq(long j, long j2) {
            if (j < j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        }

        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return dq(file.lastModified(), file2.lastModified());
        }
    }

    public static File d(Context context, boolean z, String str) {
        String absolutePath = com.bytedance.sdk.openadsdk.api.plugin.d.d(context).getAbsolutePath();
        if (z) {
            str = dq(context) + "-" + str;
        }
        if (absolutePath != null) {
            String str2 = File.separator;
            if (!absolutePath.endsWith(str2)) {
                absolutePath = awf.c(absolutePath, str2);
            }
        }
        File file = new File(awf.c(absolutePath, str));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File d(Context context, boolean z, String str, String str2) {
        String ox = ox(context);
        if (z) {
            str = dq(context) + "-" + str;
        }
        if (ox != null) {
            String str3 = File.separator;
            if (!ox.endsWith(str3)) {
                ox = awf.c(ox, str3);
            }
        }
        String c2 = awf.c(ox, str);
        File file = new File(c2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(c2, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        if (android.os.Environment.isExternalStorageRemovable() == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String d(Context context) {
        File file;
        if (context == null) {
            return null;
        }
        boolean z = false;
        try {
            if (!"mounted".equals(Environment.getExternalStorageState())) {
            }
            z = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (z) {
            try {
                file = com.bytedance.sdk.openadsdk.api.plugin.d.ox(context);
            } catch (Throwable unused) {
                file = null;
            }
        } else {
            file = null;
        }
        if (file == null) {
            try {
                file = com.bytedance.sdk.openadsdk.api.plugin.d.d(context);
            } catch (Throwable unused2) {
            }
        }
        if (file == null) {
            return null;
        }
        return file.getPath();
    }

    public static void d(File file) throws IOException {
        if (file.exists()) {
            ig.p("splashLoadAd", "update file modify time");
            long currentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(currentTimeMillis)) {
                return;
            }
            s(file);
            if (file.lastModified() < currentTimeMillis) {
                ig.d("Files", "Last modified date " + new Date(file.lastModified()) + " is not set for file " + file.getAbsolutePath());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static File dq(Context context, boolean z, String str) {
        String str2;
        File file;
        String d2 = d(context);
        if (z) {
            str = dq(context) + "-" + str;
        }
        if (d2 != null) {
            String str3 = File.separator;
            if (!d2.endsWith(str3)) {
                str2 = awf.c(d2, str3);
                file = new File(awf.c(str2, str));
                if (!file.exists()) {
                    file.mkdirs();
                }
                return file;
            }
        }
        str2 = "";
        file = new File(awf.c(str2, str));
        if (!file.exists()) {
        }
        return file;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static File dq(Context context, boolean z, String str, String str2) {
        String concat;
        String str3;
        File file;
        String d2 = d(context);
        if (z) {
            concat = dq(context) + "-" + str;
        } else {
            concat = "/".concat(String.valueOf(str));
        }
        if (d2 != null) {
            String str4 = File.separator;
            if (!d2.endsWith(str4)) {
                str3 = awf.c(d2, str4);
                String c2 = awf.c(str3, concat);
                file = new File(c2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                return new File(c2, str2);
            }
        }
        str3 = "";
        String c22 = awf.c(str3, concat);
        file = new File(c22);
        if (!file.exists()) {
        }
        return new File(c22, str2);
    }

    public static String dq(Context context) {
        String dq2 = cd.dq(context);
        return (TextUtils.isEmpty(dq2) || !dq2.contains(":")) ? dq2 : dq2.replace(":", "-");
    }

    public static List<File> dq(File file) {
        LinkedList linkedList = new LinkedList();
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return linkedList;
        }
        List<File> asList = Arrays.asList(listFiles);
        Collections.sort(asList, new dq(null));
        return asList;
    }

    private static void iw(File file) throws IOException {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file ".concat(String.valueOf(file)));
        }
    }

    private static String ox(Context context) {
        File d2;
        if (context == null || (d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(context)) == null) {
            return null;
        }
        return d2.getPath();
    }

    public static void ox(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        try {
            if (file.isFile()) {
                file.delete();
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        ox(file2);
                    } else {
                        try {
                            file2.delete();
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
            file.delete();
        } catch (Throwable unused2) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        if (r4 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] p(File file) {
        FileInputStream fileInputStream;
        if (file != null && file.isFile() && file.exists() && file.canRead() && file.length() > 0) {
            try {
                long length = file.length();
                Long valueOf = Long.valueOf(length);
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[valueOf.intValue()];
                    if (fileInputStream.read(bArr) == length) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable unused) {
                        }
                        return bArr;
                    }
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                fileInputStream = null;
            }
            try {
                fileInputStream.close();
            } catch (Throwable unused4) {
            }
        }
        return null;
    }

    private static void s(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        long length = file.length();
        if (length == 0) {
            iw(file);
            return;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "rwd");
            long j = length - 1;
            try {
                randomAccessFile.seek(j);
                byte readByte = randomAccessFile.readByte();
                randomAccessFile.seek(j);
                randomAccessFile.write(readByte);
                randomAccessFile.close();
            } catch (Throwable unused) {
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            }
        } catch (Throwable unused2) {
            randomAccessFile = null;
        }
    }
}
