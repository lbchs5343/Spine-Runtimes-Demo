package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class q {
    private String cd;

    /* renamed from: d, reason: collision with root package name */
    private String f3507d;
    private long dq;

    /* renamed from: f, reason: collision with root package name */
    private String f3508f;
    private String fw;
    private long ia;
    private int ig;
    private int iw;
    private String jy;
    private String kk;
    private int mn;
    private long mp;
    private long no;
    private long o;
    private String ox;
    private long p;
    private String q;
    private boolean s;

    public static q dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        q qVar = new q();
        qVar.dq = jSONObject.optLong("user_id");
        qVar.f3507d = jSONObject.optString("coupon_meta_id");
        qVar.ox = jSONObject.optString("unique_id");
        qVar.p = jSONObject.optLong("device_id");
        qVar.s = jSONObject.optBoolean("has_coupon");
        qVar.iw = jSONObject.optInt("coupon_scene");
        qVar.mn = jSONObject.optInt("type");
        qVar.ia = jSONObject.optLong("threshold");
        qVar.kk = jSONObject.optString("scene_key");
        qVar.o = jSONObject.optLong("activity_id");
        qVar.no = jSONObject.optLong("amount");
        qVar.ig = jSONObject.optInt("action");
        qVar.mp = jSONObject.optLong("style");
        qVar.q = jSONObject.optString("start_time");
        qVar.jy = jSONObject.optString("expire_time");
        qVar.f3508f = jSONObject.optString("button_text");
        qVar.fw = jSONObject.optString("extra");
        qVar.cd = jSONObject.optString("toast");
        return qVar;
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("user_id", this.dq);
            jSONObject.put("coupon_meta_id", this.f3507d);
            jSONObject.put("unique_id", this.ox);
            jSONObject.put("device_id", this.p);
            jSONObject.put("type", this.mn);
            jSONObject.put("scene_key", this.kk);
            jSONObject.put("activity_id", this.o);
            jSONObject.put("value", this.no);
            jSONObject.put("threshold", this.ia);
            jSONObject.put("extra", this.fw);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("user_id", this.dq);
            jSONObject.put("coupon_meta_id", this.f3507d);
            jSONObject.put("unique_id", this.ox);
            jSONObject.put("device_id", this.p);
            jSONObject.put("has_coupon", this.s);
            jSONObject.put("coupon_scene", this.iw);
            jSONObject.put("type", this.mn);
            jSONObject.put("threshold", this.ia);
            jSONObject.put("scene_key", this.kk);
            jSONObject.put("activity_id", this.o);
            jSONObject.put("amount", this.no);
            jSONObject.put("action", this.ig);
            jSONObject.put("style", this.mp);
            jSONObject.put("start_time", this.q);
            jSONObject.put("expire_time", this.jy);
            jSONObject.put("button_text", this.f3508f);
            jSONObject.put("extra", this.fw);
            jSONObject.put("toast", this.cd);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public boolean dq(boolean z) {
        int i;
        boolean z2 = this.s && this.no > 0;
        return z ? z2 && ((i = this.iw) == 0 || i == 5) : z2 && this.iw == 5;
    }

    public int getType() {
        return this.mn;
    }

    public int ox() {
        return this.iw;
    }

    public String p() {
        return this.cd;
    }
}
