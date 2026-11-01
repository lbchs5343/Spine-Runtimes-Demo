package ms.bz.bd.c.Pgl;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
public final class pblj {
    public static boolean a(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length <= 0) {
                throw null;
            }
            new File(str2).mkdirs();
            for (String str3 : list) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append((String) pblk.a(16777217, 0, 0L, "f9bfa7", new byte[]{56}));
                sb.append(str3);
                String sb2 = sb.toString();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str2);
                sb3.append((String) pblk.a(16777217, 0, 0L, "23a9b2", new byte[]{108}));
                sb3.append(str3);
                a(context, sb2, sb3.toString());
            }
            return true;
        } catch (Exception unused) {
            pblk.a(16777217, 0, 0L, "1cc9b5", new byte[]{35, 96, 22});
            return false;
        }
    }

    public static void b() {
        boolean z;
        pblb.b(65537, new pblc());
        pblb.b(65538, new pbld());
        pblb.b(65539, new pble());
        pblb.b(65540, new pblf());
        pblb.b(65541, new pblg());
        pblb.b(65542, new pblh());
        pblb.b(65543, new pbli());
        pblp pblpVar = new pblp();
        pblb.b(196609, pblpVar);
        pblb.b(196610, pblpVar);
        pblb.b(196611, pblpVar);
        String[] strArr = {(String) pblk.a(16777217, 0, 0L, "9bef1d", new byte[]{43, 111, 27, 92, 12, 106, 46, 70, 48, 55, 38, 99, 19, 92, 8, 97, 59, 78, 35, 57, 58, 107, 88, 17, 1, 97, 63, 13, 39, 50, 35, 109, 25, 28, 7, 103, 53, 81, 122, 6, 47, 108, 37, 54, 37, 94, 53, 77, 61, 34, 39, 114, 35, 6, 7, Byte.MAX_VALUE, 41})};
        boolean z2 = true;
        for (int i = 0; i < 1; i++) {
            try {
                Class.forName(strArr[i]);
                z = true;
            } catch (Throwable unused) {
                z = false;
            }
            z2 &= z;
            if (!z2) {
                break;
            }
        }
        pblm pblnVar = z2 ? new pbln() : new pbll();
        synchronized (pblm.class) {
            pblm.f21188g = pblnVar;
        }
        pblb.b(131073, pblnVar);
        pblb.b(131074, pblnVar);
        pblk.a(16777217, 0, 0L, "179ca1", new byte[]{37, 35, 79, 25, 74, 10, 61, 17, 69, 50, 46, 52, 77, 18, 76, 102, 49, 26, 105, 32, 51, 117, 67, 4, 30});
    }
}
