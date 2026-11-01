package ms.bz.bd.c.Pgl;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import java.lang.reflect.Method;
import java.util.List;
import ms.bz.bd.c.Pgl.pblb;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class f0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Context context = pgla.f21199a.f21200b;
        JSONArray jSONArray = new JSONArray();
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService((String) pblk.a(16777217, 0, 0L, "cd5a9e", new byte[]{115, 101, 69, 16, 21, 97, 105, 71, 109, 61, 123, 114, 95}));
        if (accessibilityManager != null) {
            List<AccessibilityServiceInfo> list = null;
            try {
                Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod((String) pblk.a(16777217, 0, 0L, "764feb", new byte[]{33, 49, 83, 59, 84, 102, 32, 22, 105, 58, 35, 48, 102, 17, 89, 112, 39, 4, 108, 52, 47, 56, 78, 6, 67, 70, 49, 5, 115, 63, 37, 49, 107, 27, 73, 97}), null);
                if (declaredMethod != null) {
                    list = (List) declaredMethod.invoke(accessibilityManager, null);
                }
            } catch (Throwable unused) {
            }
            if (list == null || list.size() == 0) {
                return jSONArray.toString();
            }
            for (AccessibilityServiceInfo accessibilityServiceInfo : list) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put((String) pblk.a(16777217, 0, 0L, "eb1f67", new byte[]{113, 118}), accessibilityServiceInfo.eventTypes);
                    jSONObject.put((String) pblk.a(16777217, 0, 0L, "52b518", new byte[]{45, 52}), accessibilityServiceInfo.getId());
                    jSONArray.put(jSONObject);
                } catch (Throwable unused2) {
                }
            }
        }
        return jSONArray.toString();
    }
}
