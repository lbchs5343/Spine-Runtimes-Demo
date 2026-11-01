package com.bytedance.sdk.openadsdk.core.f.dq;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ji extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {
    private j dq;

    private ji(j jVar) {
        this.dq = jVar;
    }

    private int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (MediaFormat.KEY_VIDEO.equals(str)) {
            return 2;
        }
        return "canvas".equals(str) ? 3 : 0;
    }

    private JSONObject dq(JSONObject jSONObject) {
        String optString;
        Bitmap dq;
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            dq(jSONObject2, 1, "params is null");
            return jSONObject2;
        }
        try {
            String optString2 = jSONObject.optString("image");
            optString = jSONObject.optString("type");
            dq = com.bytedance.sdk.component.utils.p.dq(optString2);
        } catch (Throwable unused) {
        }
        if (dq == null) {
            dq(jSONObject2, 1, "imageBase64 to Bitmap error");
            return jSONObject2;
        }
        if (this.dq == null) {
            dq(jSONObject2, 1, "materialMeta is null");
            return jSONObject2;
        }
        Bitmap dq2 = com.bytedance.sdk.component.utils.p.dq(dq, dq.getWidth() / 6, dq.getHeight() / 6);
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        j jVar = this.dq;
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(context, jVar, com.bytedance.sdk.openadsdk.core.ir.c.d(jVar), "playable_show_status", dq2, true, d(optString));
        return jSONObject2;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, j jVar) {
        fwVar.dq("reportPlayableScreenshot", (com.bytedance.sdk.component.dq.s<?, ?>) new ji(jVar));
    }

    private void dq(JSONObject jSONObject, int i, String str) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, i);
            jSONObject.put("codeMsg", str);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        return dq(jSONObject);
    }
}
