package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class xz {

    /* renamed from: d, reason: collision with root package name */
    private boolean f3524d;
    private boolean dq;
    private int ox;
    private int p;

    public xz(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("window_landing");
        if (optJSONObject == null) {
            return;
        }
        this.dq = optJSONObject.optBoolean("can_jump_to_landing", false);
        this.f3524d = optJSONObject.optBoolean("can_click_to_landing", false);
        this.ox = optJSONObject.optInt("auto_to_landing_type", 0);
        this.p = optJSONObject.optInt("auto_to_landing_time", 0);
    }

    public static boolean d(j jVar) {
        xz le = uh.le(jVar);
        if (le == null) {
            return false;
        }
        return le.f3524d;
    }

    public static boolean dq(j jVar) {
        xz le = uh.le(jVar);
        if (le == null || !le.dq || jVar.ce() == 1) {
            return false;
        }
        if (jVar.ce() == 2 && jVar.dr() == 3) {
            return false;
        }
        if (jVar.ce() == 2 && jVar.dr() == 7) {
            return false;
        }
        return (jVar.gv() == 5 || jVar.gv() == 15) && !TextUtils.isEmpty(s(jVar));
    }

    public static int ox(j jVar) {
        xz le = uh.le(jVar);
        if (le == null) {
            return 0;
        }
        return le.ox;
    }

    public static int p(j jVar) {
        xz le = uh.le(jVar);
        if (le == null) {
            return 0;
        }
        return le.p;
    }

    public static String s(j jVar) {
        return jVar == null ? "" : jVar.ae();
    }

    public void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("can_jump_to_landing", this.dq);
            jSONObject2.put("can_click_to_landing", this.f3524d);
            jSONObject2.put("auto_to_landing_type", this.ox);
            jSONObject2.put("auto_to_landing_time", this.p);
            jSONObject.put("window_landing", jSONObject2);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.ig.d("parse json:" + e2.getMessage());
        }
    }
}
