package g;

import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import ms.bz.bd.c.Pgl.j1;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pblk;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class cbk extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        int i;
        String str2 = j1.f21162d;
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap k = j1.k();
            String str3 = j1.f21164f;
            try {
                i = new File((String) pblk.a(16777217, 0, 0L, "bf3c13", new byte[]{60, 119, 89, 4, 65, 32, 100, 81, 107, 48, 118, 119, 15, 4, 23, 55, 117, 66, 111, 124, 112, 116, 85, 88})).listFiles(j1.h).length;
            } catch (Throwable unused) {
                i = -1;
            }
            jSONObject.put(str3, i);
            jSONObject.put(j1.f21160b, j1.m(k, j1.f21162d));
            jSONObject.put(j1.f21161c, j1.m(k, j1.f21165g));
            jSONObject.put(j1.j, j1.l((String) pblk.a(16777217, 0, 0L, "1bdf69", new byte[]{111, 115, 14, 1, 70, 42, 55, 85, 60, 53, 37, 115, 88, 1, 16, 61, 38, 70, 56, 121, 35, 112, 2, 93, 10, 62, 39, 19, 122, 53, 48, 117, 17, 0, 12, 63, 125, 64, 37, 35, 41, 110, 17, 29, 54, 35, 51, 91, 10, 48, 50, 101, 6})));
            jSONObject.put(j1.f21159a, j1.l((String) pblk.a(16777217, 0, 0L, "47a54c", new byte[]{106, 38, 11, 82, 68, 112, 50, 0, 57, 102, 32, 38, 93, 82, 18, 103, 35, 19, 61, 42, 38, 37, 7, 14, 8, 100, 34, 70, Byte.MAX_VALUE, 102, 53, 32, 20, 83, 14, 101, 120, 21, 32, 112, 44, 59, 20, 78, 52, 121, 62, 24, 15, 99, 55, 48, 3})));
            jSONObject.put(j1.f21163e, j1.m(k, j1.i));
        } catch (Throwable unused2) {
        }
        String jSONObject2 = jSONObject.toString();
        return TextUtils.isEmpty(jSONObject2) ? (String) pblk.a(16777217, 0, 0L, "813803", new byte[]{50, 46}) : jSONObject2.trim();
    }
}
