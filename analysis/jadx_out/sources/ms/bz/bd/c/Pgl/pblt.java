package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import g.awf;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.zip.ZipFile;
import ms.bz.bd.c.Pgl.pblr;

/* loaded from: classes.dex */
public class pblt {

    public interface pblb {
    }

    public interface pblc {
    }

    public interface pgla {
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c5, code lost:
    
        if (r0.createNewFile() != false) goto L130;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Context context) {
        boolean z;
        pblr.pgla pglaVar;
        pblr.pgla b2;
        String[] strArr;
        int i;
        int i2;
        int i3;
        InputStream inputStream;
        Closeable closeable;
        Closeable closeable2;
        pblu pbluVar = new pblu(new pblw(), new pblr());
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if ("Pglbizssdk_ml".length() == 0) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        Locale locale = Locale.US;
        pblb pblbVar = pbluVar.f21194b;
        HashSet hashSet = pbluVar.f21193a;
        if (hashSet.contains("Pglbizssdk_ml")) {
            return;
        }
        try {
            if (((pblw) pblbVar) == null) {
                throw null;
            }
            System.loadLibrary("Pglbizssdk_ml");
            hashSet.add("Pglbizssdk_ml");
            return;
        } catch (UnsatisfiedLinkError e2) {
            Log.getStackTraceString(e2);
            Locale locale2 = Locale.US;
            File d2 = pbluVar.d(context);
            if (!d2.exists()) {
                z = false;
                File dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, "lib", 0);
                File d3 = pbluVar.d(context);
                ((pblw) pblbVar).getClass();
                File[] listFiles = dq.listFiles(new pblv(System.mapLibraryName("Pglbizssdk_ml")));
                if (listFiles != null) {
                    for (File file : listFiles) {
                        if (!file.getAbsolutePath().equals(d3.getAbsolutePath())) {
                            file.delete();
                        }
                    }
                }
                String[] strArr2 = Build.SUPPORTED_ABIS;
                if (strArr2.length <= 0) {
                    String str = Build.CPU_ABI2;
                    strArr2 = (str == null || str.length() == 0) ? new String[]{Build.CPU_ABI} : new String[]{Build.CPU_ABI, str};
                }
                String mapLibraryName = System.mapLibraryName("Pglbizssdk_ml");
                pbluVar.f21195c.getClass();
                try {
                    b2 = pblr.b(context, strArr2, mapLibraryName, pbluVar);
                } catch (Throwable th) {
                    th = th;
                    pglaVar = null;
                }
                try {
                    if (b2 == null) {
                        try {
                            strArr = pblr.a(context, mapLibraryName);
                        } catch (Exception e3) {
                            strArr = new String[]{e3.toString()};
                        }
                        StringBuilder p = awf.p("Could not find '", mapLibraryName, "'. Looked for: ");
                        p.append(Arrays.toString(strArr2));
                        p.append(", but only found: ");
                        throw new pbls(awf.ad(p, Arrays.toString(strArr), "."));
                    }
                    ZipFile zipFile = b2.f21191a;
                    i = 0;
                    while (true) {
                        i2 = i + 1;
                        try {
                            if (i < 5) {
                                Locale locale3 = Locale.US;
                                try {
                                    if (!d2.exists()) {
                                    }
                                } catch (IOException unused) {
                                    i3 = i2;
                                }
                                try {
                                    inputStream = zipFile.getInputStream(b2.f21192b);
                                    try {
                                        FileOutputStream fileOutputStream = new FileOutputStream(d2);
                                        try {
                                            try {
                                                byte[] bArr = new byte[4096];
                                                long j = 0;
                                                ?? r8 = z;
                                                while (true) {
                                                    int read = inputStream.read(bArr);
                                                    if (read == -1) {
                                                        break;
                                                    }
                                                    fileOutputStream.write(bArr, r8, read);
                                                    j += read;
                                                    i2 = i2;
                                                    r8 = 0;
                                                }
                                                fileOutputStream.flush();
                                                fileOutputStream.getFD().sync();
                                                if (j == d2.length()) {
                                                    pblr.c(inputStream);
                                                    pblr.c(fileOutputStream);
                                                    d2.setReadable(true, r8);
                                                    d2.setExecutable(true, r8);
                                                    d2.setWritable(true);
                                                    zipFile.close();
                                                    break;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                closeable = fileOutputStream;
                                                pblr.c(inputStream);
                                                pblr.c(closeable);
                                                throw th;
                                            }
                                        } catch (FileNotFoundException | IOException unused2) {
                                        }
                                        i3 = i2;
                                        closeable2 = fileOutputStream;
                                    } catch (FileNotFoundException | IOException unused3) {
                                        i3 = i2;
                                        closeable2 = null;
                                        pblr.c(inputStream);
                                        pblr.c(closeable2);
                                        i = i3;
                                        z = false;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        closeable = null;
                                        pblr.c(inputStream);
                                        pblr.c(closeable);
                                        throw th;
                                    }
                                } catch (FileNotFoundException unused4) {
                                    i3 = i2;
                                    inputStream = null;
                                    closeable2 = null;
                                    pblr.c(inputStream);
                                    pblr.c(closeable2);
                                    i = i3;
                                    z = false;
                                } catch (IOException unused5) {
                                    i3 = i2;
                                    inputStream = null;
                                    closeable2 = null;
                                    pblr.c(inputStream);
                                    pblr.c(closeable2);
                                    i = i3;
                                    z = false;
                                } catch (Throwable th4) {
                                    th = th4;
                                    inputStream = null;
                                }
                                pblr.c(inputStream);
                                pblr.c(closeable2);
                                i = i3;
                                z = false;
                            } else if (zipFile != null) {
                                zipFile.close();
                            }
                        } catch (IOException unused6) {
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    pglaVar = b2;
                    if (pglaVar != null) {
                        try {
                            ZipFile zipFile2 = pglaVar.f21191a;
                            if (zipFile2 != null) {
                                zipFile2.close();
                            }
                        } catch (IOException unused7) {
                        }
                    }
                    throw th;
                }
            }
            String absolutePath = d2.getAbsolutePath();
            ((pblw) pblbVar).getClass();
            System.load(absolutePath);
            hashSet.add("Pglbizssdk_ml");
            Locale locale4 = Locale.US;
            return;
        }
        i3 = i2;
        i = i3;
        z = false;
    }
}
