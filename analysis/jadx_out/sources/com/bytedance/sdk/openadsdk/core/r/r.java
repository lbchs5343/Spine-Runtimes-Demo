package com.bytedance.sdk.openadsdk.core.r;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class r {
    private int cd;

    /* renamed from: d, reason: collision with root package name */
    private int f3509d;
    private int dq;

    /* renamed from: f, reason: collision with root package name */
    private int f3510f;
    private int fw;
    private String gh;
    private int ia;
    private int ig;
    private int iw;
    private int jy;
    private int kk;
    private int mn;
    private int mp;
    private int no;
    private int o;
    private int ox;
    private int p;
    private int q;
    private String r;
    private int s;

    public r(JSONObject jSONObject) {
        this.dq = 0;
        this.f3509d = 1;
        this.ox = 1;
        this.p = 1;
        this.s = 1;
        this.iw = 1;
        this.mn = 0;
        this.ia = 0;
        this.kk = 0;
        this.o = TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX;
        this.no = -1;
        this.ig = 1;
        this.mp = 1;
        this.q = 31457280;
        this.jy = 0;
        this.f3510f = 0;
        this.fw = 0;
        this.cd = 0;
        if (jSONObject == null) {
            return;
        }
        this.iw = jSONObject.optInt("auto_open", 1);
        this.mn = jSONObject.optInt("download_mode", 0);
        this.ia = jSONObject.optInt("auto_control", 0);
        this.kk = jSONObject.optInt("auto_control_choose", 0);
        this.o = jSONObject.optInt("auto_control_time", TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        this.no = jSONObject.optInt("download_type", -1);
        this.ig = jSONObject.optInt("if_suspend_download", 1);
        this.dq = jSONObject.optInt("if_send_click", 0);
        this.f3509d = jSONObject.optInt("dl_popup", 1);
        this.ox = jSONObject.optInt("market_popup", 1);
        this.p = jSONObject.optInt("if_pop_lp", 1);
        this.s = jSONObject.optInt("pop_up_style_id", 1);
        this.mp = jSONObject.optInt("dl_network", 1);
        this.q = jSONObject.optInt("dl_size", 31457280);
        this.jy = jSONObject.optInt("if_toast_market", 0);
        this.f3510f = jSONObject.optInt("enable_download_opt", 0);
        this.fw = jSONObject.optInt("dl_suspend_popup", 0);
        this.cd = jSONObject.optInt("is_use_obm_convert", 0);
        this.gh = jSONObject.optString("ugen_url");
        String optString = jSONObject.optString("ugen_md5");
        this.r = optString;
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(this.gh, optString);
    }

    public static int cd(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 1;
        }
        return le.s;
    }

    public static int d(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 0;
        }
        return le.p();
    }

    public static boolean dq(j jVar) {
        r le = le(jVar);
        return le != null && le.f3510f == 1;
    }

    public static int f(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 31457280;
        }
        return le.q * 1048576;
    }

    public static boolean fw(j jVar) {
        r le = le(jVar);
        return le != null && le.jy == 1;
    }

    public static int gh(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 0;
        }
        return le.fw;
    }

    public static String i(j jVar) {
        r le = le(jVar);
        return le == null ? "" : le.r;
    }

    public static boolean ia(j jVar) {
        r le = le(jVar);
        return le != null && le.kk == 1;
    }

    public static int ig(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 1;
        }
        return le.f3509d;
    }

    public static int iw(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return -1;
        }
        return le.no;
    }

    public static int jy(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 1;
        }
        return le.mp;
    }

    public static int kk(j jVar) {
        r le = le(jVar);
        return le == null ? TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX : le.o;
    }

    private static r le(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.zi();
    }

    public static boolean mn(j jVar) {
        r le = le(jVar);
        return le != null && le.ia == 1;
    }

    public static int mp(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 1;
        }
        return le.ox;
    }

    public static int no(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 0;
        }
        return le.dq;
    }

    public static boolean o(j jVar) {
        r le = le(jVar);
        return le != null && le.ig == 1;
    }

    public static String ox(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return "close_obm";
        }
        int p = le.p();
        String gn = jVar.gn();
        if (p == 1 && gn != null) {
            return "open";
        }
        return "close_" + p + "_" + gn;
    }

    public static int p(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 1;
        }
        return le.iw;
    }

    public static int q(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 1;
        }
        return le.p;
    }

    public static String r(j jVar) {
        r le = le(jVar);
        return le == null ? "" : le.gh;
    }

    public static int s(j jVar) {
        r le = le(jVar);
        if (le == null) {
            return 0;
        }
        return le.mn;
    }

    public int d() {
        return this.mn;
    }

    public int dq() {
        return this.f3509d;
    }

    public void dq(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("auto_open", this.iw);
            jSONObject2.put("download_mode", this.mn);
            jSONObject2.put("download_type", this.no);
            jSONObject2.put("auto_control", this.ia);
            jSONObject2.put("auto_control_choose", this.kk);
            jSONObject2.put("auto_control_time", this.o);
            jSONObject2.put("if_suspend_download", this.ig);
            jSONObject2.put("if_send_click", this.dq);
            jSONObject2.put("dl_popup", this.f3509d);
            jSONObject2.put("market_popup", this.ox);
            jSONObject2.put("if_pop_lp", this.p);
            jSONObject2.put("pop_up_style_id", this.s);
            jSONObject2.put("dl_network", this.mp);
            jSONObject2.put("dl_size", this.q);
            jSONObject2.put("if_toast_market", this.jy);
            jSONObject2.put("enable_download_opt", this.f3510f);
            jSONObject2.put("dl_suspend_popup", this.fw);
            jSONObject2.put("is_use_obm_convert", this.cd);
            jSONObject2.put("ugen_url", this.gh);
            jSONObject2.put("ugen_md5", this.r);
            jSONObject.put("download_conf", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public boolean ox() {
        return this.ig == 1;
    }

    public int p() {
        return this.cd;
    }

    public int s() {
        return this.fw;
    }
}
