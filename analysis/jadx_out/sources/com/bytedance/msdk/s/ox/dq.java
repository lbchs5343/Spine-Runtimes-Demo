package com.bytedance.msdk.s.ox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ia.r;
import com.bytedance.msdk.s.ia;
import com.bytedance.msdk.s.iw;
import com.bytedance.msdk.s.ox;
import com.bytedance.msdk.s.p;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.tn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static volatile dq dq;

    private static void d(p pVar) {
        pVar.dq("block_pacing", "-1");
        pVar.dq("rit_adn_show_rule_id", "-1");
        pVar.dq("block_show_count", "-1");
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private static void dq(p pVar) {
        pVar.dq("block_pacing", "-1");
        pVar.dq("waterfall_show_rule_id", "-1");
        pVar.dq("block_show_count", "-1");
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, int i) {
        pVar.dq("get_config_error").d(i);
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, (no) null, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.dq dqVar, String str, String str2) {
        JSONObject no;
        pVar.dq("total_load_fail").dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str)).dq("server_bidding_extra", str2);
        int i = dqVar.dq;
        if (i == 10003) {
            pVar.d(10010).o("Ad load timeout!");
            dq(pVar);
        } else if (i == 810085) {
            pVar.d(i).o(dqVar.f756d);
            dq(pVar);
        } else if (dqVar instanceof com.bytedance.msdk.api.d.ox) {
            com.bytedance.msdk.api.d.ox oxVar = (com.bytedance.msdk.api.d.ox) dqVar;
            pVar.d(i).o(dqVar.f756d);
            pVar.dq("block_pacing", oxVar.dq());
            pVar.dq("waterfall_show_rule_id", oxVar.d());
        } else if (dqVar instanceof com.bytedance.msdk.api.d.d) {
            com.bytedance.msdk.api.d.d dVar2 = (com.bytedance.msdk.api.d.d) dqVar;
            pVar.d(i).o(dqVar.f756d);
            pVar.dq("block_show_count", dVar2.dq());
            pVar.dq("waterfall_show_rule_id", dVar2.d());
        } else if (dqVar instanceof com.bytedance.msdk.api.d.dq) {
            pVar.d(i).o(dqVar.f756d);
            dq(pVar);
        } else {
            pVar.d(10086).o("Ad load fail all loadsorts! ");
            dq(pVar);
        }
        HashMap hashMap = new HashMap();
        if (dVar != null && (no = dVar.no()) != null) {
            hashMap.put("behavior", no);
        }
        pVar.dq("ad_count", Integer.valueOf(dVar != null ? dVar.h() : 0));
        iw.dq(pVar, dVar, (no) null, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.p.d dVar2, String str, int i) {
        if (dVar2 == null) {
            return;
        }
        p result = pVar.dq("return_bidding_result").dq(dVar2.mn).setResult(dVar2.iw);
        com.bytedance.msdk.api.dq dqVar = dVar2.ia;
        p d2 = result.d(dqVar == null ? 0 : dqVar.dq);
        com.bytedance.msdk.api.dq dqVar2 = dVar2.ia;
        d2.o(dqVar2 == null ? "" : dqVar2.f756d).dq(2).dq("fill_type", Integer.valueOf(i)).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str)).dq("server_bidding_extra", dVar2.p).dq("ad_count", Integer.valueOf(dVar2.kk));
        HashMap hashMap = new HashMap();
        com.bytedance.msdk.core.o.p.dq(dVar2.o, dVar2.dq, hashMap);
        JSONObject jSONObject = dVar2.no;
        if (jSONObject != null) {
            hashMap.put("token_time", jSONObject);
        }
        iw.dq(pVar, dVar, (no) null, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, s sVar, long j, int i, int i2, int i3, String str, int i4, int i5, com.bytedance.msdk.core.no.d dVar2, JSONObject jSONObject) {
        JSONObject no;
        pVar.dq("mediation_request_end").dq(j).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str)).dq("ad_count", Integer.valueOf(i4)).dq(MediationConstant.KEY_REASON, Integer.valueOf(i5)).d(i3);
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, (no) null, sVar, hashMap);
        tn.e(i, hashMap, "requested_adn_count", i2, "requested_level_count");
        if (jSONObject != null) {
            hashMap.put("auto_detail", jSONObject);
        }
        if (dVar2 != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("layer_time_rate", String.format(Locale.getDefault(), "%.2f", Double.valueOf(dVar2.d())));
                jSONObject2.putOpt("req_interval", Long.valueOf(dVar2.p()));
                jSONObject2.putOpt("total_time_rate", String.format(Locale.getDefault(), "%.2f", Double.valueOf(dVar2.ox())));
                hashMap.put("preload_req", jSONObject2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        if (dVar != null && (no = dVar.no()) != null) {
            hashMap.put("behavior", no);
        }
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, s sVar, long j, String str) {
        pVar.dq("mediation_video_cached").dq(j).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str));
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, (no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, s sVar, no noVar) {
        pVar.dq("media_cache_success");
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, noVar, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, String str, JSONObject jSONObject) {
        pVar.dq("start_bidding_request").dq(2).dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str)).dq("ad_count", Integer.valueOf(dVar != null ? dVar.h() : 0));
        HashMap hashMap = new HashMap();
        if (jSONObject != null) {
            hashMap.put("token_time", jSONObject);
        }
        iw.dq(pVar, dVar, (no) null, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq.d dVar, String str, boolean z, String str2, int i, Map<String, Object> map) {
        String str3;
        if (i > 0) {
            str3 = com.bytedance.msdk.api.dq.dq(i);
        } else {
            str3 = "";
            i = 0;
        }
        pVar.dq("mediation_request").dq("waterfall_abtest", com.bytedance.msdk.core.mp.dq.dq().ox(str)).dq("server_bidding_extra", str2).dq("mediation_req_type", Integer.valueOf(i != 0 ? z ? 2 : 3 : !z ? 1 : 0)).dq("ad_count", Integer.valueOf(dVar != null ? dVar.h() : 0)).d(i).o(str3);
        HashMap hashMap = new HashMap();
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        if (dVar != null && dVar.ox() == 5) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("parallel_num", com.bytedance.msdk.core.s.d.p.dq().ox());
                jSONObject.put("interval", com.bytedance.msdk.core.s.d.p.dq().p());
                jSONObject.put("primerit_list", com.bytedance.msdk.core.s.d.p.dq().d());
                hashMap.put("preload_info", jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        if (dVar != null && dVar.le() == 3) {
            com.bytedance.msdk.mn.dq.dq.jy().dq(hashMap);
        }
        hashMap.put("csj_plugin_version", com.bytedance.msdk.iw.ox.ox());
        iw.dq(pVar, dVar, (no) null, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.api.dq.d dVar, no noVar, int i, int i2, int i3, String str, long j, String str2, String str3, String str4, long j2) {
        if (dqVar instanceof com.bytedance.msdk.api.d.ox) {
            com.bytedance.msdk.api.d.ox oxVar = (com.bytedance.msdk.api.d.ox) dqVar;
            pVar.d(dqVar.dq).o(dqVar.f756d);
            pVar.dq("block_pacing", oxVar.dq());
            pVar.dq("adn_rit_show_rule_id", oxVar.d());
        } else if (dqVar instanceof com.bytedance.msdk.api.d.d) {
            com.bytedance.msdk.api.d.d dVar2 = (com.bytedance.msdk.api.d.d) dqVar;
            pVar.d(dqVar.dq).o(dqVar.f756d);
            pVar.dq("block_show_count", dVar2.dq());
            pVar.dq("adn_rit_show_rule_id", dVar2.d());
        } else if (dqVar instanceof com.bytedance.msdk.api.d.dq) {
            pVar.d(dqVar.dq);
            pVar.o(dqVar.f756d);
            d(pVar);
        } else {
            pVar.d(dqVar != null ? dqVar.ox : -1).o(dqVar != null ? dqVar.p : "unknown error");
            d(pVar);
        }
        pVar.dq("media_fill_fail").dq(j).iw(str).dq("adn_count", Integer.valueOf(i)).dq("adn_preload", 0).dq("mediationrit_req_type", Integer.valueOf(i2)).dq("mediationrit_req_type_src", Integer.valueOf(i3));
        HashMap hashMap = new HashMap();
        boolean z = j2 >= 0;
        if (noVar != null && noVar.wn()) {
            hashMap.put("custom_adn_sample_ratio", Double.valueOf(r.dq()));
            hashMap.put("custom_adn_sample_ratio_result", Boolean.valueOf(z));
            if (z) {
                hashMap.put("custom_adn_rec_time", Long.valueOf(j2));
            }
        }
        iw.dq(pVar, dVar, noVar, (s) null, hashMap);
        if (!TextUtils.isEmpty(str2)) {
            pVar.kk(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            pVar.dq("level_tag", str3);
        }
        if (str4 != null) {
            pVar.dq("sub_adn_name", str4);
        }
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, no noVar, com.bytedance.msdk.api.dq.d dVar, int i, int i2) {
        pVar.dq("adapter_request_fail").dq(0L).iw((String) null).d(-99999).o("adapter create fail !").dq("mediationrit_req_type", Integer.valueOf(i)).dq("mediationrit_req_type_src", Integer.valueOf(i2));
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, noVar, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, no noVar, com.bytedance.msdk.api.dq.d dVar, String str) {
        pVar.dq("get_bidding_adm_to_adn").iw(str);
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, noVar, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, no noVar, com.bytedance.msdk.api.dq.d dVar, String str, boolean z, int i, int i2, int i3, int i4, com.bytedance.msdk.api.dq dqVar, long j, boolean z2, boolean z3) {
        int dq2;
        if ((dqVar instanceof com.bytedance.msdk.api.d.ox) || (dqVar instanceof com.bytedance.msdk.api.d.d) || (dqVar instanceof com.bytedance.msdk.api.d.dq)) {
            pVar.d(dqVar.dq).o(dqVar.f756d);
        }
        pVar.dq("media_request").iw(str).dq("ad_count", Integer.valueOf(dVar != null ? dVar.h() : 0)).dq("adn_count", Integer.valueOf(i2)).dq("mediationrit_req_type", Integer.valueOf(i3)).dq("mediationrit_req_type_src", Integer.valueOf(i4)).dq("mediation_req_type", Integer.valueOf(!z ? 1 : 0)).dq("media_req_type", Integer.valueOf(i));
        HashMap hashMap = new HashMap();
        tn.e(z2 ? 1 : 0, hashMap, "timeout_req", z3 ? 1 : 0, "is_callback");
        if (dVar != null && dVar.nh() != null && noVar != null && MediationConstant.ADN_PANGLE.equals(noVar.jy()) && noVar.mp() == 5 && (dq2 = dVar.nh().dq()) == 1) {
            hashMap.put("support_render_control", Integer.valueOf(dq2));
        }
        if (j != -1) {
            hashMap.put("start_time", Long.valueOf(SystemClock.elapsedRealtime() - j));
        }
        iw.dq(pVar, dVar, noVar, (s) null, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, s sVar, int i, String str, long j, com.bytedance.msdk.api.dq.d dVar, int i2, int i3, int i4, String str2, long j2, long j3) {
        pVar.dq("media_fill").dq(j).d(i).o(str).dq("adn_count", Integer.valueOf(i2)).dq("adn_preload", Integer.valueOf((sVar == null || !sVar.h()) ? 0 : 1)).dq("ad_count", Integer.valueOf(i3));
        pVar.dq("fill_type", Integer.valueOf(i4));
        if (str2 != null) {
            pVar.dq("sub_adn_name", str2);
        }
        HashMap hashMap = new HashMap();
        boolean z = j2 >= 0;
        if (sVar != null && sVar.zc()) {
            hashMap.put("custom_adn_sample_ratio", Double.valueOf(r.dq()));
            hashMap.put("custom_adn_sample_ratio_result", Boolean.valueOf(z));
            if (z) {
                hashMap.put("custom_adn_rec_time", Long.valueOf(j2));
            }
        }
        if (j3 != -1) {
            hashMap.put("end_time", Long.valueOf(j3));
        }
        if (sVar != null && MediationConstant.ADN_PANGLE.equals(sVar.m()) && sVar.qz() == 5 && sVar.nh() == 1) {
            hashMap.put("if_to_express", Integer.valueOf(sVar.nh()));
        }
        if (com.bytedance.msdk.core.dq.d().t() && sVar != null && 5 == sVar.qz()) {
            pVar.dq("ex_info", ia.dq().dq(sVar));
        }
        iw.dq(pVar, dVar, (no) null, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, s sVar, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.d dVar2, long j, String str, boolean z, int i, boolean z2, boolean z3) {
        pVar.dq("mediation_fill").dq(j).dq("waterfall_abtest", dVar2 != null ? com.bytedance.msdk.core.mp.dq.dq().ox(dVar2.gx()) : null).dq("server_bidding_extra", str).dq("mediation_req_type", Integer.valueOf(!z ? 1 : 0)).dq("ad_count", Integer.valueOf(i)).d(0).o("");
        HashMap hashMap = new HashMap();
        if (dVar != null && dVar.le() == 3) {
            com.bytedance.msdk.mn.dq.dq.jy().d(hashMap);
        }
        iw.dq(pVar, dVar, (no) null, sVar, hashMap);
        hashMap.put("timeout_req", Integer.valueOf(z2 ? 1 : 0));
        hashMap.put("is_callback", Integer.valueOf(z3 ? 1 : 0));
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, s sVar, com.bytedance.msdk.api.dq.d dVar, no noVar) {
        pVar.dq("bidding_adm_cache");
        HashMap hashMap = new HashMap();
        iw.dq(pVar, dVar, noVar, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, s sVar, com.bytedance.msdk.api.dq.d dVar, no noVar, long j) {
        pVar.dq("bidding_adm_load").dq(j);
        HashMap hashMap = new HashMap();
        if (com.bytedance.msdk.core.dq.d().t() && sVar != null && 5 == sVar.qz()) {
            pVar.dq("ex_info", ia.dq().dq(sVar));
        }
        iw.dq(pVar, dVar, noVar, sVar, hashMap);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap);
    }

    public void dq(p pVar, s sVar, com.bytedance.msdk.api.dq.d dVar, List<s> list, List<s> list2) {
        Iterator<s> it;
        HashMap hashMap;
        pVar.dq("bidding_win_event");
        HashMap hashMap2 = new HashMap();
        iw.dq(pVar, dVar, (no) null, sVar, hashMap2);
        JSONArray jSONArray = new JSONArray();
        if (!n.dq(list)) {
            for (s sVar2 : list) {
                if (sVar2 != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        hashMap = hashMap2;
                        try {
                            jSONObject.putOpt("mediation_rit", sVar2.b());
                            jSONObject.putOpt(MediationConstant.EXTRA_ADN_NAME, sVar2.m());
                            jSONObject.putOpt("load_sort", Integer.valueOf(sVar2.ae()));
                            jSONObject.putOpt("show_sort", Integer.valueOf(sVar2.wq()));
                            jSONObject.putOpt("exchange_rate", sVar2.io());
                            jSONObject.putOpt("rit_cpm", Double.valueOf(sVar2.dk()));
                            jSONObject.putOpt("m_aid", sVar2.vw());
                            jSONObject.putOpt("req_bidding_type", Integer.valueOf(sVar2.y()));
                            jSONObject.putOpt("win_state", 1);
                            jSONObject.putOpt("ad_extra", sVar2.ha());
                            jSONObject.putOpt("win_callback", sVar2.v());
                            jSONObject.putOpt("loss_callback", sVar2.ds());
                            if (sVar2.ip()) {
                                jSONObject.putOpt("pricing_type", Integer.valueOf(sVar2.xz()));
                            }
                            jSONArray.put(jSONObject);
                        } catch (Exception unused) {
                            hashMap2 = hashMap;
                        }
                    } catch (Exception unused2) {
                        hashMap = hashMap2;
                    }
                } else {
                    hashMap = hashMap2;
                }
                hashMap2 = hashMap;
            }
        }
        HashMap hashMap3 = hashMap2;
        if (!n.dq(list2)) {
            Iterator<s> it2 = list2.iterator();
            while (it2.hasNext()) {
                s next = it2.next();
                if (next != null) {
                    it = it2;
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("mediation_rit", next.b());
                        jSONObject2.putOpt(MediationConstant.EXTRA_ADN_NAME, next.m());
                        jSONObject2.putOpt("load_sort", Integer.valueOf(next.ae()));
                        jSONObject2.putOpt("show_sort", Integer.valueOf(next.wq()));
                        jSONObject2.putOpt("exchange_rate", next.io());
                        jSONObject2.putOpt("rit_cpm", Double.valueOf(next.dk()));
                        jSONObject2.putOpt("m_aid", next.vw());
                        jSONObject2.putOpt("req_bidding_type", Integer.valueOf(next.y()));
                        jSONObject2.putOpt("win_state", 0);
                        jSONObject2.putOpt("ad_extra", next.ha());
                        jSONObject2.putOpt("win_callback", next.v());
                        jSONObject2.putOpt("loss_callback", next.ds());
                        if (next.ip()) {
                            jSONObject2.putOpt("pricing_type", Integer.valueOf(next.xz()));
                        }
                        jSONArray.put(jSONObject2);
                    } catch (Exception unused3) {
                    }
                } else {
                    it = it2;
                }
                it2 = it;
            }
        }
        hashMap3.put("others", jSONArray);
        ox.dq(com.bytedance.msdk.core.dq.getContext(), pVar, hashMap3);
    }
}
