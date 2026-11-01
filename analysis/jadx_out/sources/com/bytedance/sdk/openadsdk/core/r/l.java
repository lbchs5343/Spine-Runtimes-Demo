package com.bytedance.sdk.openadsdk.core.r;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class l {
    private String bl;
    private boolean cd;

    /* renamed from: d, reason: collision with root package name */
    private int f3483d;
    private boolean dq;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3484e;

    /* renamed from: f, reason: collision with root package name */
    private int f3485f;
    private int fw;
    private boolean gh;
    private boolean h;
    private String i;
    private int ia;
    private int ig;
    private String iw;
    private String ji;
    private int jy;
    private String k;
    private int kk;
    private int kx;
    private int le;
    private int mn;
    private int mp;
    private boolean n;
    private int no;
    private int o;
    private String ox;
    private int p;
    private int q;
    private int r;
    private String s;
    private String wp;

    public l(JSONObject jSONObject) {
        this.p = 0;
        this.o = 0;
        this.no = 0;
        this.ig = 10;
        this.mp = 10;
        this.q = 0;
        this.jy = -1;
        this.f3485f = 0;
        this.fw = 0;
        this.cd = false;
        this.le = 0;
        this.kx = 0;
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("playable");
        if (optJSONObject != null) {
            this.s = optJSONObject.optString("playable_url", "");
            this.iw = optJSONObject.optString("playable_download_url", "");
            this.kk = optJSONObject.optInt("playable_orientation", 0);
            this.o = optJSONObject.optInt("playable_auto_convert", 0);
            this.no = optJSONObject.optInt("playable_backup_enable", 0);
            this.ig = optJSONObject.optInt("playable_webview_timeout", 10);
            this.mp = optJSONObject.optInt("playable_js_timeout", 10);
            this.kx = optJSONObject.optInt("is_play_with_download", 0);
            this.f3484e = optJSONObject.optBoolean("allow_open_playable_landing_page", true);
            this.h = optJSONObject.optBoolean("is_play_with_watching", false);
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("playable_video");
            if (optJSONObject2 != null) {
                this.ji = optJSONObject2.optString("video_url");
                this.bl = optJSONObject2.optString("resolution");
            }
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("playable_common");
        if (optJSONObject3 != null) {
            JSONObject optJSONObject4 = optJSONObject3.optJSONObject("loading_page");
            if (optJSONObject4 != null) {
                this.mn = optJSONObject4.optInt("if_playable_loading_show", 0);
                this.ia = optJSONObject4.optInt("remove_loading_page_type", 0);
                this.le = d(optJSONObject4);
                this.k = optJSONObject4.optString("playable_loading_img_url", "");
                this.wp = optJSONObject4.optString("playable_loading_icon_url", "");
                this.i = optJSONObject4.optString("playable_loading_tips", "");
            }
            this.n = optJSONObject3.optBoolean("is_playable_top_priority", false);
        }
        this.dq = jSONObject.optBoolean("is_playable");
        this.f3483d = jSONObject.optInt("playable_type", 0);
        this.ox = jSONObject.optString("playable_style");
        this.q = jSONObject.optInt("playable_duration_time", 0);
        this.jy = jSONObject.optInt("playable_close_time", -1);
        this.f3485f = jSONObject.optInt("playable_endcard_close_time", 0);
        this.fw = jSONObject.optInt("playable_reward_type", 0);
        this.p = jSONObject.optInt("playable_convert_type", 0);
        this.cd = jSONObject.optBoolean("has_pre_playable", false);
        this.gh = jSONObject.optBoolean("is_pl_pre_5element", false);
        this.r = jSONObject.optInt("pl_pre_5element_version", 1);
    }

    public static boolean bl(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return false;
        }
        return n.n;
    }

    public static int cd(j jVar) {
        int i;
        l n = n(jVar);
        if (n != null && (i = n.jy) >= 0) {
            return i;
        }
        return 0;
    }

    private int d(JSONObject jSONObject) {
        String optString = jSONObject.optString("playable_loading_style", "0");
        optString.getClass();
        if (optString.equals("1")) {
            return 1;
        }
        return !optString.equals("2") ? 0 : 2;
    }

    public static String d(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return null;
        }
        return n.ox;
    }

    public static int dq(Context context, j jVar, boolean z) {
        if (jVar == null) {
            return 0;
        }
        if (!z) {
            int ho = jVar.ho();
            if (ho == 1) {
                return com.bytedance.sdk.openadsdk.core.ir.ce.ox(context, 63.0f);
            }
            if (ho != 2) {
                return 0;
            }
            return com.bytedance.sdk.openadsdk.core.ir.ce.ox(context, 34.0f);
        }
        int o = o(jVar);
        if (o == 0 || o == 1) {
            return com.bytedance.sdk.openadsdk.core.ir.ce.ox(context, 63.0f);
        }
        if (o != 2) {
            return 0;
        }
        return com.bytedance.sdk.openadsdk.core.ir.ce.ox(context, 34.0f);
    }

    public static int dq(j jVar, int i) {
        com.bykv.vk.openvk.component.video.api.ox.ox dq = pa.dq(jVar, i);
        String kk = dq != null ? dq.kk() : null;
        if (TextUtils.isEmpty(kk)) {
            return 0;
        }
        String[] split = kk.split("x");
        if (split.length < 2) {
            return 0;
        }
        return Integer.parseInt(split[0]) > Integer.parseInt(split[1]) ? 1 : 0;
    }

    public static boolean dq(j jVar) {
        l n = n(jVar);
        return (n == null || !n.dq || TextUtils.isEmpty(n.s)) ? false : true;
    }

    public static boolean e(j jVar) {
        l n = n(jVar);
        return n != null && n.r == 2;
    }

    public static boolean f(j jVar) {
        return dq(jVar) && op(jVar) == 0;
    }

    public static int fw(j jVar) {
        int i;
        l n = n(jVar);
        if (n != null && (i = n.q) >= 0) {
            return i;
        }
        return 0;
    }

    public static int gh(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return 0;
        }
        return n.f3485f;
    }

    public static String h(j jVar) {
        l n = n(jVar);
        return n == null ? "" : n.ji;
    }

    public static boolean i(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return true;
        }
        int i = n.p;
        if (i < 0 || i > 2) {
            n.p = 0;
        }
        int i2 = n.p;
        return i2 == 0 || i2 == 2;
    }

    public static boolean ia(j jVar) {
        l n = n(jVar);
        return mn(jVar) && (n != null ? n.ia : 0) != 1;
    }

    public static boolean ig(j jVar) {
        l n = n(jVar);
        return n != null && n.no == 1;
    }

    public static String iw(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return null;
        }
        return n.iw;
    }

    public static String ji(j jVar) {
        l n = n(jVar);
        return n == null ? "" : n.bl;
    }

    public static boolean jy(j jVar) {
        return dq(jVar) && op(jVar) == 1;
    }

    public static boolean k(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return false;
        }
        return n.cd;
    }

    public static boolean kk(j jVar) {
        l n = n(jVar);
        return mn(jVar) && (n != null ? n.ia : 0) == 1;
    }

    public static boolean kx(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return false;
        }
        return n.h;
    }

    public static boolean le(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return true;
        }
        int i = n.p;
        if (i < 0 || i > 2) {
            n.p = 0;
        }
        int i2 = n.p;
        return i2 == 0 || i2 == 1;
    }

    public static boolean mn(j jVar) {
        if (xz.dq(jVar)) {
            return false;
        }
        l n = n(jVar);
        return (n != null ? n.mn : 0) != 1;
    }

    public static int mp(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return 10;
        }
        return n.ig;
    }

    private static l n(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.j();
    }

    public static boolean no(j jVar) {
        l n = n(jVar);
        return n != null && n.o == 1;
    }

    public static int o(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return 0;
        }
        return n.kk;
    }

    private static int op(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return 0;
        }
        return n.f3483d;
    }

    public static String ox(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return null;
        }
        return n.s;
    }

    public static boolean p(j jVar) {
        l n = n(jVar);
        return n != null && n.kx == 1;
    }

    public static int q(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return 10;
        }
        return n.mp;
    }

    public static int r(j jVar) {
        int i;
        l n = n(jVar);
        if (n == null || (i = n.fw) < 0 || i > 1) {
            return 0;
        }
        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.wp.d().ir()) || gh.no(jVar)) {
            return n.fw;
        }
        return 1;
    }

    public static boolean s(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return true;
        }
        return n.f3484e;
    }

    public static boolean wp(j jVar) {
        l n = n(jVar);
        if (n == null) {
            return false;
        }
        return n.gh;
    }

    public void dq(JSONObject jSONObject) {
        try {
            jSONObject.put("is_playable", this.dq);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("playable_url", this.s);
            jSONObject2.put("playable_download_url", this.iw);
            jSONObject2.put("playable_orientation", this.kk);
            jSONObject2.put("playable_auto_convert", this.o);
            jSONObject2.put("playable_backup_enable", this.no);
            jSONObject2.put("playable_webview_timeout", this.ig);
            jSONObject2.put("playable_js_timeout", this.mp);
            jSONObject2.put("is_play_with_download", this.kx);
            jSONObject2.put("allow_open_playable_landing_page", this.f3484e);
            jSONObject2.put("is_pl_pre_5element", this.gh);
            jSONObject2.put("pl_pre_5element_version", this.r);
            jSONObject2.put("is_play_with_watching", this.h);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("video_url", this.ji);
            jSONObject3.put("resolution", this.bl);
            jSONObject2.put("playable_video", jSONObject3);
            jSONObject.put("playable", jSONObject2);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("if_playable_loading_show", this.mn);
            jSONObject5.put("remove_loading_page_type", this.ia);
            jSONObject5.put("playable_loading_style", this.le);
            jSONObject5.put("playable_loading_img_url", this.k);
            jSONObject5.put("playable_loading_icon_url", this.wp);
            jSONObject5.put("playable_loading_tips", this.i);
            jSONObject4.put("loading_page", jSONObject5);
            jSONObject4.put("is_playable_top_priority", this.n);
            jSONObject.put("playable_common", jSONObject4);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        try {
            jSONObject.put("playable_type", this.f3483d);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        try {
            jSONObject.put("playable_style", this.ox);
        } catch (JSONException e6) {
            e6.printStackTrace();
        }
        try {
            jSONObject.put("playable_duration_time", this.q);
        } catch (JSONException e7) {
            e7.printStackTrace();
        }
        try {
            jSONObject.put("playable_close_time", this.jy);
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
        try {
            jSONObject.put("playable_endcard_close_time", this.f3485f);
        } catch (JSONException e9) {
            e9.printStackTrace();
        }
        try {
            jSONObject.put("playable_reward_type", this.fw);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        try {
            jSONObject.put("playable_convert_type", this.p);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        try {
            jSONObject.put("has_pre_playable", this.cd);
        } catch (JSONException e12) {
            e12.printStackTrace();
        }
        try {
            jSONObject.put("is_pl_pre_5element", this.gh);
        } catch (JSONException e13) {
            e13.printStackTrace();
        }
        try {
            jSONObject.put("pl_pre_5element_version", this.r);
        } catch (JSONException e14) {
            e14.printStackTrace();
        }
    }
}
