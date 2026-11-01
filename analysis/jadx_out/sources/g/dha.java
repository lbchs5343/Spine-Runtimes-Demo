package g;

import java.io.File;

/* loaded from: classes.dex */
public abstract class dha {
    public static void a(cms cmsVar) {
        try {
            File file = new File(acw.af(cmsVar) + File.separator + abn.EXTRA_SOURCE);
            if (file.exists()) {
                File file2 = new File(file, ".nomedia");
                if (byh.r(cmsVar, "decompile_allow_media_scan", false)) {
                    if (file2.exists()) {
                        file2.delete();
                    }
                } else {
                    if (file2.exists()) {
                        return;
                    }
                    file2.createNewFile();
                }
            }
        } catch (Exception unused) {
        }
    }
}
