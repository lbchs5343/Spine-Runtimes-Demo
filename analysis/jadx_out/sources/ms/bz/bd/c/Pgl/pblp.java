package ms.bz.bd.c.Pgl;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import ms.bz.bd.c.Pgl.pblm;

/* loaded from: classes.dex */
public final class pblp extends pblo {
    public SSLSocketFactory h;

    @Override // ms.bz.bd.c.Pgl.pblo
    public final Object[] e(String str, String str2, String str3) {
        return i(str, null, str2, str3, null, false);
    }

    @Override // ms.bz.bd.c.Pgl.pblo
    public final Object[] f(String str, String str2, String str3) {
        return i(str, null, null, str3, str2, false);
    }

    @Override // ms.bz.bd.c.Pgl.pblo
    public final Object[] g(String str, String str2, String str3, byte[] bArr) {
        pblk.a(16777217, 0, 0L, "0cbdfd", new byte[]{18, 120, 2, 4, 92, 126, 27, 86, 39, 36, 2, 109, 24, 21, 87, 103, 115, 87, 33, 56, 97, 44, 92, 93, 25});
        return i(str, bArr, str2, str3, null, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.io.DataOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.BufferedInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v13, types: [byte[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object[] i(String str, byte[] bArr, String str2, String str3, String str4, boolean z) {
        ?? r13;
        BufferedInputStream bufferedInputStream;
        Object obj = str;
        ?? r3 = str3;
        pblm.pgla pglaVar = new pblm.pgla();
        int i = -1;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            try {
                r13 = (HttpURLConnection) new URL(obj).openConnection();
                if (r13 instanceof HttpsURLConnection) {
                    try {
                        try {
                            if (this.h == null) {
                                synchronized (pblp.class) {
                                    try {
                                        if (this.h == null) {
                                            SSLContext sSLContext = SSLContext.getInstance((String) pblk.a(16777217, 0, 0L, "656469", new byte[]{19, 27, 118}));
                                            sSLContext.init(null, null, null);
                                            this.h = sSLContext.getSocketFactory();
                                        }
                                    } finally {
                                    }
                                }
                            }
                            SSLSocketFactory sSLSocketFactory = this.h;
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) r13).setSSLSocketFactory(sSLSocketFactory);
                            }
                        } catch (Exception unused) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        obj = 0;
                        pblo.c(bufferedInputStream2);
                        pblo.d(obj);
                        if (r13 != 0) {
                            try {
                                r13.disconnect();
                            } catch (Exception unused2) {
                                pblk.a(16777217, 0, 0L, "9f97da", new byte[]{59, 108, 73, 124, 83, 103, 104});
                            }
                        }
                        throw th;
                    }
                }
                try {
                    r13.setConnectTimeout(10000);
                    r13.setReadTimeout(MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                    r13.setRequestProperty((String) pblk.a(16777217, 0, 0L, "98a723", new byte[]{9, 57, 17, 70, 29, 48}), (String) pblk.a(16777217, 0, 0L, "8ff204", new byte[]{99, 43, 95}));
                    r13.setRequestProperty((String) pblk.a(16777217, 0, 0L, "2d2cf9", new byte[]{0, 105, 79, 25, 92, 45, 37, 76, 108, 61}), (String) pblk.a(16777217, 0, 0L, "d86595", new byte[]{94, 63, 64, 81, 75, 3, 107, 16, 113, 96}));
                    r13.setRequestProperty((String) pblk.a(16777217, 0, 0L, "962271", new byte[]{29, 39, 68, 84, 69, 7, 61, 18, 109, 118}), (String) pblk.a(16777217, 0, 0L, "b926d0", new byte[]{81, 34, 85, 71, Byte.MAX_VALUE, 38, 111, 27, 102, 43, 94, 8, 114, 102, 112}));
                    r13.setRequestProperty((String) pblk.a(16777217, 0, 0L, "95dc4a", new byte[]{11, 56, 25, 3, 14, 120, 46, 89, 1, 42, 56, 50}), (String) pblk.a(16777217, 0, 0L, "4ef9db", new byte[]{36, 119, 5, 65, 82, 118, 54, 80, 62, 102, 43, 40, 26, 78, 79, 112, 35, 9, 36, 125, 55, 98, 20, 64}));
                    if (str2 != null && str2.trim().length() > 0) {
                        r13.setRequestProperty((String) pblk.a(16777217, 0, 0L, "ddba59", new byte[]{86, 105, 30, 30, 3, 43}), String.format((String) pblk.a(16777217, 0, 0L, "97c4ee", new byte[]{59, 48, 3, 83, 83, 125, 52, 31, 54, 57, 109, 38}), str2));
                    }
                    if (r3 != 0 && r3.trim().length() > 0) {
                        r13.setRequestProperty((String) pblk.a(16777217, 0, 0L, "94466e", new byte[]{48, 123, 83, 86, 68, 96, 63, 4, 112, 99, 59, 34, 10, 86, 8, 117}), r3);
                    }
                    pglaVar.f21190b = obj;
                    pglaVar.f21189a = System.currentTimeMillis();
                    if (z) {
                        r13.setRequestMethod((String) pblk.a(16777217, 0, 0L, "b2e7ca", new byte[]{67, 31, 37, 119}));
                        r13.setDoOutput(true);
                        obj = new DataOutputStream(r13.getOutputStream());
                        try {
                            obj.write(bArr);
                            obj.flush();
                            obj = obj;
                        } catch (Exception unused3) {
                            r3 = 0;
                            pblk.a(16777217, 0, 0L, "efbc24", new byte[]{103, 108, 18, 40, 5, 50});
                            pglaVar.c(r13 != 0 ? r13.getHeaderField((String) pblk.a(16777217, 0, 0L, "422439", new byte[]{61, 125, 85, 84, 65, 34, 56, 20, 106, 96})) : null, i);
                            pblo.c(r3);
                            pblo.d(obj);
                            if (r13 != 0) {
                            }
                            return new Object[]{String.valueOf(i), bufferedInputStream2};
                        } catch (Throwable th2) {
                            th = th2;
                            pblo.c(bufferedInputStream2);
                            pblo.d(obj);
                            if (r13 != 0) {
                            }
                            throw th;
                        }
                    } else {
                        obj = 0;
                    }
                    i = r13.getResponseCode();
                    pglaVar.d(r13.getHeaderField((String) pblk.a(16777217, 0, 0L, "29ccce", new byte[]{59, 118, 4, 3, 17, 126, 62, 31, 59, 55})), i);
                    if (i == 200) {
                        r3 = new BufferedInputStream(r13.getInputStream());
                        try {
                            OutputStream fileOutputStream = str4 != null ? new FileOutputStream(str4) : new ByteArrayOutputStream();
                            byte[] bArr2 = new byte[256];
                            while (true) {
                                int read = r3.read(bArr2);
                                if (read <= 0) {
                                    break;
                                }
                                fileOutputStream.write(bArr2, 0, read);
                            }
                            fileOutputStream.flush();
                            BufferedInputStream byteArray = fileOutputStream instanceof ByteArrayOutputStream ? ((ByteArrayOutputStream) fileOutputStream).toByteArray() : null;
                            fileOutputStream.close();
                            bufferedInputStream2 = r3;
                            bufferedInputStream = byteArray;
                        } catch (Exception unused4) {
                            pblk.a(16777217, 0, 0L, "efbc24", new byte[]{103, 108, 18, 40, 5, 50});
                            pglaVar.c(r13 != 0 ? r13.getHeaderField((String) pblk.a(16777217, 0, 0L, "422439", new byte[]{61, 125, 85, 84, 65, 34, 56, 20, 106, 96})) : null, i);
                            pblo.c(r3);
                            pblo.d(obj);
                            if (r13 != 0) {
                                try {
                                    r13.disconnect();
                                } catch (Exception unused5) {
                                    pblk.a(16777217, 0, 0L, "a70cb4", new byte[]{99, 61, 64, 40, 85, 50, 48});
                                }
                            }
                            return new Object[]{String.valueOf(i), bufferedInputStream2};
                        }
                    } else {
                        bufferedInputStream = null;
                    }
                    pblo.c(bufferedInputStream2);
                    pblo.d(obj);
                    try {
                        r13.disconnect();
                    } catch (Exception unused6) {
                        pblk.a(16777217, 0, 0L, "7b8c23", new byte[]{53, 104, 72, 40, 5, 53, 102});
                    }
                    bufferedInputStream2 = bufferedInputStream;
                } catch (Exception unused7) {
                    obj = 0;
                    r3 = 0;
                    pblk.a(16777217, 0, 0L, "efbc24", new byte[]{103, 108, 18, 40, 5, 50});
                    pglaVar.c(r13 != 0 ? r13.getHeaderField((String) pblk.a(16777217, 0, 0L, "422439", new byte[]{61, 125, 85, 84, 65, 34, 56, 20, 106, 96})) : null, i);
                    pblo.c(r3);
                    pblo.d(obj);
                    if (r13 != 0) {
                    }
                    return new Object[]{String.valueOf(i), bufferedInputStream2};
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj;
                bufferedInputStream2 = r3;
            }
        } catch (Exception unused8) {
            r13 = 0;
        } catch (Throwable th4) {
            th = th4;
            r13 = 0;
        }
        return new Object[]{String.valueOf(i), bufferedInputStream2};
    }
}
