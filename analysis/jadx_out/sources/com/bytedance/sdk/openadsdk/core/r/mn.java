package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private static dq f3487d;
    private static dq dq;
    private static dq ox;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private int f3488d;
        private int dq;
        private int ia;
        private boolean iw;
        private int mn;
        private int ox;
        private int p;
        private int s;

        public dq(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.dq = jSONObject.optInt("get_type", 1);
                this.f3488d = jSONObject.optInt("max_count", 1);
                this.ox = jSONObject.optInt("strategy_type", -1);
                this.p = jSONObject.optInt("store_type", 1);
                this.s = jSONObject.optInt("online_timeout", 10000);
                this.iw = jSONObject.optBoolean("enable", false);
                this.mn = jSONObject.optInt("load_type", -1);
                this.ia = jSONObject.optInt("trans_cache", 0);
            }
        }

        public int d() {
            return this.dq;
        }

        public String dq() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("get_type", this.dq);
                jSONObject.put("max_count", this.f3488d);
                jSONObject.put("strategy_type", this.ox);
                jSONObject.put("store_type", this.p);
                jSONObject.put("online_timeout", this.s);
                jSONObject.put("enable", this.iw);
                jSONObject.put("load_type", this.mn);
                jSONObject.put("trans_cache", this.ia);
            } catch (Exception unused) {
            }
            return jSONObject.toString();
        }

        public int ia() {
            return this.mn;
        }

        public int iw() {
            return this.s;
        }

        public int kk() {
            return this.ia;
        }

        public boolean mn() {
            return this.iw;
        }

        public int ox() {
            if (this.f3488d <= 0) {
                this.f3488d = 1;
            }
            return this.f3488d;
        }

        public int p() {
            return this.ox;
        }

        public int s() {
            return this.p;
        }
    }

    public static dq d() {
        dq dqVar = f3487d;
        return dqVar == null ? new dq(new JSONObject()) : dqVar;
    }

    public static void d(com.bytedance.sdk.component.mn.dq dqVar) {
        dq dqVar2 = dq;
        if (dqVar2 != null) {
            dqVar.dq("cache_strategy_reward", dqVar2.dq());
        }
        dq dqVar3 = f3487d;
        if (dqVar3 != null) {
            dqVar.dq("cache_strategy_full", dqVar3.dq());
        }
        if (ox != null) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().d("cache_strategy_splash", ox.dq());
        }
    }

    public static dq dq() {
        dq dqVar = dq;
        return dqVar == null ? new dq(new JSONObject()) : dqVar;
    }

    public static void dq(com.bytedance.sdk.component.mn.dq dqVar) {
        try {
            dq = new dq(new JSONObject(dqVar.d("cache_strategy_reward", "")));
        } catch (JSONException unused) {
        }
        try {
            f3487d = new dq(new JSONObject(dqVar.d("cache_strategy_full", "")));
        } catch (JSONException unused2) {
        }
    }

    public static void dq(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject != null) {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("cache_strategy_reward");
            if (optJSONObject2 != null) {
                dq = new dq(optJSONObject2);
            }
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("cache_strategy_full");
            if (optJSONObject3 != null) {
                f3487d = new dq(optJSONObject3);
            }
            JSONObject optJSONObject4 = optJSONObject.optJSONObject("cache_strategy_splash");
            if (optJSONObject3 != null) {
                ox = new dq(optJSONObject4);
            }
        }
    }

    public static dq ox() {
        if (ox == null) {
            String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("cache_strategy_splash", (String) null);
            try {
                if (TextUtils.isEmpty(ox2)) {
                    dq dqVar = new dq(new JSONObject());
                    ox = dqVar;
                    dqVar.p = 0;
                } else {
                    ox = new dq(new JSONObject(ox2));
                }
            } catch (JSONException unused) {
            }
        }
        return ox;
    }
}
