package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class cv {

    /* renamed from: d, reason: collision with root package name */
    private int f3429d;
    private boolean dq;
    private int ia;
    private boolean iw;
    private dc mn;
    private int ox;
    private String p;
    private String s;

    public cv(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("splash_card");
        if (optJSONObject != null) {
            this.iw = true;
            this.dq = optJSONObject.optBoolean("click_on_close", false);
            this.f3429d = optJSONObject.optInt("card_stay_count_down", 5);
            this.ox = optJSONObject.optInt("card_click_area", 2);
            this.s = optJSONObject.optString("card_text", "详情页或第三方应用");
            int optInt = optJSONObject.optInt("splash_card_style_id", 0);
            this.ia = optInt;
            if (optInt == 1) {
                this.p = optJSONObject.optString("card_top_text", "摇一摇或点击了解更多");
            } else {
                this.p = optJSONObject.optString("card_top_text", "点击跳转");
            }
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("splash_icon");
        if (optJSONObject2 != null) {
            dc dcVar = new dc();
            dcVar.d(optJSONObject2.optInt("splash_icon_height", 72));
            dcVar.dq(optJSONObject2.optInt("splash_icon_width", 54));
            dcVar.dq(optJSONObject2.optString("splash_icon_url", ""));
            dcVar.p(optJSONObject2.optInt("splash_icon_video_height", 126));
            dcVar.ox(optJSONObject2.optInt("splash_icon_video_width", 71));
            dcVar.s(optJSONObject2.optInt("video_endcard_show_time"));
            dcVar.d(optJSONObject2.optString("video_endcard_text"));
            dcVar.iw(optJSONObject2.optInt("icon_show_time", 5));
            dcVar.dq(optJSONObject2.optBoolean("is_skip_close", false));
            this.mn = dcVar;
        }
    }

    public static int cd(j jVar) {
        dc dcVar;
        cv r = r(jVar);
        if (r == null || (dcVar = r.mn) == null) {
            return 5;
        }
        return dcVar.ia();
    }

    public static int d() {
        int i = Calendar.getInstance().get(7);
        com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ir.n.dq(null);
        int d2 = dq.d("splash_card_show_day", -1);
        int d3 = dq.d("splash_card_show_count", 0);
        if (d2 == i) {
            return d3;
        }
        return 0;
    }

    public static void d(j jVar) {
        cv r = r(jVar);
        if (r == null || jVar.jb() || jVar.ho() == 2 || !r.iw || d() >= com.bytedance.sdk.openadsdk.core.wp.d().py()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ox(jVar, "splash_ad", "if_splash_card");
        if (f(jVar)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ox(jVar, "splash_ad", "card_show_fail");
    }

    public static void dq() {
        int i = Calendar.getInstance().get(7);
        com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ir.n.dq(null);
        int d2 = dq.d("splash_card_show_day", -1) == i ? dq.d("splash_card_show_count", 0) : 0;
        dq.dq("splash_card_show_day", i);
        dq.dq("splash_card_show_count", d2 + 1);
    }

    public static boolean dq(j jVar) {
        cv r = r(jVar);
        if (r != null && !jVar.jb() && jVar.ho() != 2 && r.iw && d() < com.bytedance.sdk.openadsdk.core.wp.d().py() && f(jVar)) {
            return r.iw;
        }
        return false;
    }

    public static boolean f(j jVar) {
        if (jVar == null || jVar.wq() == null || !jVar.wq().s() || jVar.oh() == null || jVar.oh().isEmpty() || !jVar.oh().get(0).s() || TextUtils.isEmpty(jVar.lk())) {
            return false;
        }
        if (TextUtils.isEmpty(jVar.w())) {
            return (jVar.gm() == null || TextUtils.isEmpty(jVar.gm().ox())) ? false : true;
        }
        return true;
    }

    public static boolean fw(j jVar) {
        dc dcVar;
        cv r = r(jVar);
        if (r == null || (dcVar = r.mn) == null) {
            return false;
        }
        return dcVar.kk();
    }

    private static boolean gh(j jVar) {
        cv r = r(jVar);
        return (r == null || r.mn == null || jVar.ce() == 2) ? false : true;
    }

    public static int ia(j jVar) {
        int i;
        cv r = r(jVar);
        if (r != null && (i = r.f3429d) > 0 && i <= 5) {
            return i;
        }
        return 5;
    }

    public static String ig(j jVar) {
        dc dcVar;
        cv r = r(jVar);
        return (r == null || (dcVar = r.mn) == null) ? "" : dcVar.ox();
    }

    public static String iw(j jVar) {
        cv r = r(jVar);
        return r == null ? "点击跳转" : mn(jVar) == 1 ? TextUtils.isEmpty(r.p) ? "摇一摇或点击了解更多" : r.p : TextUtils.isEmpty(r.p) ? "点击跳转" : r.p;
    }

    public static int[] jy(j jVar) {
        int[] iArr = new int[2];
        cv r = r(jVar);
        if (r == null || r.mn == null) {
            return null;
        }
        if (jVar.jb()) {
            iArr[0] = r.mn.p();
            iArr[1] = r.mn.s();
            return iArr;
        }
        iArr[0] = r.mn.dq();
        iArr[1] = r.mn.d();
        return iArr;
    }

    public static boolean kk(j jVar) {
        cv r = r(jVar);
        return r == null || r.ox == 1;
    }

    public static int mn(j jVar) {
        cv r = r(jVar);
        if (r == null) {
            return 0;
        }
        return r.ia;
    }

    public static String mp(j jVar) {
        dc dcVar;
        cv r = r(jVar);
        return (r == null || (dcVar = r.mn) == null) ? "" : dcVar.mn();
    }

    public static boolean no(j jVar) {
        dc dcVar;
        cv r = r(jVar);
        return (r == null || (dcVar = r.mn) == null || TextUtils.isEmpty(dcVar.ox())) ? false : true;
    }

    public static boolean o(j jVar) {
        cv r = r(jVar);
        if (r == null) {
            return true;
        }
        return r.dq;
    }

    public static boolean ox(j jVar) {
        return r(jVar) != null && gh(jVar) && jVar.jb();
    }

    public static boolean p(j jVar) {
        return (r(jVar) == null || !gh(jVar) || jVar.jb()) ? false : true;
    }

    public static int q(j jVar) {
        dc dcVar;
        cv r = r(jVar);
        if (r == null || (dcVar = r.mn) == null) {
            return 0;
        }
        return dcVar.iw();
    }

    private static cv r(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.t();
    }

    public static String s(j jVar) {
        cv r = r(jVar);
        return (r == null || TextUtils.isEmpty(r.s)) ? "详情页或第三方应用" : r.s;
    }

    public void dq(JSONObject jSONObject) {
        try {
            if (this.mn != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("splash_icon_height", this.mn.d());
                jSONObject2.put("splash_icon_url", this.mn.ox());
                jSONObject2.put("splash_icon_video_height", this.mn.s());
                jSONObject2.put("splash_icon_video_width", this.mn.p());
                jSONObject2.put("splash_icon_width", this.mn.dq());
                jSONObject2.put("video_endcard_show_time", this.mn.iw());
                jSONObject2.put("video_endcard_text", this.mn.mn());
                jSONObject2.put("icon_show_time", this.mn.ia());
                jSONObject2.put("is_skip_close", this.mn.kk());
                jSONObject.put("splash_icon", jSONObject2);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            if (this.iw) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("click_on_close", this.dq);
                jSONObject3.put("card_stay_count_down", this.f3429d);
                jSONObject3.put("card_click_area", this.ox);
                jSONObject3.put("card_text", this.s);
                jSONObject3.put("card_top_text", this.p);
                jSONObject3.put("splash_card_style_id", this.ia);
                jSONObject.put("splash_card", jSONObject3);
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
    }
}
