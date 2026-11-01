package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class gh {

    /* renamed from: d, reason: collision with root package name */
    private int f3442d;
    private String dq;
    private String ia;
    private int iw;
    private String kk;
    private boolean mn;
    private int o;
    private int ox;
    private int p;
    private int s;

    public gh(JSONObject jSONObject) {
        this.f3442d = 0;
        if (jSONObject == null) {
            return;
        }
        int optInt = jSONObject.optInt("reward_browse_type", 0);
        this.f3442d = optInt;
        if (optInt < 0 || optInt > 3) {
            this.f3442d = 0;
        }
        if (this.f3442d == 2) {
            this.f3442d = 3;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("direct_landing_page_info");
        if (optJSONObject != null) {
            this.dq = optJSONObject.optString("direct_landing_url");
            this.ox = optJSONObject.optInt("display_duration", 0);
            this.p = optJSONObject.optInt("close_time", 0);
            this.s = optJSONObject.optInt("page_type");
            this.iw = optJSONObject.optInt("show_type");
            this.mn = optJSONObject.optBoolean("is_landing_with_sound", false);
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("reward_browse_banner");
            if (optJSONObject2 != null) {
                this.ia = optJSONObject2.optString("ugen_url");
                this.kk = optJSONObject2.optString("ugen_md5");
            }
            this.o = optJSONObject.optInt("close_btn_position");
        }
    }

    public static boolean d(j jVar) {
        if (dq(jVar)) {
            return mn(jVar);
        }
        return false;
    }

    public static boolean dq(j jVar) {
        gh f2 = f(jVar);
        return (f2 == null || ia(jVar) == 0 || TextUtils.isEmpty(f2.dq)) ? false : true;
    }

    private static gh f(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.l();
    }

    public static int ia(j jVar) {
        gh f2 = f(jVar);
        if (f2 == null) {
            return 0;
        }
        return f2.f3442d;
    }

    public static com.bytedance.sdk.openadsdk.core.ugeno.mn.dq ig(j jVar) {
        gh f2 = f(jVar);
        if (f2 == null || TextUtils.isEmpty(f2.ia)) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.mn.dq();
        dqVar.ox(f2.ia);
        dqVar.d(f2.kk);
        dqVar.dq(f2.ia);
        return dqVar;
    }

    public static String iw(j jVar) {
        gh f2 = f(jVar);
        return f2 == null ? "" : f2.dq;
    }

    public static int jy(j jVar) {
        gh f2 = f(jVar);
        if (f2 == null) {
            return 0;
        }
        return f2.o;
    }

    public static int kk(j jVar) {
        int i;
        gh f2 = f(jVar);
        if (f2 != null && (i = f2.ox) >= 0) {
            return i;
        }
        return 0;
    }

    public static boolean mn(j jVar) {
        gh f2 = f(jVar);
        if (f2 == null) {
            return false;
        }
        return f2.mn;
    }

    public static boolean mp(j jVar) {
        gh f2 = f(jVar);
        return f2 != null && f2.o == 1;
    }

    public static boolean no(j jVar) {
        return f(jVar) != null && ia(jVar) == 3 && dq(jVar);
    }

    public static int o(j jVar) {
        int i;
        gh f2 = f(jVar);
        if (f2 != null && (i = f2.p) >= 0) {
            return i;
        }
        return 0;
    }

    public static boolean ox(j jVar) {
        gh f2 = f(jVar);
        return f2 != null && f2.f3442d == 1 && f2.s == 1;
    }

    public static boolean p(j jVar) {
        gh f2 = f(jVar);
        return f2 != null && dq(jVar) && f2.f3442d == 1 && f2.s == 2;
    }

    public static boolean q(j jVar) {
        gh f2 = f(jVar);
        return f2 != null && f2.o == 2;
    }

    public static boolean s(j jVar) {
        gh f2 = f(jVar);
        return f2 != null && f2.iw == 3;
    }

    public void dq(JSONObject jSONObject) {
        try {
            jSONObject.put("reward_browse_type", this.f3442d);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("direct_landing_url", this.dq);
            jSONObject2.put("display_duration", this.ox);
            jSONObject2.put("close_time", this.p);
            jSONObject2.put("page_type", this.s);
            jSONObject2.put("show_type", this.iw);
            jSONObject2.put("close_btn_position", this.o);
            jSONObject2.put("is_landing_with_sound", this.mn);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ugen_url", this.ia);
            jSONObject3.put("ugen_md5", this.kk);
            jSONObject2.put("reward_browse_banner", jSONObject3);
            jSONObject.put("direct_landing_page_info", jSONObject2);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
