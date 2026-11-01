package com.bytedance.pangle.e;

import android.os.Build;
import com.bytedance.pangle.e.f;
import com.bytedance.pangle.log.ZeusLogger;
import g.awf;
import g.tn;
import java.io.File;

/* loaded from: classes.dex */
public final class d implements f.a {
    private static boolean a(String str, String str2) {
        try {
            return a.a(b.a(str, str2, b.f1367b));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.bytedance.pangle.e.f.a
    public final boolean a(String str, int i) {
        String b2 = com.bytedance.pangle.d.c.b(str, i);
        ZeusLogger.d(ZeusLogger.TAG_INSTALL, "full DexOpt:".concat(String.valueOf(b2)));
        String c2 = com.bytedance.pangle.d.c.c(str, i);
        StringBuilder o = awf.o(c2);
        String str2 = File.separator;
        o.append(str2);
        o.append("compFully");
        o.append(b.b(b2));
        String sb = o.toString();
        StringBuilder l = tn.l(c2, str2);
        l.append(b.a(b2));
        String sb2 = l.toString();
        if (!a(b2, sb)) {
            return false;
        }
        File file = new File(sb);
        if (file.exists()) {
            file.renameTo(new File(sb2));
        }
        String str3 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        File file2 = new File(sb.replace(str3, ".vdex"));
        if (file2.exists()) {
            file2.renameTo(new File(sb2.replace(str3, ".vdex")));
        }
        boolean a2 = b.a(sb2);
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "full DexOpt result:".concat(String.valueOf(a2)));
        return a2;
    }
}
