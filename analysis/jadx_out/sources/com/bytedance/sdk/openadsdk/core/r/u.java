package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class u {

    /* renamed from: d, reason: collision with root package name */
    public int f3513d;
    public String dq;
    public long iw;
    public int ox;
    public long p;
    public long s;

    public u(JSONObject jSONObject) {
        this.p = 100L;
        if (jSONObject != null) {
            this.f3513d = jSONObject.optInt("preload_type");
            this.ox = jSONObject.optInt("preload_behavior", 0);
            this.p = jSONObject.optLong("memory_limit", 100L);
            this.iw = jSONObject.optLong("load_delay", 0L);
            try {
                String optString = jSONObject.optString("landing_page_preload_config");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(optString);
                this.dq = jSONObject2.optString("channel_name");
                this.s = jSONObject2.optLong("resourceCount");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean d(j jVar) {
        return jVar != null && jVar.sd() != null && jVar.sd().f3513d == 1 && jVar.sd().ox >= 0;
    }

    public static String dq(j jVar) {
        if (jVar == null || jVar.sd() == null) {
            return null;
        }
        return jVar.sd().dq;
    }

    public static boolean ox(j jVar) {
        return jVar != null && jVar.sd() != null && jVar.sd().f3513d == 1 && jVar.sd().ox == 1;
    }

    public static long p(j jVar) {
        if (jVar == null || jVar.sd() == null) {
            return 0L;
        }
        return jVar.sd().p;
    }

    public static long s(j jVar) {
        if (jVar == null || jVar.sd() == null) {
            return 0L;
        }
        return jVar.sd().iw;
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("preload_type", this.f3513d);
            jSONObject.put("preload_behavior", this.ox);
            jSONObject.put("memory_limit", this.p);
            jSONObject.put("load_delay", this.iw);
            if (TextUtils.isEmpty(this.dq)) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("channel_name", this.dq);
            jSONObject2.put("resourceCount", this.s);
            jSONObject.put("landing_page_preload_config", jSONObject2);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }
}
