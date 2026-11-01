package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.SharedPreferences;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class s extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Context context = pgla.f21199a.f21200b;
        String[] split = str.split((String) pblk.a(16777217, 0, 0L, "2263f0", new byte[]{31, 44}));
        String str2 = split[0];
        String str3 = split[1];
        SharedPreferences.Editor edit = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, str2, 0).edit();
        edit.putString(str3, (String) obj);
        edit.commit();
        return null;
    }
}
