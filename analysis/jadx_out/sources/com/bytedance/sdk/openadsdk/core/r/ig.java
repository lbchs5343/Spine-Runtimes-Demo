package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ig {

    /* renamed from: d, reason: collision with root package name */
    private int f3450d;
    private String dq;

    public ig(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("cloud_game_info")) == null) {
            return;
        }
        this.dq = optJSONObject.optString("cloud_game_url");
        this.f3450d = optJSONObject.optInt("cloud_game_type");
    }

    public static String d(j jVar) {
        ig s = s(jVar);
        return s == null ? "" : s.dq;
    }

    public static boolean dq(j jVar) {
        ig s = s(jVar);
        return (s == null || TextUtils.isEmpty(s.dq)) ? false : true;
    }

    private static int iw(j jVar) {
        ig s = s(jVar);
        if (s == null) {
            return 0;
        }
        return s.f3450d;
    }

    public static boolean ox(j jVar) {
        return dq(jVar) && iw(jVar) == 1;
    }

    public static boolean p(j jVar) {
        return dq(jVar) && iw(jVar) == 0;
    }

    private static ig s(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.ob();
    }

    public void dq(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("cloud_game_url", this.dq);
            jSONObject2.put("cloud_game_type", this.f3450d);
            jSONObject.put("cloud_game_info", jSONObject2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
