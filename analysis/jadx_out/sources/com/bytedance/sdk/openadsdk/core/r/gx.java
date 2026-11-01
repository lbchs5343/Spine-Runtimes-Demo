package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class gx {

    /* renamed from: d, reason: collision with root package name */
    private int f3443d;
    private int dq;
    private boolean iw;
    private String ox;
    private int p;
    private int s;

    public gx(JSONObject jSONObject) {
        this.iw = false;
        JSONObject optJSONObject = jSONObject.optJSONObject("reward_live");
        if (optJSONObject != null) {
            this.iw = true;
            d(optJSONObject.optInt("reward_live_type", 1));
            ox(optJSONObject.optInt("reward_live_style", 1));
            dq(optJSONObject.optString("reward_live_text"));
            dq(optJSONObject.optInt("reward_start_time", 5));
            p(optJSONObject.optInt("reward_close_time", 10));
        }
    }

    public static int d(j jVar) {
        gx kk = kk(jVar);
        if (kk == null) {
            return 1;
        }
        return kk.dq;
    }

    private void d(int i) {
        if (i != 2 && i != 3 && i != 4 && i != 1) {
            i = 1;
        }
        this.dq = i;
    }

    private void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            str = this.f3443d == 3 ? "5s后将为你自动打开抖音\n在抖音观看直播\n可提前5s获得奖励哦" : "去抖音观看直播\n可提前5s获得奖励哦";
        }
        this.ox = str;
    }

    public static boolean dq(j jVar) {
        gx kk = kk(jVar);
        if (kk == null) {
            return false;
        }
        return kk.iw;
    }

    public static int ia(j jVar) {
        gx kk = kk(jVar);
        if (kk == null) {
            return 10;
        }
        return Math.max(kk.s, 3);
    }

    public static String iw(j jVar) {
        gx kk = kk(jVar);
        return kk == null ? "去抖音观看直播\n可提前5s获得奖励哦" : kk.ox;
    }

    private static gx kk(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.zr();
    }

    public static int mn(j jVar) {
        gx kk = kk(jVar);
        if (kk == null) {
            return 5;
        }
        return Math.max(kk.p, 0);
    }

    private void ox(int i) {
        if (i != 1 && i != 2 && i != 3) {
            i = 1;
        }
        this.f3443d = i;
    }

    public static boolean ox(j jVar) {
        gx kk = kk(jVar);
        return kk == null || !kk.iw || kk.dq == 1;
    }

    private void p(int i) {
        if (i <= 3) {
            i = 3;
        }
        this.s = i;
    }

    public static boolean p(j jVar) {
        int i;
        gx kk = kk(jVar);
        return kk != null && kk.iw && com.bytedance.sdk.openadsdk.core.live.d.dq().dq(jVar) && ((i = kk.dq) == 3 || i == 4);
    }

    public static int s(j jVar) {
        gx kk = kk(jVar);
        if (kk == null) {
            return 1;
        }
        return kk.f3443d;
    }

    public void dq(int i) {
        this.p = i;
    }

    public void dq(JSONObject jSONObject) {
        if (this.iw) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("reward_live_type", this.dq);
                jSONObject2.put("reward_live_style", this.f3443d);
                jSONObject2.put("reward_live_text", this.ox);
                jSONObject2.put("reward_start_time", this.p);
                jSONObject2.put("reward_close_time", this.s);
                jSONObject.put("reward_live", jSONObject2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }
}
