package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.ekq;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class gh {
    private Map<String, dq> dq;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private int f3226d;
        private int dq;

        public dq() {
        }

        public dq(int i, int i2) {
            this.dq = i;
            this.f3226d = i2;
        }

        public int d() {
            return this.f3226d;
        }

        public int dq() {
            return this.dq;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: JSONException -> 0x0051, NumberFormatException -> 0x0054, TryCatch #4 {NumberFormatException -> 0x0054, JSONException -> 0x0051, blocks: (B:23:0x0048, B:26:0x0059, B:29:0x006c, B:31:0x0078, B:33:0x0083, B:36:0x0098, B:37:0x00a1, B:40:0x008c), top: B:22:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083 A[Catch: JSONException -> 0x0051, NumberFormatException -> 0x0054, TryCatch #4 {NumberFormatException -> 0x0054, JSONException -> 0x0051, blocks: (B:23:0x0048, B:26:0x0059, B:29:0x006c, B:31:0x0078, B:33:0x0083, B:36:0x0098, B:37:0x00a1, B:40:0x008c), top: B:22:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0098 A[Catch: JSONException -> 0x0051, NumberFormatException -> 0x0054, TryCatch #4 {NumberFormatException -> 0x0054, JSONException -> 0x0051, blocks: (B:23:0x0048, B:26:0x0059, B:29:0x006c, B:31:0x0078, B:33:0x0083, B:36:0x0098, B:37:0x00a1, B:40:0x008c), top: B:22:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c A[Catch: JSONException -> 0x0051, NumberFormatException -> 0x0054, TryCatch #4 {NumberFormatException -> 0x0054, JSONException -> 0x0051, blocks: (B:23:0x0048, B:26:0x0059, B:29:0x006c, B:31:0x0078, B:33:0x0083, B:36:0x0098, B:37:0x00a1, B:40:0x008c), top: B:22:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int dq(boolean z) {
        float f2;
        int i = 0;
        if (!com.bytedance.sdk.openadsdk.core.wp.d().jn()) {
            return 0;
        }
        double d2 = 0.0d;
        try {
            String dq2 = com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("DeviceRate", "bytebench_value");
            if (!TextUtils.isEmpty(dq2)) {
                double parseDouble = Double.parseDouble(dq2);
                if (parseDouble >= 0.0d) {
                    try {
                        if (parseDouble < com.bytedance.sdk.openadsdk.core.wp.d().wq()) {
                            i = com.bytedance.sdk.openadsdk.core.wp.d().jv();
                        }
                    } catch (NumberFormatException e2) {
                        e = e2;
                        d2 = parseDouble;
                        e.printStackTrace();
                        int parseInt = Integer.parseInt(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", !z ? "h5_render_success" : "native_render_success"));
                        int parseInt2 = Integer.parseInt(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", !z ? "h5_render_fail" : "native_render_fail"));
                        int i2 = parseInt + parseInt2;
                        if (i2 <= 0) {
                        }
                        if (f2 >= (!z ? com.bytedance.sdk.openadsdk.core.wp.d().w() : com.bytedance.sdk.openadsdk.core.wp.d().y())) {
                        }
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("isH5", z);
                        jSONObject.put("bytebenchScore", d2);
                        jSONObject.put("successCount", parseInt);
                        jSONObject.put("failCount", parseInt2);
                        jSONObject.put("errorRate", f2);
                        jSONObject.put(ekq.EXTRA_PERMISSION_RESULT, i);
                        com.bytedance.sdk.openadsdk.core.gh.ig.dq().iw(jSONObject);
                        return i;
                    }
                }
                d2 = parseDouble;
            }
        } catch (NumberFormatException e3) {
            e = e3;
        }
        try {
            int parseInt3 = Integer.parseInt(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", !z ? "h5_render_success" : "native_render_success"));
            int parseInt22 = Integer.parseInt(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", !z ? "h5_render_fail" : "native_render_fail"));
            int i22 = parseInt3 + parseInt22;
            f2 = i22 <= 0 ? (parseInt22 / i22) * 100.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            if (f2 >= (!z ? com.bytedance.sdk.openadsdk.core.wp.d().w() : com.bytedance.sdk.openadsdk.core.wp.d().y())) {
                i += com.bytedance.sdk.openadsdk.core.wp.d().jv();
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("isH5", z);
            jSONObject2.put("bytebenchScore", d2);
            jSONObject2.put("successCount", parseInt3);
            jSONObject2.put("failCount", parseInt22);
            jSONObject2.put("errorRate", f2);
            jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, i);
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().iw(jSONObject2);
        } catch (NumberFormatException e4) {
            e = e4;
            e.printStackTrace();
            return i;
        } catch (JSONException e5) {
            e = e5;
            e.printStackTrace();
            return i;
        }
        return i;
    }

    public static gh ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        gh ghVar = new gh();
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray optJSONArray = jSONObject.optJSONArray(next);
                if (optJSONArray != null && optJSONArray.length() == 2) {
                    hashMap.put(next, new dq(optJSONArray.optInt(0), optJSONArray.optInt(1)));
                }
            }
            ghVar.dq(hashMap);
            return ghVar;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return ghVar;
        }
    }

    public int d(String str) {
        int dq2 = dq(false);
        Map<String, dq> map = this.dq;
        if (map != null && map.containsKey(str)) {
            dq dqVar = this.dq.get(str);
            dq2 = dqVar != null ? dq2 + dqVar.d() : dq2 + MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        }
        return dq2 + MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
    }

    public int dq(String str) {
        int dq2 = dq(true);
        Map<String, dq> map = this.dq;
        if (map != null && map.containsKey(str)) {
            dq dqVar = this.dq.get(str);
            dq2 = dqVar != null ? dq2 + dqVar.dq() : dq2 + MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        }
        return dq2 + MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
    }

    public void dq(Map<String, dq> map) {
        this.dq = map;
    }

    public String toString() {
        if (this.dq == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, dq> entry : this.dq.entrySet()) {
            dq value = entry.getValue();
            JSONArray jSONArray = new JSONArray();
            if (value != null) {
                jSONArray.put(value.dq());
                jSONArray.put(value.d());
                try {
                    jSONObject.put(entry.getKey(), jSONArray);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return jSONObject.toString();
    }
}
