package ms.bz.bd.c.Pgl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class l1 {

    /* renamed from: a, reason: collision with root package name */
    public static final String f21167a;

    static {
        pblk.a(16777217, 0, 0L, "ca18e2", new byte[]{73, 63, 3, 18, 103});
        f21167a = (String) pblk.a(16777217, 0, 0L, "8aaef7", new byte[]{61, 119, 45, 31, 93});
    }

    public static String b(BufferedInputStream bufferedInputStream) {
        int read;
        byte[] bArr = new byte[4096];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    sb.append(new String(bArr, 0, read));
                }
            } catch (Exception unused) {
                pblk.a(16777217, 0, 0L, "88faf4", new byte[]{44, 51, 22});
            }
        } while (read >= 4096);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cb, code lost:
    
        if (r3 == null) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String c(String str) {
        Process process;
        Process process2;
        BufferedInputStream bufferedInputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream2;
        BufferedOutputStream bufferedOutputStream2 = null;
        r2 = null;
        String str2 = null;
        BufferedInputStream bufferedInputStream3 = null;
        try {
            process = Runtime.getRuntime().exec((String) pblk.a(16777217, 0, 0L, "8dabd4", new byte[]{58, 110}));
            try {
                bufferedOutputStream = new BufferedOutputStream(process.getOutputStream());
            } catch (Exception unused) {
                bufferedOutputStream = null;
                bufferedInputStream2 = null;
                pblk.a(16777217, 0, 0L, "189a12", new byte[]{37, 51, 73, 42, 11});
                if (bufferedOutputStream != null) {
                }
                if (bufferedInputStream2 != null) {
                }
            } catch (Throwable th) {
                th = th;
                process2 = process;
                bufferedInputStream = null;
                if (bufferedOutputStream2 != null) {
                }
                if (bufferedInputStream != null) {
                }
                if (process2 == null) {
                }
            }
        } catch (Exception unused2) {
            process = null;
        } catch (Throwable th2) {
            th = th2;
            process = null;
        }
        try {
            bufferedInputStream2 = new BufferedInputStream(process.getInputStream());
            try {
                try {
                    bufferedOutputStream.write(str.getBytes());
                    bufferedOutputStream.write(10);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    process.waitFor();
                    str2 = b(bufferedInputStream2);
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException unused3) {
                        pblk.a(16777217, 0, 0L, "0cecbf", new byte[]{36, 104, 21, 40, 88});
                    }
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused4) {
                        pblk.a(16777217, 0, 0L, "9e72b0", new byte[]{45, 110, 71, 121, 88});
                    }
                } catch (Exception unused5) {
                    pblk.a(16777217, 0, 0L, "189a12", new byte[]{37, 51, 73, 42, 11});
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused6) {
                            pblk.a(16777217, 0, 0L, "f34770", new byte[]{114, 56, 68, 124, 13});
                        }
                    }
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException unused7) {
                            pblk.a(16777217, 0, 0L, "d89fec", new byte[]{112, 51, 73, 45, 95});
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream3 = bufferedInputStream2;
                Process process3 = process;
                bufferedInputStream = bufferedInputStream3;
                bufferedOutputStream2 = bufferedOutputStream;
                process2 = process3;
                if (bufferedOutputStream2 != null) {
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException unused8) {
                        pblk.a(16777217, 0, 0L, "fb26ec", new byte[]{114, 105, 66, 125, 95});
                    }
                }
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused9) {
                        pblk.a(16777217, 0, 0L, "0a4c18", new byte[]{36, 106, 68, 40, 11});
                    }
                }
                if (process2 == null) {
                    throw th;
                }
                process2.destroy();
                throw th;
            }
        } catch (Exception unused10) {
            bufferedInputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            Process process32 = process;
            bufferedInputStream = bufferedInputStream3;
            bufferedOutputStream2 = bufferedOutputStream;
            process2 = process32;
            if (bufferedOutputStream2 != null) {
            }
            if (bufferedInputStream != null) {
            }
            if (process2 == null) {
            }
        }
        process.destroy();
        return str2;
    }
}
