package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o {
    public static String dq(com.bytedance.sdk.component.adexpress.ox oxVar) {
        JSONObject dq;
        if (!(oxVar instanceof k) || (dq = ((k) oxVar).dq()) == null) {
            return null;
        }
        return dq.optString("ugen_id");
    }

    public static void dq(j jVar, boolean z, String str, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("area_type", z ? 1 : 2);
            jSONObject.put("style_type", i);
            jSONObject.put("style_id", str);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, "easy_play_click", jSONObject);
    }

    public static void dq(j jVar, boolean z, String str, int i, Map<String, Object> map) {
        JSONObject dq = c.dq(map);
        if (dq == null) {
            dq = new JSONObject();
        }
        try {
            dq.put("success", z ? 1 : 0);
            dq.put("style_type", i);
            dq.put("style_id", str);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, "easy_play_show", dq);
    }

    private static boolean dq(int i, int i2, int i3, int i4, float f2, float f3) {
        return f2 >= ((float) i) && f2 <= ((float) (i3 + i)) && f3 >= ((float) i2) && f3 <= ((float) (i4 + i2));
    }

    public static boolean dq(View view, com.bytedance.sdk.component.adexpress.ox oxVar) {
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            int width = view.getWidth();
            int height = view.getHeight();
            if (oxVar instanceof k) {
                k kVar = (k) oxVar;
                return dq(i, i2, width, height, kVar.dq, kVar.f3469d);
            }
        }
        return false;
    }
}
