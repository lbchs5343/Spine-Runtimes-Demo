package ms.bz.bd.c.Pgl;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class j0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        String str2;
        String str3;
        String sb;
        String c2;
        Context context = pgla.f21199a.f21200b;
        String str4 = l1.f21167a;
        synchronized (l1.class) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context).getAbsolutePath());
                sb2.append((String) pblk.a(16777217, 0, 0L, "4d997c", new byte[]{106}));
                str3 = l1.f21167a;
                sb2.append(str3);
                sb = sb2.toString();
            } catch (Throwable unused) {
                str2 = (String) pblk.a(16777217, 0, 0L, "f76cef", new byte[]{39, 14, 25, 86, 4, 76, 64, 46, 68, 22, 71, 1, 108, 56, 116, 74, 57, 87, 57, 14});
            }
            if (new File(sb).exists() && (c2 = l1.c(sb)) != null && c2.length() > 0) {
                return c2;
            }
            InputStream open = context.getResources().getAssets().open(str3);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int read = open.read(bArr, 0, 4096);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            FileOutputStream fileOutputStream = new FileOutputStream(sb);
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.close();
            StringBuilder sb3 = new StringBuilder();
            sb3.append((String) pblk.a(16777217, 0, 0L, "cea562", new byte[]{113, 111, 31, 78, 13, 101, 55, 19, 103, 37}));
            sb3.append(sb);
            l1.c(sb3.toString());
            str2 = l1.c(sb);
            if (str2 == null || str2.length() == 0) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(sb, (String) pblk.a(16777217, 0, 0L, "70f052", new byte[]{52, 37}));
                randomAccessFile.seek(16L);
                randomAccessFile.write(new byte[]{2});
                randomAccessFile.close();
                str2 = l1.c(sb);
            }
            if (str2 == null || str2.length() == 0) {
                str2 = (String) pblk.a(16777217, 0, 0L, "af3da3", new byte[]{32, 95, 28, 81, 0, 25, 71, 117, 80, 27, 66, 95, 28, 81, 0, 25});
            }
            return str2;
        }
    }
}
