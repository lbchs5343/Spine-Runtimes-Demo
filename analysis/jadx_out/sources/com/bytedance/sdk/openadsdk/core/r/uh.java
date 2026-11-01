package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.he;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class uh {

    /* renamed from: d, reason: collision with root package name */
    private static int f3514d = 5;
    private static long dq = 27000;
    private static int ox;
    private int bl;
    private boolean cd;

    /* renamed from: e, reason: collision with root package name */
    private ArrayList<xi> f3515e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3516f;
    private double fw;
    private double gh;
    private boolean h;
    private int i;
    private double ia;
    private int ig;
    private boolean iw;
    private boolean ji;
    private int jy;
    private boolean k;
    private boolean kk;
    private xz kx;
    private int le;
    private boolean mn;
    private int mp;
    private boolean n;
    private String no;
    private double o;
    private String p;
    private int q;
    private int r;
    private int s;
    private boolean wp;

    public uh(JSONObject jSONObject) {
        this.le = 0;
        this.k = false;
        this.wp = false;
        this.f3515e = new ArrayList<>();
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("reward");
        if (optJSONObject != null) {
            JSONArray optJSONArray = optJSONObject.optJSONArray("retain_dialog_config");
            if (optJSONArray != null) {
                this.f3515e = new ArrayList<>();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                    if (optJSONObject2 != null) {
                        this.f3515e.add(new xi(optJSONObject2));
                    }
                }
            }
            this.kx = new xz(optJSONObject);
            this.ji = optJSONObject.optBoolean("endcard_transform_enabled", false);
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("reward_data");
        if (optJSONObject3 != null) {
            this.s = optJSONObject3.optInt(MediationConstant.REWARD_AMOUNT, 0);
            this.p = optJSONObject3.optString(MediationConstant.REWARD_NAME, "");
            this.iw = optJSONObject3.optBoolean("reward_info_show", false);
            this.mp = optJSONObject3.optInt("reward_back_type", 0);
            this.q = optJSONObject3.optInt("reward_backup_timing", 0);
            this.jy = optJSONObject3.optInt("reward_backup_duration", he.UNDEFINED_ITEM_ID);
            this.bl = optJSONObject3.optInt("reward_is_callback", 0);
            this.n = optJSONObject3.optBoolean("reward_need_click", false);
            JSONObject optJSONObject4 = optJSONObject3.optJSONObject("reward_advanced_config");
            if (optJSONObject4 != null) {
                JSONObject optJSONObject5 = optJSONObject4.optJSONObject("easy_playable");
                if (optJSONObject5 != null) {
                    this.mn = optJSONObject5.optBoolean("enable");
                    double optDouble = optJSONObject5.optDouble("propose_reward", 0.0d);
                    this.ia = optDouble;
                    if (optDouble < 0.0d) {
                        this.ia = 0.0d;
                    }
                }
                JSONObject optJSONObject6 = optJSONObject4.optJSONObject("play_complete");
                if (optJSONObject6 != null) {
                    this.kk = optJSONObject6.optBoolean("enable");
                    double optDouble2 = optJSONObject6.optDouble("propose_reward", 0.0d);
                    this.o = optDouble2;
                    if (optDouble2 < 0.0d) {
                        this.o = 0.0d;
                    }
                    this.no = optJSONObject6.optString("tip_toast");
                    this.ig = optJSONObject6.optInt("min_duration");
                }
                JSONObject optJSONObject7 = optJSONObject4.optJSONObject("playable_interactive");
                if (optJSONObject7 != null) {
                    this.f3516f = optJSONObject7.optBoolean("enable");
                    this.fw = optJSONObject7.optDouble("propose_reward", 0.0d);
                }
                JSONObject optJSONObject8 = optJSONObject4.optJSONObject("click_landing");
                if (optJSONObject8 != null) {
                    this.cd = optJSONObject8.optBoolean("enable");
                    this.gh = optJSONObject8.optDouble("propose_reward", 0.0d);
                    this.r = optJSONObject8.optInt("landing_view_time", 5);
                }
            }
        }
        this.i = jSONObject.optInt("reward_full_play_time", 30);
        this.le = jSONObject.optInt("reward_full_time_type", 0);
        this.h = jSONObject.optBoolean("interstitial_bg_transparent", false);
        this.k = jSONObject.optBoolean("__is_use_local_time", false);
        this.wp = jSONObject.optBoolean("__is_click_landing_reward", false);
    }

    public static boolean cd(j jVar) {
        uh h = h(jVar);
        return h != null && h.k && f(jVar) == 1;
    }

    public static int d(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 0;
        }
        return h.s;
    }

    public static int d(j jVar, int i) {
        int i2;
        uh h = h(jVar);
        return (h != null && (i2 = h.jy) > 0) ? Math.min(i, i2) : i;
    }

    public static long d() {
        int i = f3514d;
        if (i < 2) {
            return 5L;
        }
        return i;
    }

    public static void d(com.bytedance.sdk.component.mn.dq dqVar) {
        dq = dqVar.d("reward_time_limited", 27000L);
        f3514d = dqVar.d("reward_force_close_max_count", 5);
        ox = dqVar.d("reward_local_countdown_close_style", 0);
    }

    public static void d(j jVar, boolean z) {
        uh h = h(jVar);
        if (h != null) {
            h.wp = z;
        }
    }

    public static float dq(j jVar, int i) {
        double iw;
        if (i == 0) {
            return 1.0f;
        }
        if (i == 1) {
            iw = iw(jVar);
        } else if (i == 2) {
            iw = ia(jVar);
        } else {
            if (i != 3) {
                return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            iw = ig(jVar);
        }
        return (float) iw;
    }

    public static long dq() {
        return dq;
    }

    public static String dq(j jVar) {
        uh h = h(jVar);
        return h == null ? "" : h.p;
    }

    public static void dq(com.bytedance.sdk.component.mn.dq dqVar) {
        dqVar.dq("reward_time_limited", dq);
        dqVar.dq("reward_force_close_max_count", f3514d);
        dqVar.dq("reward_local_countdown_close_style", ox);
    }

    public static void dq(j jVar, boolean z) {
        uh h = h(jVar);
        if (h != null) {
            h.k = z;
        }
    }

    public static void dq(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject != null) {
            try {
                dq = optJSONObject.optLong("reward_time_limited", 27000L);
                f3514d = optJSONObject.optInt("reward_force_close_max_count", 5);
                ox = optJSONObject.optInt("reward_local_countdown_close_style", 0);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean e(j jVar) {
        uh h = h(jVar);
        return h != null && h.bl == 1;
    }

    public static int f(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 0;
        }
        return h.le;
    }

    public static boolean fw(j jVar) {
        uh h = h(jVar);
        if (h != null && h.k) {
            return gh.p(jVar) || f(jVar) == 1 || f(jVar) == 2;
        }
        return false;
    }

    public static boolean gh(j jVar) {
        uh h = h(jVar);
        if (h != null && h.wp) {
            return mp(jVar);
        }
        return false;
    }

    private static uh h(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.u();
    }

    public static boolean i(j jVar) {
        uh h = h(jVar);
        return h != null && h.q == 1;
    }

    public static double ia(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 0.0d;
        }
        return h.o;
    }

    public static double ig(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 0.0d;
        }
        return h.fw;
    }

    public static double iw(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 0.0d;
        }
        return h.ia;
    }

    public static int jy(j jVar) {
        int i;
        uh h = h(jVar);
        if (h != null && (i = h.i) >= 10 && i <= 60) {
            return i;
        }
        return 30;
    }

    public static boolean k(j jVar) {
        uh h = h(jVar);
        if (h != null) {
            return h.h;
        }
        return false;
    }

    public static String kk(j jVar) {
        uh h = h(jVar);
        return h == null ? "" : TextUtils.isEmpty(h.no) ? "别急着跳过，继续观看完整视频，可获得更多额外奖励～" : h.no;
    }

    public static boolean kx(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.n;
    }

    public static xz le(j jVar) {
        uh h = h(jVar);
        if (h != null) {
            return h.kx;
        }
        return null;
    }

    public static boolean mn(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.kk;
    }

    public static boolean mp(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.cd;
    }

    public static boolean no(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.f3516f;
    }

    public static int o(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 30000;
        }
        int max = Math.max(h.ig, 30);
        return (max <= 60 ? max : 30) * 1000;
    }

    public static boolean ox() {
        return ox == 1;
    }

    public static boolean ox(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.iw;
    }

    public static boolean p(j jVar) {
        uh h = h(jVar);
        return h != null && h.mp == 1;
    }

    public static int q(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return 5;
        }
        return Math.max(5, h.r);
    }

    public static ArrayList<xi> r(j jVar) {
        uh h = h(jVar);
        return h != null ? h.f3515e : new ArrayList<>();
    }

    public static boolean s(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.mn;
    }

    public static boolean wp(j jVar) {
        uh h = h(jVar);
        if (h == null) {
            return false;
        }
        return h.ji;
    }

    public void d(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            ArrayList<xi> arrayList = this.f3515e;
            if (arrayList != null && arrayList.size() != 0) {
                Iterator<xi> it = this.f3515e.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().dq());
                }
            }
            jSONObject2.put("retain_dialog_config", jSONArray);
            xz xzVar = this.kx;
            if (xzVar != null) {
                xzVar.dq(jSONObject2);
            }
            jSONObject2.put("endcard_transform_enabled", this.ji);
            jSONObject.put("reward", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(MediationConstant.REWARD_NAME, this.p);
            jSONObject3.put(MediationConstant.REWARD_AMOUNT, this.s);
            jSONObject3.put("reward_info_show", this.iw);
            jSONObject3.put("reward_back_type", this.mp);
            jSONObject3.put("reward_backup_timing", this.q);
            jSONObject3.put("reward_backup_duration", this.jy);
            jSONObject3.put("reward_is_callback", this.bl);
            jSONObject3.put("reward_need_click", this.n);
            JSONObject jSONObject4 = new JSONObject();
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("enable", this.mn);
            jSONObject5.put("propose_reward", this.ia);
            jSONObject4.put("easy_playable", jSONObject5);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("enable", this.kk);
            jSONObject6.put("propose_reward", this.o);
            jSONObject6.put("tip_toast", this.no);
            jSONObject6.put("min_duration", this.ig);
            jSONObject4.put("play_complete", jSONObject6);
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("enable", this.f3516f);
            jSONObject7.put("propose_reward", this.fw);
            jSONObject4.put("playable_interactive", jSONObject7);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("enable", this.cd);
            jSONObject8.put("propose_reward", this.gh);
            jSONObject8.put("landing_view_time", this.r);
            jSONObject4.put("click_landing", jSONObject8);
            jSONObject3.put("reward_advanced_config", jSONObject4);
            jSONObject.put("reward_data", jSONObject3);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        try {
            jSONObject.put("reward_full_play_time", this.i);
            jSONObject.put("reward_full_time_type", this.le);
            jSONObject.put("interstitial_bg_transparent", this.h);
            jSONObject.put("__is_use_local_time", this.k);
            jSONObject.put("__is_click_landing_reward", this.wp);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }
}
