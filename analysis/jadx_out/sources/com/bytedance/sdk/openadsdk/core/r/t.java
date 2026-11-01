package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class t {

    /* renamed from: d, reason: collision with root package name */
    private int f3512d;
    private boolean dq;
    private int ia;
    private boolean iw;
    private int mn;
    private int ox;
    private int p;
    private int s;

    public t(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("reward_draw");
        if (optJSONObject != null) {
            this.f3512d = optJSONObject.optInt("max_draw_play_time", 10);
            this.ox = optJSONObject.optInt("draw_rewarded_play_time", 10);
            this.p = optJSONObject.optInt("skip_btn_left_style", 0);
            this.s = optJSONObject.optInt("skip_btn_right_style", 0);
            this.iw = optJSONObject.optBoolean("auto_slide", false);
            this.mn = optJSONObject.optInt("show_time_type", 0);
            this.ia = optJSONObject.optInt("tip_time", 0);
        } else {
            this.f3512d = 10;
            this.ox = 10;
        }
        if (jSONObject.optJSONObject("group_info") != null) {
            this.dq = !TextUtils.isEmpty(r4.optString("group_id"));
        }
    }

    public static int d(j jVar) {
        int i;
        t kk = kk(jVar);
        if (kk != null && (i = kk.f3512d) > 0) {
            return i;
        }
        return 10;
    }

    public static boolean dq(j jVar) {
        t kk = kk(jVar);
        if (kk == null) {
            return false;
        }
        return kk.dq;
    }

    public static int ia(j jVar) {
        t kk = kk(jVar);
        if (kk == null) {
            return 25;
        }
        return kk.ia;
    }

    public static boolean iw(j jVar) {
        t kk = kk(jVar);
        if (kk == null) {
            return false;
        }
        return kk.iw;
    }

    private static t kk(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.qf();
    }

    public static int mn(j jVar) {
        t kk = kk(jVar);
        if (kk == null) {
            return 10;
        }
        return kk.mn == 1 ? Math.min((int) Math.max(pa.iw(jVar), ox(jVar)), 60) : ox(jVar);
    }

    public static int ox(j jVar) {
        int i;
        t kk = kk(jVar);
        if (kk != null && (i = kk.ox) > 0) {
            return i;
        }
        return 10;
    }

    public static int p(j jVar) {
        t kk = kk(jVar);
        if (kk == null) {
            return 0;
        }
        return kk.p;
    }

    public static int s(j jVar) {
        t kk = kk(jVar);
        if (kk == null) {
            return 0;
        }
        return kk.s;
    }

    public void dq(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("max_draw_play_time", this.f3512d);
            jSONObject2.put("draw_rewarded_play_time", this.ox);
            jSONObject2.put("skip_btn_left_style", this.p);
            jSONObject2.put("skip_btn_right_style", this.s);
            jSONObject2.put("auto_slide", this.iw);
            jSONObject2.put("show_time_type", this.mn);
            jSONObject2.put("tip_time", this.ia);
            jSONObject.put("reward_draw", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
