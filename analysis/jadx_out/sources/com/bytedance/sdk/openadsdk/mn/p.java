package com.bytedance.sdk.openadsdk.mn;

import android.text.TextUtils;
import g.abn;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class p extends dq {
    public static ox dq;

    public static String dq(com.bytedance.sdk.component.kk.d.p pVar, String str) {
        Map map;
        ox d2 = d.d("net");
        if (d2 == null || (map = (Map) d2.call(1, str)) == null) {
            return str;
        }
        String str2 = (String) map.get(abn.EXTRA_URL);
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        Map map2 = (Map) map.get("header");
        if (map2 != null) {
            for (String str3 : map2.keySet()) {
                pVar.d(str3, (String) map2.get(str3));
            }
        }
        return str;
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.ji.d dVar) {
        try {
            ox d2 = d.d("net");
            if (d2 == null) {
                return;
            }
            String jSONObject = com.bytedance.sdk.component.utils.dq.dq(dVar.dq().toString()).toString();
            HashMap hashMap = new HashMap();
            hashMap.put("body", jSONObject);
            d2.call(2, hashMap);
        } catch (Throwable unused) {
        }
    }

    public static void dq(JSONObject jSONObject) {
        try {
            ox d2 = d.d("net");
            if (d2 != null && jSONObject != null) {
                String jSONObject2 = com.bytedance.sdk.component.utils.dq.dq(jSONObject.toString()).toString();
                HashMap hashMap = new HashMap();
                hashMap.put("body", jSONObject2);
                d2.call(3, hashMap);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mn.dq
    public String dq() {
        return "net";
    }
}
