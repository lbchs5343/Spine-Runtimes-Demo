package com.bytedance.sdk.openadsdk.ig.dq;

import com.ss.android.download.api.constant.BaseConstants;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class dq {
    private static final byte[] dq = {71, 73, 70, 56, 55, 97};

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f3770d = {71, 73, 70, 56, 57, 97};
    private static final byte[] ox = {-1, -40, -1};
    private static final byte[] p = {-119, 80, 78, 71, 13, 10, 26, 10};

    public static void d(String str) throws Exception {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            for (int i = 0; i < length; i++) {
                if (listFiles[i].isDirectory()) {
                    d(listFiles[i].getAbsolutePath());
                } else {
                    listFiles[i].delete();
                }
            }
            file.delete();
        }
    }

    private static long dq(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int read = inputStream.read(bArr);
        long j = 0;
        while (read >= 0) {
            outputStream.write(bArr, 0, read);
            j += read;
            read = inputStream.read(bArr);
        }
        return j;
    }

    public static boolean dq(InputStream inputStream, String str, String str2, long j) {
        File file;
        File file2;
        if (inputStream == null) {
            return false;
        }
        long j2 = j != -2147483648L ? j * BaseConstants.MB_VALUE : 1099511627776L;
        FileOutputStream fileOutputStream = null;
        long j3 = 0;
        try {
            File file3 = new File(str);
            if (!file3.exists() && !file3.mkdirs()) {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return false;
            }
            file2 = new File(file3, str2);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                        j3 += read;
                    }
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    inputStream.close();
                    try {
                        inputStream.close();
                        if (j == -2147483648L || j3 <= j2) {
                            return true;
                        }
                        file2.delete();
                        return false;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return true;
                    }
                } catch (Exception unused) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    try {
                        inputStream.close();
                        if (j != -2147483648L && j3 > j2 && file2 != null) {
                            file2.delete();
                            return false;
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    return false;
                } catch (Throwable th) {
                    file = file2;
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                    try {
                        inputStream.close();
                        if (j == -2147483648L) {
                            throw th;
                        }
                        if (j3 <= j2) {
                            throw th;
                        }
                        if (file == null) {
                            throw th;
                        }
                        file.delete();
                        return false;
                    } catch (Exception e7) {
                        e7.printStackTrace();
                        throw th;
                    }
                }
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                file = file2;
                th = th2;
            }
        } catch (Exception unused3) {
            file2 = null;
        } catch (Throwable th3) {
            th = th3;
            file = null;
        }
    }

    public static byte[] dq(InputStream inputStream) {
        if (inputStream == null) {
            return new byte[0];
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                dq(bufferedInputStream, byteArrayOutputStream, 2048);
                return byteArrayOutputStream.toByteArray();
            } finally {
                try {
                    bufferedInputStream.close();
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            try {
                bufferedInputStream.close();
                byteArrayOutputStream.close();
            } catch (Exception unused2) {
            }
            return new byte[0];
        }
    }

    public static byte[] dq(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        try {
            return dq(new FileInputStream(file));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
