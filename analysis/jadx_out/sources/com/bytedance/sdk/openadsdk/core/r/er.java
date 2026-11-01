package com.bytedance.sdk.openadsdk.core.r;

import g.abn;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class er {

    /* renamed from: d, reason: collision with root package name */
    private boolean f3436d;
    private String dq;
    private int ia;
    private String iw;
    private d kk;
    private JSONArray mn;
    private dq o;
    private boolean ox;
    private String p;
    private String s;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        int f3437d;
        int dq;

        public static d dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            d dVar = new d();
            dVar.dq = jSONObject.optInt("amount");
            dVar.f3437d = jSONObject.optInt("threshold");
            return dVar;
        }

        public int d() {
            return this.f3437d;
        }

        public int dq() {
            return this.dq;
        }

        public JSONObject ox() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("amount", this.dq);
                jSONObject.put("threshold", this.f3437d);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        String f3438d;
        String dq;
        double ox;
        double p;

        public static dq dq(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            dq dqVar = new dq();
            dqVar.dq = jSONObject.optString(abn.EXTRA_TITLE);
            dqVar.f3438d = jSONObject.optString("image");
            dqVar.p = jSONObject.optDouble("price");
            dqVar.ox = jSONObject.optDouble("origin_price");
            return dqVar;
        }

        public String d() {
            return this.f3438d;
        }

        public String dq() {
            return this.dq;
        }

        public double ox() {
            return this.ox;
        }

        public double p() {
            return this.p;
        }

        public JSONObject s() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(abn.EXTRA_TITLE, this.dq);
                jSONObject.put("image", this.f3438d);
                jSONObject.put("price", this.p);
                jSONObject.put("origin_price", this.ox);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public static er dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        er erVar = new er();
        erVar.dq = jSONObject.optString("promotion_id");
        erVar.f3436d = jSONObject.optBoolean("is_silent_auth", false);
        erVar.ox = jSONObject.optBoolean("enable_playable_auth", false);
        erVar.p = jSONObject.optString("aweme_agreements");
        erVar.s = jSONObject.optString("aweme_privacy");
        erVar.iw = jSONObject.optString("live_csj_libra_param");
        erVar.mn = jSONObject.optJSONArray("tasks");
        erVar.ia = jSONObject.optInt("live_playable");
        erVar.o = dq.dq(jSONObject.optJSONObject("product"));
        erVar.kk = d.dq(jSONObject.optJSONObject("coupon"));
        return erVar;
    }

    public String d() {
        return this.dq;
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("promotion_id", this.dq);
            jSONObject.put("is_silent_auth", this.f3436d);
            jSONObject.put("enable_playable_auth", this.ox);
            jSONObject.put("aweme_agreements", this.p);
            jSONObject.put("aweme_privacy", this.s);
            jSONObject.put("live_csj_libra_param", this.iw);
            jSONObject.put("tasks", this.mn);
            jSONObject.put("live_playable", this.ia);
            dq dqVar = this.o;
            if (dqVar != null) {
                jSONObject.put("product", dqVar.s());
            }
            d dVar = this.kk;
            if (dVar != null) {
                jSONObject.put("coupon", dVar.ox());
            }
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public JSONArray ia() {
        return this.mn;
    }

    public String iw() {
        return this.s;
    }

    public boolean kk() {
        return this.ia == 2 && this.ox;
    }

    public String mn() {
        return this.iw;
    }

    public dq no() {
        return this.o;
    }

    public d o() {
        return this.kk;
    }

    public boolean ox() {
        return this.f3436d;
    }

    public boolean p() {
        return this.ox;
    }

    public String s() {
        return this.p;
    }
}
