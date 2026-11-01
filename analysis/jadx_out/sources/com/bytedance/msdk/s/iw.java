package com.bytedance.msdk.s;

import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.gh;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private static int f1250d;
    private static int dq;
    private static int ox;

    public static void d() {
        p d2 = p.d();
        d2.dq("start_up");
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, (Map<String, Object>) null);
    }

    public static void d(long j) {
        p d2 = p.d();
        d2.dq("sdk_backstage").dq(j);
        HashMap hashMap = new HashMap();
        com.bytedance.msdk.mn.dq.dq.jy().ox(hashMap);
        hashMap.put("v3", bl.mn("v3"));
        hashMap.put("v1", bl.mn("v1"));
        hashMap.put("v2Enc_config", bl.mn("v2Enc_config"));
        hashMap.put("v4Enc_config", bl.mn("v4Enc_config"));
        hashMap.put("v2Enc_exchange", bl.mn("v2Enc_exchange"));
        hashMap.put("v4Enc_exchange", bl.mn("v4Enc_exchange"));
        hashMap.put("v2Enc_reward", bl.mn("v2Enc_reward"));
        hashMap.put("v4Enc_reward", bl.mn("v4Enc_reward"));
        hashMap.put("enable_label_return", Integer.valueOf(com.bytedance.msdk.core.dq.d().ce() ? 1 : 0));
        hashMap.put("if_labelapi_call", Integer.valueOf(com.bytedance.msdk.core.d.no().dq() ? 1 : 0));
        hashMap.put("adn_init_duration", com.bytedance.msdk.iw.d.s.d());
        if (!TextUtils.isEmpty(com.bytedance.msdk.core.dq.dq.dq.dq)) {
            hashMap.put("unSupportedGdtVersion", com.bytedance.msdk.core.dq.dq.dq.dq);
            com.bytedance.msdk.core.dq.dq.dq.dq = null;
        }
        JSONArray p = bl.p();
        if (p != null) {
            p.length();
            hashMap.put("sp_v3_bug", p);
        }
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void d(com.bytedance.msdk.api.dq.d dVar, int i) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, i);
    }

    public static void d(com.bytedance.msdk.api.dq.d dVar, String str) {
        p d2 = p.d();
        d2.dq("mt_ra_cc").dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void d(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, int i, String str, long j, String str2, boolean z) {
        p d2 = p.d();
        d2.dq("media_click_listen").dq("adn_preload", Integer.valueOf((sVar == null || !sVar.h()) ? 0 : 1)).dq("play_again", Integer.valueOf(i)).dq("is_repeat", Integer.valueOf(z ? 1 : 0));
        if (str != null) {
            d2.dq("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            d2.dq("callstack_message", str2);
        }
        HashMap hashMap = new HashMap();
        boolean z2 = j >= 0;
        if (sVar != null && sVar.zc()) {
            hashMap.put("custom_adn_sample_ratio", Double.valueOf(r.dq()));
            hashMap.put("custom_adn_sample_ratio_result", Boolean.valueOf(z2));
            if (z2) {
                hashMap.put("custom_adn_rec_time", Long.valueOf(j));
            }
        }
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void d(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, int i, String str, long j, boolean z) {
        d(sVar, dVar, i, str, j, null, z);
    }

    public static void dq() {
        p d2 = p.d();
        d2.dq("mediation_sdk_init");
        HashMap hashMap = new HashMap();
        hashMap.put("call_init_time", Long.valueOf(com.bytedance.sdk.gromore.init.iw.dq));
        hashMap.put("call_init_csj_start_time", Long.valueOf(com.bytedance.sdk.gromore.init.iw.f2363d));
        hashMap.put("call_init_csj_end_time", Long.valueOf(com.bytedance.sdk.gromore.init.iw.ox));
        hashMap.put("call_init_csj_duration", Long.valueOf(com.bytedance.sdk.gromore.init.iw.f2363d - com.bytedance.sdk.gromore.init.iw.dq));
        hashMap.put("init_csj_duration", Long.valueOf(com.bytedance.sdk.gromore.init.iw.ox - com.bytedance.sdk.gromore.init.iw.f2363d));
        hashMap.put("call_init_gromore_start_time", Long.valueOf(com.bytedance.sdk.gromore.init.iw.p));
        hashMap.put("call_init_gromore_end_time", Long.valueOf(com.bytedance.sdk.gromore.init.iw.s));
        hashMap.put("call_init_gromore_duration", Long.valueOf(com.bytedance.sdk.gromore.init.iw.p - com.bytedance.sdk.gromore.init.iw.dq));
        hashMap.put("init_gromore_duration", Long.valueOf(com.bytedance.sdk.gromore.init.iw.s - com.bytedance.sdk.gromore.init.iw.p));
        hashMap.put("init_total_duration", Long.valueOf(com.bytedance.sdk.gromore.init.iw.s - com.bytedance.sdk.gromore.init.iw.dq));
        dq(d2, (com.bytedance.msdk.api.dq.d) null, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(int i, int i2, long j, boolean z, boolean z2, JSONObject jSONObject, long j2, JSONObject jSONObject2) {
        p d2 = p.d();
        boolean s = com.bytedance.msdk.mn.s.dq().s("is_config_from_assert");
        if (i != 1) {
            i = (z || (i == 0 && s)) ? 2 : 0;
        }
        d2.setResult(i).dq(j).dq("get_config_final").iw(i2).d(i2).dq("transparent_params", com.bytedance.msdk.core.dq.d().kk());
        HashMap hashMap = new HashMap();
        com.bytedance.msdk.core.o.p.dq(z2, d2, jSONObject, hashMap);
        if (jSONObject2 != null) {
            hashMap.put("cfg_handle_time", jSONObject2);
        }
        hashMap.put("config_size", Long.valueOf(j2));
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(long j) {
        String str;
        p d2 = p.d();
        d2.dq("sdk_init").ox(j);
        bl kk = com.bytedance.msdk.mn.s.kk();
        boolean s = kk.s("check_unity3d");
        long p = kk.p("check_unity3d_time");
        long currentTimeMillis = System.currentTimeMillis();
        if (s && currentTimeMillis - p > 2592000000L) {
            try {
                Class.forName("com.unity3d.player.UnityPlayer");
                str = "unity_pure";
                try {
                    Class.forName("com.bytedance.android.NativeAdManager");
                    str = MediationConstant.ADN_UNITY;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                str = null;
            }
            if (str != null) {
                d2.dq("develop_type", str);
            }
            kk.dq("check_unity3d", true);
            kk.dq("check_unity3d_time", currentTimeMillis);
        }
        HashMap hashMap = new HashMap();
        int iw = com.bytedance.msdk.mn.ox.dq.dq().iw();
        if (iw > 0) {
            com.bytedance.msdk.mn.ox.dq.dq().mn();
            hashMap.put("discard_num", Integer.valueOf(iw));
        }
        hashMap.put("csj_plugin_version", com.bytedance.msdk.iw.ox.ox());
        JSONObject s2 = bl.s();
        if (s2 != null) {
            hashMap.put("init_time", s2);
        }
        bl.dq(hashMap);
        bl.d(hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(long j, int i, int i2, long j2, JSONObject jSONObject, Map<String, Object> map) {
        p d2 = p.d();
        d2.dq("sdk_init_end");
        d2.dq(j);
        d2.ox(j2);
        d2.dq("adn_count", Integer.valueOf(i));
        HashMap hashMap = new HashMap();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        hashMap.put("is_from_local_config", Integer.valueOf(i2));
        hashMap.put("adapter_version_list", com.bytedance.msdk.ia.mn.dq());
        if (jSONObject != null) {
            hashMap.put("local_init_time", jSONObject);
        }
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, int i) {
        p d2 = p.d();
        d2.dq("media_carousel_fail").d(i).o(com.bytedance.msdk.api.dq.dq(i));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        d2.dq("is_video_cache_success", 0);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.dq dqVar, String str, String str2) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, dqVar, str, str2);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.p.d dVar2, String str, int i) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, dVar2, str, i);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, long j, String str) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, sVar, j, str);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, com.bytedance.msdk.core.no.no noVar) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, sVar, noVar);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, String str) {
        p d2 = p.d();
        d2.dq("rit_cache_cannot_use").dq("cache_invalid_info", str);
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        d2.dq("mediationrit_req_type", 2);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, String str) {
        p d2 = p.d();
        d2.dq("media_will_show").dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, String str, int i) {
        p d2 = p.d();
        d2.dq("mt_ra_c").d(i).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, String str, int i, int i2) {
        p d2 = p.d();
        d2.dq("mt_ra_s").d(i).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str));
        HashMap hashMap = new HashMap();
        hashMap.put("pre_req", Integer.valueOf(i2));
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, String str, String str2) {
        p d2 = p.d();
        d2.dq("cache_cannot_use").dq("cache_invalid_info", str).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str2));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, String str, JSONObject jSONObject) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, str, jSONObject);
    }

    public static void dq(com.bytedance.msdk.api.dq.d dVar, String str, boolean z, String str2, int i, Map<String, Object> map) {
        if (dVar != null) {
            com.bytedance.sdk.gromore.d.dq.dq().dq(dVar.dq(), dq.ox);
        }
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dVar, str, z, str2, i, map);
    }

    public static void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.no noVar, int i, int i2, int i3, String str, long j) {
        p d2 = p.d();
        d2.dq("bidding_adm_load_fail").dq(j).iw(str).d(dqVar != null ? dqVar.ox : -1).o(dqVar != null ? dqVar.p : "unknown error").dq("adn_count", Integer.valueOf(i)).dq("adn_preload", 0).dq("mediationrit_req_type", Integer.valueOf(i2)).dq("mediationrit_req_type_src", Integer.valueOf(i3));
        if (dqVar instanceof com.bytedance.msdk.api.d.dq) {
            d2.q = dqVar.dq;
            d2.no = dqVar.f756d;
        }
        HashMap hashMap = new HashMap();
        dq(d2, dVar, noVar, (com.bytedance.msdk.d.s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.no noVar, int i, int i2, int i3, String str, long j, String str2, String str3, String str4, long j2) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), dqVar, dVar, noVar, i, i2, i3, str, j, str2, str3, str4, j2);
    }

    public static void dq(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.api.dq.d dVar, int i, int i2) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), noVar, dVar, i, i2);
    }

    public static void dq(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, int i, String str) {
        p d2 = p.d();
        p dq2 = d2.dq("bidding_info_invalid").d(i).o(str).dq("ad_count", Integer.valueOf(dVar != null ? dVar.h() : 0));
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d());
        dq2.dq("grouping_params", com.bytedance.msdk.core.f.d.d()).dq("log_source", 2);
        HashMap hashMap = new HashMap();
        dq(d2, dVar, noVar, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.api.dq.d dVar, String str) {
        p.d();
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), noVar, dVar, str);
    }

    public static void dq(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.api.dq.d dVar, String str, boolean z, int i, int i2, int i3, int i4, com.bytedance.msdk.api.dq dqVar, long j, boolean z2, boolean z3) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), noVar, dVar, str, z, i, i2, i3, i4, dqVar, j, z2, z3);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, int i, String str, long j, com.bytedance.msdk.api.dq.d dVar, int i2, int i3, int i4, String str2, long j2, long j3) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), sVar, i, str, j, dVar, i2, i3, i4, str2, j2, j3);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, int i, int i2, int i3, String str) {
        p d2 = p.d();
        d2.setResult(i2).dq("media_show_after").dq("play_again", Integer.valueOf(i3)).dq(MediationConstant.KEY_REASON, Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            d2.dq("callstack_message", str);
        }
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, int i, String str, long j, int i2, int i3, String str2) {
        com.bytedance.msdk.core.f.ox d2;
        com.bytedance.msdk.core.no.d dq2;
        p d3 = p.d();
        d3.dq("media_reward_verify").dq("adn_preload", Integer.valueOf((sVar == null || !sVar.h()) ? 0 : 1)).dq(MediationConstant.KEY_REASON, Integer.valueOf(i2)).dq("play_again", Integer.valueOf(i));
        if (i3 != 0 && i3 != 20000) {
            d3.d(i3).o(str2);
        }
        HashMap hashMap = new HashMap();
        boolean z = j >= 0;
        if (sVar != null && sVar.zc()) {
            hashMap.put("custom_adn_sample_ratio", Double.valueOf(r.dq()));
            hashMap.put("custom_adn_sample_ratio_result", Boolean.valueOf(z));
            if (z) {
                hashMap.put("custom_adn_rec_time", Long.valueOf(j));
            }
        }
        if (dVar != null && (d2 = com.bytedance.msdk.core.dq.d()) != null && (dq2 = d2.dq(dVar.k(), dVar.le(), 101)) != null) {
            hashMap.put("reward_callback_type", Integer.valueOf(dq2.ob()));
            hashMap.put("reward_start_time", Integer.valueOf(dq2.vf()));
        }
        if (str != null) {
            d3.dq("sub_adn_name", str);
        }
        dq(d3, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d3, hashMap);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, int i, String str, long j, String str2, boolean z) {
        p d2 = p.d();
        d2.dq("media_show_listen").dq("adn_preload", Integer.valueOf((sVar == null || !sVar.h()) ? 0 : 1)).dq("play_again", Integer.valueOf(i)).dq("is_repeat", Integer.valueOf(z ? 1 : 0));
        if (str != null) {
            d2.dq("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            d2.dq("callstack_message", str2);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("enable_label_return", Integer.valueOf(com.bytedance.msdk.core.dq.d().ce() ? 1 : 0));
        hashMap.put("if_labelapi_call", Integer.valueOf(com.bytedance.msdk.core.d.no().dq() ? 1 : 0));
        com.bytedance.msdk.core.d.ox.dq(sVar, dVar, hashMap);
        boolean z2 = j >= 0;
        if (sVar != null && sVar.zc()) {
            hashMap.put("custom_adn_sample_ratio", Double.valueOf(r.dq()));
            hashMap.put("custom_adn_sample_ratio_result", Boolean.valueOf(z2));
            if (z2) {
                hashMap.put("custom_adn_rec_time", Long.valueOf(j));
            }
        }
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, int i, String str, long j, boolean z) {
        dq(sVar, dVar, i, str, j, (String) null, z);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.dq dqVar, int i, int i2, String str, long j) {
        dq(sVar, dVar, dqVar, i, i2, str, j, (String) null);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.dq dqVar, int i, int i2, String str, long j, String str2) {
        p d2 = p.d();
        d2.setResult(i).d(dqVar != null ? dqVar.ox : 0).o(dqVar != null ? dqVar.p : null).dq("media_show_fail_listen").dq("play_again", Integer.valueOf(i2));
        if (str != null) {
            d2.dq("sub_adn_name", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            d2.dq("callstack_message", str2);
        }
        HashMap hashMap = new HashMap();
        boolean z = j >= 0;
        if (sVar != null && sVar.zc()) {
            hashMap.put("custom_adn_sample_ratio", Double.valueOf(r.dq()));
            hashMap.put("custom_adn_sample_ratio_result", Boolean.valueOf(z));
            if (z) {
                hashMap.put("custom_adn_rec_time", Long.valueOf(j));
            }
        }
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.d dVar2, long j, String str, boolean z, int i, boolean z2, boolean z3) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), sVar, dVar, dVar2, j, str, z, i, z2, z3);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.no noVar) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), sVar, dVar, noVar);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.no noVar, long j) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), sVar, dVar, noVar, j);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, String str) {
        p d2 = p.d();
        d2.dq("media_show_dislike").o(str);
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p d2 = p.d();
        d2.dq("callstack_static").dq("callstack_message", str).dq("callstack_report_time", Integer.valueOf(i));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, List<com.bytedance.msdk.d.s> list, List<com.bytedance.msdk.d.s> list2) {
        com.bytedance.msdk.s.ox.dq.dq().dq(p.ox(), sVar, dVar, list, list2);
    }

    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, boolean z, int i) {
        p d2 = p.d();
        d2.dq("media_show").dq("adn_preload", Integer.valueOf((sVar == null || !sVar.h()) ? 0 : 1)).dq("play_again", Integer.valueOf(i)).dq("is_repeat", Integer.valueOf(z ? 1 : 0));
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x021e  */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.util.Map, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r15v9, types: [java.util.HashMap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.d.s sVar, Map<String, Object> map) {
        int[] iArr;
        int[] iArr2;
        Object obj;
        String dq2;
        if (pVar != null) {
            HashMap hashMap = map;
            if (dVar != null) {
                p dq3 = pVar.d(dVar.k()).p(dVar.dq()).ox(dVar.l()).d(dVar.ob()).s(dVar.le()).dq("if_test", Integer.valueOf(dVar.s() != 1 ? 0 : dVar.s())).dq("segment_id", Integer.valueOf(dVar.xz())).dq("segment_version", dVar.yy()).dq("waterfall_extra", dVar.v()).dq("transparent_params", dVar.iw());
                StringBuilder sb = new StringBuilder();
                sb.append(dVar.ox());
                dq3.dq("primerit_req_type", sb.toString()).dq("req_type", Integer.valueOf(dVar.p())).dq("parallel_type", Integer.valueOf(dVar.gx())).dq("req_parallel_num", Integer.valueOf(dVar.by()));
                if (dVar.t() > 0.0d) {
                    pVar.dq("waterfall_bidfloor", Double.valueOf(dVar.t()));
                }
                if (dVar.wp() != null) {
                    pVar.dq("scenario_id", dVar.wp());
                }
                Map<String, Object> wn = dVar.wn();
                if (wn != null) {
                    try {
                        obj = wn.get(MediationConstant.PANGLE_VID);
                    } catch (Throwable th) {
                        th = th;
                        iArr = null;
                    }
                    if (obj instanceof int[]) {
                        iArr2 = (int[]) obj;
                        if (iArr2 != null && iArr2.length > 0 && map != 0) {
                            dq2 = gh.dq(iArr2);
                            if (!TextUtils.isEmpty(dq2)) {
                                map.put("external_vid", dq2);
                            }
                        }
                        if (map == 0) {
                            map = new HashMap<>();
                        }
                        map.put("is_ra", Integer.valueOf(dVar.ia()));
                        map.put("ad_req_optmize", Integer.valueOf(dVar.mn() ? 1 : 0));
                        hashMap = map;
                        if (!TextUtils.isEmpty(dVar.vf())) {
                            map.put("mediation_map_request", 1);
                            hashMap = map;
                        }
                    } else if (obj instanceof Integer[]) {
                        Integer[] numArr = (Integer[]) obj;
                        iArr = new int[numArr.length];
                        for (int i = 0; i < numArr.length; i++) {
                            try {
                                iArr[i] = numArr[i].intValue();
                            } catch (Throwable th2) {
                                th = th2;
                                th.printStackTrace();
                                iArr2 = iArr;
                                if (iArr2 != null) {
                                }
                                if (map == 0) {
                                }
                                map.put("is_ra", Integer.valueOf(dVar.ia()));
                                map.put("ad_req_optmize", Integer.valueOf(dVar.mn() ? 1 : 0));
                                hashMap = map;
                                if (!TextUtils.isEmpty(dVar.vf())) {
                                }
                                HashMap hashMap2 = hashMap;
                                if (noVar != null) {
                                }
                                if (sVar != null) {
                                }
                                if (dVar != null) {
                                }
                                if (TextUtils.equals(pVar.ox, MediationConstant.ADN_PANGLE)) {
                                    pVar.dq("sub_adn_name", "pangleoppo");
                                }
                                if (TextUtils.equals(pVar.ox, MediationConstant.ADN_GDT)) {
                                }
                                pVar.dq("isFusion", Boolean.TRUE);
                            }
                        }
                        iArr2 = iArr;
                        if (iArr2 != null) {
                            dq2 = gh.dq(iArr2);
                            if (!TextUtils.isEmpty(dq2)) {
                            }
                        }
                        if (map == 0) {
                        }
                        map.put("is_ra", Integer.valueOf(dVar.ia()));
                        map.put("ad_req_optmize", Integer.valueOf(dVar.mn() ? 1 : 0));
                        hashMap = map;
                        if (!TextUtils.isEmpty(dVar.vf())) {
                        }
                    }
                }
                iArr2 = null;
                if (iArr2 != null) {
                }
                if (map == 0) {
                }
                map.put("is_ra", Integer.valueOf(dVar.ia()));
                map.put("ad_req_optmize", Integer.valueOf(dVar.mn() ? 1 : 0));
                hashMap = map;
                if (!TextUtils.isEmpty(dVar.vf())) {
                }
            }
            HashMap hashMap22 = hashMap;
            if (noVar != null) {
                pVar.s(noVar.jy()).ia(noVar.cd()).ox(noVar.wp()).p(noVar.e()).dq(noVar.gh()).kk(String.valueOf(noVar.k())).no(noVar.q()).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(noVar.kx())).dq("server_bidding_extra", noVar.h()).dq("origin_type", Integer.valueOf(noVar.o())).dq("sub_adtype", Integer.valueOf(noVar.iw()));
                if (noVar.ji() != null) {
                    String ox2 = noVar.ji().ox();
                    String p = noVar.ji().p();
                    pVar.dq("pricing_type", Integer.valueOf(noVar.ji().dq()));
                    if (!TextUtils.isEmpty(ox2)) {
                        pVar.dq("m_aid", ox2);
                    }
                    if (!TextUtils.isEmpty(p) && hashMap != null) {
                        hashMap.put("ad_extra", p);
                    }
                }
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put("if_reuse", Integer.valueOf(noVar.kk()));
                hashMap22 = hashMap;
            }
            if (sVar != null) {
                pVar.s(sVar.m()).ia(sVar.b()).s(sVar.qz()).dq(sVar.y()).no(sVar.io()).mn(sVar.iw()).iw(sVar.cc()).ox(sVar.ae()).p(sVar.wq()).kk(String.valueOf(sVar.dk())).dq(sVar.pa()).dq("mediationrit_req_type", Integer.valueOf(sVar.ia(dVar != null ? dVar.dq() : null))).dq("mediationrit_req_type_src", Integer.valueOf(sVar.kk(dVar != null ? dVar.dq() : null))).dq("origin_type", Integer.valueOf(sVar.dc())).dq("sub_adtype", Integer.valueOf(sVar.cv()));
                if (sVar.qz() == 8 || sVar.qz() == 7) {
                    pVar.dq("is_video_cache_success", Integer.valueOf(sVar.fx() ? 1 : 0)).dq("is_mock_video_cache_api", Integer.valueOf(1 ^ (sVar.e() ? 1 : 0)));
                }
                if (!TextUtils.isEmpty(sVar.ij())) {
                    pVar.dq("level_tag", sVar.ij());
                }
                String vw = sVar.vw();
                String ha = sVar.ha();
                if (!TextUtils.isEmpty(vw) && !TextUtils.equals(pVar.dq, "media_show_fail")) {
                    pVar.dq("m_aid", vw);
                }
                if (!TextUtils.isEmpty(ha) && hashMap22 != null) {
                    hashMap22.put("ad_extra", ha);
                }
                if (TextUtils.equals(pVar.dq, "bidding_win_event")) {
                    if (!TextUtils.isEmpty(sVar.v())) {
                        pVar.dq("win_callback", sVar.v());
                    }
                    if (!TextUtils.isEmpty(sVar.ds())) {
                        pVar.dq("fail_callback", sVar.ds());
                    }
                }
                if (sVar.ip()) {
                    pVar.dq("pricing_type", Integer.valueOf(sVar.xz()));
                }
                if (hashMap22 == null) {
                    hashMap22 = new HashMap();
                }
                hashMap22.put("if_reuse", Integer.valueOf(sVar.vf()));
                hashMap22.put("timeout_req", Integer.valueOf(sVar.l() ? 1 : 0));
                hashMap22.put("is_callback", Integer.valueOf(sVar.ob() ? 1 : 0));
            }
            if (dVar != null) {
                String str = dVar.dq() + "_";
                if (noVar != null) {
                    StringBuilder o = awf.o(str);
                    o.append(noVar.cd());
                    pVar.dq("client_req_id", o.toString());
                } else if (sVar != null) {
                    StringBuilder o2 = awf.o(str);
                    o2.append(sVar.b());
                    pVar.dq("client_req_id", o2.toString());
                }
            }
            if (TextUtils.equals(pVar.ox, MediationConstant.ADN_PANGLE) && com.bytedance.msdk.core.d.no().ce()) {
                pVar.dq("sub_adn_name", "pangleoppo");
            }
            if (TextUtils.equals(pVar.ox, MediationConstant.ADN_GDT)) {
                if (com.bytedance.sdk.gromore.init.dq.dq() >= 6300 && com.bytedance.msdk.core.dq.dq.dq.d() != -1) {
                    if (TextUtils.equals(pVar.dq, "media_request")) {
                        hashMap22.put("adapter_plugin_loader", Integer.valueOf(com.bytedance.msdk.core.dq.dq.dq.d()));
                    }
                    if (TextUtils.equals(pVar.dq, "media_fill") || TextUtils.equals(pVar.dq, "media_fill_fail") || TextUtils.equals(pVar.dq, "media_show") || TextUtils.equals(pVar.dq, "media_show_listen")) {
                        hashMap22.put("adapter_plugin_loader", Integer.valueOf(com.bytedance.msdk.core.dq.dq.dq.d()));
                        hashMap22.put("adapter_plugin_status", Integer.valueOf(com.bytedance.msdk.core.dq.dq.dq.ox(dVar)));
                    }
                }
                hashMap22.put("is_dex_adapter", Integer.valueOf(com.bytedance.msdk.core.dq.dq.dq.dq(MediationConstant.ADN_GDT) ? 1 : 0));
            }
            pVar.dq("isFusion", Boolean.TRUE);
        }
    }

    public static void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p d2 = p.d();
        d2.dq("callstack_dynamic");
        d2.dq("callstack_message", str);
        d2.dq("callstack_report_time", 1);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, (Map<String, Object>) null);
    }

    public static void dq(String str, com.bytedance.msdk.d.s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.api.dq dqVar) {
        p d2 = p.d();
        p o = d2.d(dqVar != null ? dqVar.dq : 0).o(dqVar != null ? dqVar.f756d : null);
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        o.s(str).dq("custom_adn_init_fail");
        HashMap hashMap = new HashMap();
        dq(d2, dVar, noVar, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq.d dVar, int i) {
        com.bytedance.msdk.d.s sVar = (list == null || list.size() <= 0) ? null : list.get(0);
        p d2 = p.d();
        d2.dq("media_show_fail");
        if (i == 0) {
            d2.d(40052);
            if (sVar != null) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (com.bytedance.msdk.d.s sVar2 : list) {
                        if (sVar2 != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("adn", sVar2.m());
                            jSONObject.put("type", com.bytedance.msdk.d.dq.dq(sVar2.qz(), sVar2.cv()));
                            jSONObject.put("adnSlotId", sVar2.b());
                            jSONObject.put("loadSort", sVar2.ae());
                            jSONObject.put("showSort", sVar2.wq());
                            if (dVar != null) {
                                jSONObject.put("isReady", sVar2.u(dVar.k()) ? 1 : 0);
                            }
                            jSONObject.put("hasShown", sVar2.xi() ? 1 : 0);
                            jSONArray.put(jSONObject);
                        }
                    }
                    d2.o(jSONArray.toString());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        } else {
            d2.d(i);
            d2.o(com.bytedance.msdk.api.dq.dq(i));
        }
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        d2.dq("is_video_cache_success", 0);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(List<com.bytedance.msdk.d.s> list, List<com.bytedance.msdk.d.s> list2, List<com.bytedance.msdk.d.s> list3, com.bytedance.msdk.api.dq.d dVar, String str, int i) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            arrayList.addAll(list);
        }
        if (list2 != null && list2.size() > 0) {
            arrayList.addAll(list2);
        }
        if (list3 != null && list3.size() > 0) {
            arrayList.addAll(list3);
        }
        int i2 = 0;
        com.bytedance.msdk.d.s sVar = arrayList.size() > 0 ? (com.bytedance.msdk.d.s) arrayList.get(0) : null;
        p d2 = p.d();
        d2.dq("media_show_is_ready").dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str));
        if (i == 0) {
            try {
                JSONArray jSONArray = new JSONArray();
                Iterator it = arrayList.iterator();
                loop0: while (true) {
                    z = false;
                    while (it.hasNext()) {
                        com.bytedance.msdk.d.s sVar2 = (com.bytedance.msdk.d.s) it.next();
                        if (sVar2 != null) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("adn", sVar2.m());
                            jSONObject.put("type", com.bytedance.msdk.d.dq.dq(sVar2.qz(), sVar2.cv()));
                            jSONObject.put("adnSlotId", sVar2.b());
                            jSONObject.put("loadSort", sVar2.ae());
                            jSONObject.put("showSort", sVar2.wq());
                            if (dVar != null) {
                                jSONObject.put("isReady", sVar2.u(dVar.k()) ? 1 : 0);
                            }
                            jSONObject.put("hasShown", sVar2.xi() ? 1 : 0);
                            if (sVar2.e()) {
                                jSONObject.put("is_video_cache_success", sVar2.fx() ? 1 : 0);
                            }
                            jSONObject.put("mediationrit_req_type", sVar2.ia(dVar != null ? dVar.dq() : null));
                            jSONObject.put("mediationrit_req_type_src", sVar2.kk(dVar != null ? dVar.dq() : null));
                            jSONArray.put(jSONObject);
                            if (!z && dVar != null) {
                                if (dVar.le() == 5) {
                                    z = sVar2.u(dVar.k());
                                } else if (sVar2.u(dVar.k()) && !sVar2.xi()) {
                                    z = true;
                                }
                            }
                        }
                    }
                    break loop0;
                }
                if (!z) {
                    i2 = -1;
                }
                d2.d(i2);
                d2.o(jSONArray.toString());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        } else {
            d2.d(2);
            d2.o(com.bytedance.msdk.api.dq.dq(i));
        }
        HashMap hashMap = new HashMap();
        dq(d2, dVar, (com.bytedance.msdk.core.no.no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, hashMap);
    }

    public static void dq(Map<String, Object> map, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, long j, int i, int i2, int i3, String str, int i4, int i5, com.bytedance.msdk.core.no.d dVar2) {
        JSONObject jSONObject;
        int i6;
        p ox2 = p.ox();
        if (map != null) {
            int intValue = map.get("group_type") instanceof Integer ? ((Integer) map.get("group_type")).intValue() : 0;
            double doubleValue = map.get(MediationConstant.KEY_ECPM) instanceof Double ? ((Double) map.get(MediationConstant.KEY_ECPM)).doubleValue() : 0.0d;
            jSONObject = new JSONObject();
            try {
                jSONObject.put("price_from", map.get("price_from"));
                jSONObject.put("grout_type", intValue);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("target_ecpm_origin", doubleValue);
                jSONObject2.put("target_ecpm_upper", map.get("upper_cpm_x"));
                jSONObject.put("price", jSONObject2);
                if (map.get("price_source") != null) {
                    jSONObject.put("price_source", map.get("price_source"));
                }
                int intValue2 = map.get("rule_in_use") instanceof Integer ? ((Integer) map.get("rule_in_use")).intValue() : 0;
                boolean booleanValue = map.get("has_serverBidding") instanceof Boolean ? ((Boolean) map.get("has_serverBidding")).booleanValue() : false;
                if (intValue != 3 && intValue != 4) {
                    i6 = 0;
                } else if (!booleanValue) {
                    i6 = 1;
                } else if (doubleValue == 0.0d) {
                    i6 = 2;
                } else if (intValue2 == 0) {
                    i6 = 5;
                } else {
                    i6 = (intValue != 4 || (map.get("serverBidding_timeout") instanceof Boolean ? ((Boolean) map.get("serverBidding_timeout")).booleanValue() : false)) ? 4 : 3;
                }
                jSONObject.put("pos_state", i6);
                jSONObject.put("rule_id", map.get("rule_id"));
                jSONObject.put("rule_inuse", intValue2);
            } catch (JSONException unused) {
            }
        } else {
            jSONObject = null;
        }
        com.bytedance.msdk.s.ox.dq.dq().dq(ox2, dVar, sVar, j, i, i2, i3, str, i4, i5, dVar2, jSONObject);
    }

    public static void dq(boolean z) {
        p d2 = p.d();
        d2.dq("get_config_start").dq(MediationConstant.KEY_REASON, Integer.valueOf(z ? com.bytedance.msdk.mn.s.dq().s("is_config_from_assert") ? 2 : 1 : 0));
        ox.dq(com.bytedance.msdk.core.dq.getContext(), d2, (Map<String, Object>) null);
    }
}
