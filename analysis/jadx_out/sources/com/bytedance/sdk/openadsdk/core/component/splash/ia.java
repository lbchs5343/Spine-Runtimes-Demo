package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.jw;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ia {
    public static void d(j jVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p pVar) {
        if (jVar == null || pVar == null || !wp.d().vw()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_material_duration", pVar.p());
            jSONObject.put("load_resource_duration", pVar.s());
            jSONObject.put("render_duration", pVar.iw());
            jSONObject.put("ren_seq", pVar.d());
            jSONObject.put("real_ren_seq", pVar.ox());
            jSONObject.put("final_t", pVar.ia() ? "cache_ad" : "real_time_ad");
            jSONObject.put("load_t", pVar.kk());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.ox(jVar, "splash_ad", "splash_total_duration", pVar.mn(), jSONObject);
    }

    public static void d(jw jwVar, long j) {
        if (jwVar == null) {
            return;
        }
        jwVar.ox(j);
    }

    private static com.bytedance.sdk.openadsdk.core.gh.dq.ox dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i, j jVar) {
        String str;
        String str2;
        String str3;
        if (jVar != null) {
            str = jVar.fx();
            str3 = jVar.dn();
            str2 = c.mp(jVar);
        } else {
            str = null;
            str2 = null;
            str3 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = c.ia();
        }
        com.bytedance.sdk.openadsdk.core.gh.dq.ox ox = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().iw(str2).dq(i).ox(dVar.mn());
        if (str != null) {
            ox.p(str);
        }
        if (str3 != null) {
            ox.ia(str3);
        }
        return ox;
    }

    public static void dq(Context context, jw jwVar, j jVar, boolean z, long j) {
        if (context == null || jVar == null || jwVar == null || !wp.d().vw()) {
            return;
        }
        boolean z2 = jwVar.p() == 1;
        boolean z3 = jwVar.ia() == 1;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("splash_load_type", jwVar.dq());
            jSONObject.put("server_load_type", jwVar.d());
            jSONObject.put("tmax_type", jwVar.u());
            if (z) {
                jSONObject.put("splash_final_type", "cache_ad");
            } else {
                jSONObject.put("splash_final_type", "real_time_ad");
            }
            jSONObject.put("active_type", jwVar.ox());
            jSONObject.put("splash_creative_type", jwVar.p());
            if (jwVar.k() > 0) {
                if (jwVar.k() == 22) {
                    jSONObject.put("check_cloud_error_code", jwVar.ji());
                }
                jSONObject.put("splash_get_cache_error_code", jwVar.k());
            }
            if (z2) {
                if (z3) {
                    jSONObject.put("cache_image_duration", jwVar.mn());
                } else {
                    jSONObject.put("download_image_duration", jwVar.iw());
                    jSONObject.put("download_client_start_time", jwVar.f());
                    jSONObject.put("download_net_time", jwVar.fw());
                    jSONObject.put("download_client_end_time", jwVar.cd());
                    jSONObject.put("img_conttype", jwVar.h());
                    jSONObject.put("img_net_bframe_time", jwVar.bl());
                    jSONObject.put("img_net_aframe_time", jwVar.n());
                }
                if (!z) {
                    jSONObject.put("client_start_time", jwVar.ig());
                    jSONObject.put("network_time", jwVar.mp());
                    jSONObject.put("sever_time", jwVar.q());
                    jSONObject.put("client_end_time", jwVar.jy());
                }
                jSONObject.put("load_duration", jwVar.s());
                jSONObject.put("image_resolution", jwVar.o());
                jSONObject.put("image_cachetype", jwVar.ia());
                jSONObject.put("image_size", jwVar.kk());
            }
            if (jwVar.wp() > 0) {
                jSONObject.put("real_user_duration", j - jwVar.wp());
            }
            jSONObject.put("sdk_parallel_load", 1);
            jSONObject.put("switch_thread_time", jwVar.e());
            jSONObject.put("on_call_back_time", jwVar.kx());
            jSONObject.put("load_suc_time", jwVar.op());
            jSONObject.put("is_boost", com.bytedance.sdk.openadsdk.core.ox.s.ox());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, "splash_ad", "splash_ad_loadtime", j - jwVar.r(), jSONObject);
    }

    public static void dq(j jVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p pVar) {
        if (pVar == null || jVar == null || !wp.d().vw()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_control", pVar.dq());
            jSONObject.put("render_sequence", pVar.d());
            jSONObject.put("real_render_sequence", pVar.ox());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.d(jVar, "splash_ad", "splash_render_duration", pVar.iw(), jSONObject);
    }

    public static void dq(j jVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.p pVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk kkVar) {
        if (jVar == null || kkVar == null) {
            return;
        }
        if (jVar.ce() == 1) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "自渲染 ");
            pVar.ox(99);
        } else if (kkVar.d()) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "模版兜底 ");
            pVar.ox(99);
        } else {
            int dr = jVar.dr();
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("Splash_FullLink", "模版渲染 ".concat(String.valueOf(dr)));
            pVar.ox(dr);
        }
    }

    public static void dq(j jVar, jw jwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
        if (jVar == null || jwVar == null || iaVar == null || iaVar.iw() || jwVar.ia() == 1 || !wp.d().vw()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("image_size", jwVar.kk());
            jSONObject.put("image_resolution", jwVar.o());
            jSONObject.put("download_client_start_time", jwVar.f());
            jSONObject.put("download_net_time", jwVar.fw());
            jSONObject.put("download_client_end_time", jwVar.cd());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, "splash_ad", "download_image_duration", System.currentTimeMillis() - jwVar.gh(), jSONObject);
    }

    public static void dq(jw jwVar) {
        if (jwVar == null) {
            return;
        }
        jwVar.dq(System.currentTimeMillis() - jwVar.r());
    }

    public static void dq(jw jwVar, int i) {
        if (jwVar == null || jwVar.u() >= i) {
            return;
        }
        jwVar.mn(i);
    }

    public static void dq(jw jwVar, long j) {
        if (jwVar == null) {
            return;
        }
        jwVar.d(j);
    }

    public static void dq(jw jwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar) {
        if (jwVar == null || iaVar == null) {
            return;
        }
        if (iaVar.iw()) {
            jwVar.p(2);
        } else {
            jwVar.p(1);
        }
    }

    public static void dq(jw jwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, long j) {
        if (jwVar == null || iaVar == null) {
            return;
        }
        long ia = iaVar.ia();
        jwVar.o(j - ia);
        jwVar.r(iaVar.kk() - ia);
    }

    public static void dq(jw jwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.ia iaVar, long j, j jVar) {
        if (iaVar == null || jwVar == null || jVar == null) {
            return;
        }
        if (!iaVar.iw()) {
            kk.dq(j, false, true, jVar, 0L, "loadSuccess");
            if (iaVar.mn()) {
                d(jwVar, SystemClock.elapsedRealtime() - j);
            } else {
                dq(jwVar, SystemClock.elapsedRealtime() - j);
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, "splash_ad", SystemClock.elapsedRealtime() - j);
            }
        }
        dq(jwVar, iaVar.mn());
        dq(jwVar, iaVar.p(), iaVar.o());
        dq(jwVar, iaVar, System.currentTimeMillis());
        dq(jwVar, iaVar.q());
    }

    public static void dq(jw jwVar, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw iwVar) {
        if (jwVar == null || iwVar == null) {
            return;
        }
        long iw = iwVar.iw();
        long ia = iwVar.ia();
        long mn = iwVar.mn();
        long kk = iwVar.kk();
        jwVar.p(iw);
        jwVar.s(mn);
        jwVar.iw(ia);
        jwVar.mn(kk);
    }

    public static void dq(jw jwVar, com.bytedance.sdk.openadsdk.core.le.dq.d dVar, Map<String, String> map) {
        if (dVar == null || jwVar == null) {
            return;
        }
        int d2 = dVar.d();
        if (jwVar.kk() == 0.0d) {
            jwVar.dq(d2 / 1024.0f);
        }
        Bitmap dq = dVar.dq();
        if (dq != null && TextUtils.isEmpty(jwVar.o())) {
            jwVar.dq(dq.getWidth() + "X" + dq.getHeight());
        }
        if (map == null || map.size() <= 0 || jwVar.no() != null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    jSONObject.put(str, map.get(str));
                } catch (Exception unused) {
                }
            }
        }
        jwVar.dq(jSONObject);
    }

    public static void dq(jw jwVar, jw jwVar2) {
        if (jwVar == null || jwVar2 == null) {
            return;
        }
        jwVar.ig(System.currentTimeMillis());
        jwVar2.ig(System.currentTimeMillis());
        if (!le.ox.get()) {
            jwVar.ox(1);
            jwVar2.ox(1);
        } else {
            jwVar.ox(0);
            jwVar2.ox(0);
            le.ox.set(false);
        }
    }

    public static void dq(jw jwVar, jw jwVar2, nh nhVar, int i, int i2) {
        if (jwVar == null || jwVar2 == null) {
            return;
        }
        jwVar.dq(i);
        jwVar.d(i2);
        jwVar.jy(nhVar.kk);
        jwVar2.dq(i);
        jwVar2.d(i2);
        jwVar2.jy(nhVar.kk);
    }

    public static void dq(jw jwVar, String str) {
        if (jwVar == null) {
            return;
        }
        jwVar.d(str);
    }

    public static void dq(jw jwVar, boolean z) {
        if (jwVar == null) {
            return;
        }
        if (z) {
            jwVar.s(1);
        } else {
            jwVar.s(2);
        }
    }

    public static void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final long j) {
        if (dVar == null) {
            return;
        }
        ig.dq().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ia.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("publisher_timeout_control", j);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(3).ox(dVar.mn()).iw(c.ia()).d(jSONObject.toString());
            }
        });
    }

    public static void dq(boolean z, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (jVar == null || dVar == null) {
            return;
        }
        final com.bytedance.sdk.openadsdk.core.gh.dq.ox dq = dq(dVar, z ? 4 : 3, jVar);
        if (dq == null) {
            return;
        }
        ig.dq().p(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ia.4
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.this;
            }
        });
    }

    public static void dq(boolean z, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar) {
        if (dVar == null || mnVar == null) {
            return;
        }
        final com.bytedance.sdk.openadsdk.core.gh.dq.ox dq = dq(dVar, z ? 4 : 3, jVar);
        if (dq == null) {
            return;
        }
        ig.dq().ox(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ia.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                int i;
                int i2;
                JSONObject jSONObject = new JSONObject();
                com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar2 = com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn.this;
                if (mnVar2 != null) {
                    i = mnVar2.ia();
                    i2 = com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn.this.p();
                } else {
                    i = 1;
                    i2 = -1;
                }
                try {
                    jSONObject.put("if_have_cache", i);
                    jSONObject.put("if_have_rt_ads", i2);
                } catch (Throwable unused) {
                }
                return dq.d(jSONObject.toString());
            }
        });
    }

    public static void dq(boolean z, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final boolean z2, final boolean z3) {
        if (jVar == null || dVar == null) {
            return;
        }
        final com.bytedance.sdk.openadsdk.core.gh.dq.ox dq = dq(dVar, z ? 4 : 3, jVar);
        if (dq == null) {
            return;
        }
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.ia.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!z3) {
                        jSONObject.put("image_CacheType", z2 ? 1 : 2);
                    }
                } catch (Throwable unused) {
                }
                return dq.d(jSONObject.toString());
            }
        });
    }

    public static void ox(jw jwVar, long j) {
        if (jwVar == null) {
            return;
        }
        jwVar.no(j);
    }

    public static void p(jw jwVar, long j) {
        if (jwVar != null) {
            jwVar.f(System.currentTimeMillis() - j);
        }
    }
}
