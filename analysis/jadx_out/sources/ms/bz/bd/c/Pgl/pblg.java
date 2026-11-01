package ms.bz.bd.c.Pgl;

import android.content.res.AssetManager;
import g.awf;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class pblg extends pblb.pgla {
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj, String str) {
        InputStream inputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        String str2 = str;
        AssetManager assets = pgla.f21199a.f21200b.getAssets();
        if (!str2.startsWith((String) pblk.a(16777217, 0, 0L, "e4d5bf", new byte[]{58}))) {
            str2 = awf.ad(new StringBuilder(), (String) pblk.a(16777217, 0, 0L, "40e592", new byte[]{107}), str2);
        }
        String str3 = str2;
        String[] list = assets.list("");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.length; i++) {
            if (list[i].endsWith(str3)) {
                String str4 = list[i];
                String absolutePath = File.createTempFile((String) pblk.a(16777217, 0, 0L, "0cf58a", new byte[]{44, 114, 16, 89, 19}), "").getAbsolutePath();
                FileOutputStream fileOutputStream2 = null;
                try {
                    inputStream = assets.open(str4);
                    try {
                        try {
                            fileOutputStream = new FileOutputStream(absolutePath);
                        } catch (Throwable th2) {
                            th = th2;
                            th = th;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                            if (fileOutputStream2 != null) {
                                throw th;
                            }
                            try {
                                fileOutputStream2.close();
                                throw th;
                            } catch (IOException e3) {
                                e3.printStackTrace();
                                throw th;
                            }
                        }
                    } catch (IOException e4) {
                        e = e4;
                    }
                    try {
                        byte[] bArr = new byte[256];
                        long j = 0;
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                            j += read;
                        }
                        fileOutputStream.flush();
                        if (j > 0) {
                            arrayList.add(absolutePath);
                        }
                    } catch (IOException e5) {
                        e = e5;
                        fileOutputStream2 = fileOutputStream;
                        e.printStackTrace();
                        fileOutputStream = fileOutputStream2;
                        if (inputStream != null) {
                        }
                        if (fileOutputStream == null) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream2 = fileOutputStream;
                        if (inputStream != null) {
                        }
                        if (fileOutputStream2 != null) {
                        }
                    }
                } catch (IOException e6) {
                    e = e6;
                    inputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream = null;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                if (fileOutputStream == null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
            }
        }
        return arrayList.toArray(new String[0]);
    }
}
