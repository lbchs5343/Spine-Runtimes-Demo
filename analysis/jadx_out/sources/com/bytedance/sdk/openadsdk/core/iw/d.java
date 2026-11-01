package com.bytedance.sdk.openadsdk.core.iw;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private int f3083d;
    private int dq;
    private int ox;
    private boolean p;

    public static d dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return dq(new JSONObject(str));
        } catch (JSONException e2) {
            ig.d("CLogConfig", "parse failed:".concat(String.valueOf(e2)));
            return null;
        }
    }

    public static d dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        dVar.d(jSONObject.optInt("expire_days"));
        dVar.dq(jSONObject.optInt("log_level"));
        dVar.ox(jSONObject.optInt("max_size"));
        dVar.dq(jSONObject.optBoolean("is_open"));
        return dVar;
    }

    public int d() {
        return this.f3083d;
    }

    public void d(int i) {
        this.f3083d = i;
    }

    public int dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(boolean z) {
        this.p = z;
    }

    public int ox() {
        return this.ox;
    }

    public void ox(int i) {
        this.ox = i;
    }

    public boolean p() {
        return this.p;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("expire_days", d());
            jSONObject.put("log_level", dq());
            jSONObject.put("max_size", ox());
            jSONObject.put("is_open", p());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }
}
