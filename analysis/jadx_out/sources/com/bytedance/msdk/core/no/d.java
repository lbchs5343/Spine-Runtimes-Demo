package com.bytedance.msdk.core.no;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.msdk.ia.ig;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private int bl;
    private long by;

    /* renamed from: c, reason: collision with root package name */
    private int f983c;
    private int cd;
    private int ce;

    /* renamed from: d, reason: collision with root package name */
    private int f984d;
    private String dq;

    /* renamed from: e, reason: collision with root package name */
    private int f985e;
    private int er;

    /* renamed from: f, reason: collision with root package name */
    private int f986f;
    private long fw;
    private String gh;
    private double gx;
    private boolean h;
    private int i;
    private String ia;
    private int ir;
    private long iw;
    private com.bytedance.msdk.core.kk.mn j;
    private boolean ji;
    private int jy;
    private int k;
    private long kx;
    private int le;
    private long mn;
    private double n;
    private int nh;
    private int ob;
    private int op;
    private int ox;
    private long p;
    private String r;
    private long s;
    private double t;
    private int u;
    private int uh;
    private JSONObject vf;
    private com.bytedance.msdk.core.kk.kk wn;
    private String wp;
    private List<no> kk = new CopyOnWriteArrayList();
    private Map<Integer, List<no>> o = new HashMap();
    private Map<Integer, List<no>> no = new HashMap();
    private List<Integer> ig = new ArrayList();
    private double mp = -1.0d;
    private double q = -1.0d;
    private int l = 1000;
    private int xz = 0;
    private int yy = 2;
    private int v = 0;
    private Map<String, Object> ds = new HashMap();

    private static Map<String, String> d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        try {
            Iterator<String> keys = jSONObject.keys();
            if (keys == null) {
                return null;
            }
            while (keys.hasNext()) {
                String next = keys.next();
                String optString = jSONObject.optString(next);
                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(optString)) {
                    hashMap.put(next, optString);
                }
            }
            if (hashMap.size() == 0) {
                return null;
            }
            return hashMap;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x04d4 A[Catch: JSONException -> 0x045b, TryCatch #2 {JSONException -> 0x045b, blocks: (B:39:0x049e, B:43:0x04b5, B:45:0x04d4, B:46:0x04d9, B:52:0x04df, B:61:0x0457, B:62:0x045e, B:64:0x0466, B:66:0x0470, B:68:0x0483, B:70:0x048b, B:72:0x0497, B:73:0x047c), top: B:42:0x04b5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static d dq(JSONObject jSONObject, Map<String, List<iw>> map) {
        String str;
        JSONObject jSONObject2;
        no noVar;
        String str2;
        int i;
        String optString;
        List<iw> list;
        int i2;
        String str3;
        String str4 = null;
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        dVar.dq(jSONObject);
        dVar.ox(jSONObject.optDouble("bid_floor", 0.0d));
        dVar.p(jSONObject.optString("rit_id"));
        dVar.ox(jSONObject.optString("version"));
        dVar.ox(jSONObject.optLong("waterfall_id", -1L));
        dVar.q(jSONObject.optInt("rit_type"));
        dVar.jy(jSONObject.optInt("look_type", 1));
        dVar.p(jSONObject.optLong("time_min", i(dVar.ce()).longValue()));
        dVar.s(jSONObject.optLong("layer_time_out", 2000L));
        dVar.iw(jSONObject.optLong("total_time_out", le(dVar.ce()).longValue()));
        dVar.d(jSONObject.optLong("multilevel_time_out", 2000L));
        dVar.mn(jSONObject.optLong("cache_time_out", 3000L));
        dVar.ig(jSONObject.optInt("req_type", 0));
        com.bytedance.msdk.core.s.d.p.dq().dq(dVar.c(), dVar.le());
        dVar.mp(jSONObject.optInt("segment_id"));
        dVar.d(jSONObject.optString("segment_version"));
        dVar.dq(jSONObject.optString("waterfall_extra"));
        dVar.no(jSONObject.optInt("multilevel_after_p", 1));
        dVar.o(jSONObject.optInt("refresh_time", 0));
        dVar.iw(jSONObject.optInt("is_refresh", 0));
        dVar.mn(jSONObject.optInt("refresh_num", 2));
        dVar.cd(jSONObject.optInt("parallel_type", 1));
        dVar.p(jSONObject.optInt("is_adprime", 0));
        dVar.gh(jSONObject.optInt("req_parallel_num", 2));
        dVar.f(jSONObject.optInt("reward_start_time", 15000));
        dVar.fw(jSONObject.optInt("reward_callback_type"));
        dVar.dq(jSONObject.optLong("req_interval", 1000L));
        dVar.d(jSONObject.optDouble("total_time_rate", 0.01d));
        dVar.dq(jSONObject.optDouble("layer_time_rate", 0.1d));
        dVar.dq(jSONObject.optInt("support_render_control", 0));
        dVar.r(jSONObject.optInt("behavior_ttl"));
        int optInt = jSONObject.optInt("ad_count", 0);
        if (optInt < 0) {
            optInt = 0;
        } else if (optInt > 3) {
            optInt = 3;
        }
        dVar.ia(optInt);
        dVar.d(jSONObject.optInt("group_type"));
        dVar.ox(jSONObject.optInt("bidding_time_out", 1000));
        String optString2 = jSONObject.optString("waterfall_abtest");
        if (optString2 != null) {
            dVar.s(optString2);
        }
        int optInt2 = jSONObject.optInt("waterfall_timing_mode");
        dVar.s(optInt2);
        if (dVar.o()) {
            JSONObject optJSONObject = jSONObject.optJSONObject("waterfall_show_pacing_rule");
            if (optJSONObject != null) {
                str3 = "waterfall_show_rules_version";
                i2 = optInt2;
                dVar.dq(new com.bytedance.msdk.core.kk.kk(dVar.c(), "", jSONObject.optString("waterfall_show_rules_version"), "", i2, optJSONObject.optString("waterfall_show_pacing"), optJSONObject.optString("waterfall_show_pacing_rule_id")));
            } else {
                i2 = optInt2;
                str3 = "waterfall_show_rules_version";
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("waterfall_show_freqctl_rules");
            dVar.dq(new com.bytedance.msdk.core.kk.mn(dVar.c(), "", jSONObject.optString(str3), "", i2, optJSONArray == null ? "[]" : optJSONArray.toString()));
        }
        if (jSONObject.optInt("is_ra") == 1) {
            com.bytedance.msdk.core.admanager.reward.rewardagain.dq dqVar = new com.bytedance.msdk.core.admanager.reward.rewardagain.dq();
            dqVar.dq(jSONObject.optString("ra_id"));
            dqVar.d(jSONObject.optInt("ra_max", 0));
            dqVar.d(jSONObject.optDouble("ra_ecpm"));
            dqVar.dq(jSONObject.optLong("ra_in", 0L));
            dqVar.dq(jSONObject.optInt("ra_h_max", 0));
            dqVar.dq(jSONObject.optDouble("ra_ra"));
            com.bytedance.msdk.core.admanager.reward.rewardagain.ox.dq(dVar.c(), dqVar);
        } else {
            com.bytedance.msdk.core.admanager.reward.rewardagain.ox.o(dVar.c());
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("adn_rit_conf");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray2 != null) {
            int i3 = 0;
            while (i3 < optJSONArray2.length()) {
                try {
                    jSONObject2 = optJSONArray2.getJSONObject(i3);
                    noVar = new no();
                    noVar.ox(jSONObject2.optString(MediationConstant.EXTRA_ADN_NAME));
                    if (com.bytedance.msdk.core.dq.d().ox(jSONObject2.optString(MediationConstant.EXTRA_ADN_NAME))) {
                        noVar.p(jSONObject2.optString("custom_adn_name"));
                    } else {
                        noVar.p(str4);
                    }
                    noVar.mn(dVar.gx());
                    String optString3 = jSONObject2.optString("adn_slot_id");
                    noVar.s(optString3);
                    noVar.dq(jSONObject2.optInt("is_refresh", 0));
                    int optInt3 = jSONObject2.optInt("freqctl_timing_mode");
                    noVar.d(optInt3);
                    if (noVar.p()) {
                        try {
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("show_pacing_rule");
                            if (optJSONObject2 != null) {
                                str = str4;
                                try {
                                    str2 = optString3;
                                    i = optInt3;
                                    noVar.dq(new com.bytedance.msdk.core.kk.kk(dVar.c(), str2, "", "", i, optJSONObject2.optString("pacing"), optJSONObject2.optString("rule_id")));
                                } catch (JSONException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    i3++;
                                    str4 = str;
                                }
                            } else {
                                str = str4;
                                str2 = optString3;
                                i = optInt3;
                            }
                            JSONArray optJSONArray3 = jSONObject2.optJSONArray("show_freqctl_rules");
                            noVar.dq(new com.bytedance.msdk.core.kk.mn(dVar.c(), str2, "", jSONObject2.optString("show_freqctl_rules_version"), i, optJSONArray3 == null ? "[]" : optJSONArray3.toString()));
                        } catch (JSONException e3) {
                            e = e3;
                            str = str4;
                        }
                    } else {
                        str = str4;
                    }
                    noVar.o(jSONObject2.optInt("req_bidding_type"));
                    noVar.iw(jSONObject2.optString("slot_cpm", "0"));
                    noVar.d(jSONObject2.optString("exchange_rate"));
                    noVar.no(jSONObject2.optInt("load_sort"));
                    noVar.ig(jSONObject2.optInt("show_sort"));
                    noVar.p(jSONObject2.optInt("ad_expired_time", 1800000));
                    com.bytedance.msdk.core.s.d.p.dq().dq(dVar.c(), noVar.cd(), noVar.ia());
                    com.bytedance.msdk.core.s.dq.dq.dq().dq(dVar.c(), noVar.cd(), noVar.ia());
                    noVar.ia(jSONObject2.optInt("if_is_ready", 1));
                    com.bytedance.msdk.core.s.d.p.dq().d(dVar.c(), noVar.cd(), noVar.ig());
                    com.bytedance.msdk.core.s.dq.dq.dq().d(dVar.c(), noVar.cd(), noVar.ig());
                    noVar.s(jSONObject2.optInt("if_reuse_ads", 0));
                    com.bytedance.msdk.core.s.dq.dq.dq().ox(dVar.c(), noVar.cd(), noVar.kk());
                    noVar.mn(jSONObject2.optInt("if_pre_request", 0));
                    com.bytedance.msdk.core.s.dq.dq.dq().iw(dVar.c(), noVar.cd(), noVar.no());
                    noVar.kk(dVar.ce());
                    noVar.dq("%1$s%2$sAdapter");
                    noVar.iw(jSONObject2.optInt("origin_type"));
                    noVar.ox(jSONObject2.optInt("sub_adtype"));
                    noVar.dq(d(jSONObject2.optJSONObject("multilevel_slot_cpm")));
                } catch (JSONException e4) {
                    e = e4;
                    str = str4;
                }
                if (noVar.gh() == 1) {
                    dVar.d(true);
                } else if (noVar.gh() == 2) {
                    try {
                        dVar.dq(true);
                    } catch (JSONException e5) {
                        e = e5;
                        e.printStackTrace();
                        i3++;
                        str4 = str;
                    }
                } else {
                    if (noVar.gh() == 3) {
                        dVar.d(true);
                    } else if (noVar.gh() != 100) {
                        if (dVar.wp() == -1.0d || dVar.wp() < noVar.k()) {
                            dVar.p(noVar.k());
                        }
                        if (dVar.e() == -1.0d || dVar.e() > noVar.k()) {
                            dVar.s(noVar.k());
                        }
                    }
                    noVar.kk(jSONObject2.optString("customer_adapter_json"));
                    optString = jSONObject2.optString("origin_csj_code_id");
                    if (!TextUtils.isEmpty(optString) && map != null) {
                        try {
                            iw iwVar = new iw(optString, noVar.k(), noVar.wp(), noVar.e());
                            String c2 = dVar.c();
                            list = map.get(c2);
                            if (list == null) {
                                list = new CopyOnWriteArrayList<>();
                            }
                            list.add(iwVar);
                            map.put(c2, list);
                        } catch (JSONException e6) {
                            e = e6;
                            e.printStackTrace();
                            i3++;
                            str4 = str;
                        }
                    }
                    arrayList.add(noVar);
                    i3++;
                    str4 = str;
                }
                noVar.kk(jSONObject2.optString("customer_adapter_json"));
                optString = jSONObject2.optString("origin_csj_code_id");
                if (!TextUtils.isEmpty(optString)) {
                    iw iwVar2 = new iw(optString, noVar.k(), noVar.wp(), noVar.e());
                    String c22 = dVar.c();
                    list = map.get(c22);
                    if (list == null) {
                    }
                    list.add(iwVar2);
                    map.put(c22, list);
                }
                arrayList.add(noVar);
                i3++;
                str4 = str;
            }
        }
        Collections.sort(arrayList);
        if (dVar.no()) {
            dVar.d(arrayList);
        } else {
            dVar.dq(arrayList);
        }
        return dVar;
    }

    private static Long i(int i) {
        return (i == 1 || !(i == 2 || i == 3 || i != 5)) ? 1000L : 0L;
    }

    private static Long le(int i) {
        Long valueOf = Long.valueOf(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        if (i != 1 && i != 2) {
            if (i == 3) {
                return Long.valueOf(PushUIConfig.dismissTime);
            }
            if (i != 5) {
                if (i == 7 || i == 8) {
                    return 600000L;
                }
                return valueOf;
            }
        }
        return valueOf;
    }

    public static d mn(String str) {
        if (TextUtils.isEmpty(str)) {
            com.bytedance.msdk.dq.s.ox.dq("AdsenseRitConfig", "TMe jsonStr is null or empty");
            return null;
        }
        try {
            return dq(new JSONObject(str), null);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void ox(List<no> list) {
        int i;
        List<no> list2;
        if (list == null) {
            return;
        }
        this.no.clear();
        boolean ox = com.bytedance.msdk.mn.ox.dq.dq().ox();
        int i2 = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        for (int i3 = 0; i3 < list.size(); i3++) {
            no noVar = list.get(i3);
            if (noVar != null) {
                if ((noVar.gh() == 100 && !ox) || noVar.gh() == 0) {
                    list2 = new ArrayList<>();
                    i = noVar.e();
                } else if (noVar.wp() != i2) {
                    list2 = new ArrayList<>();
                    i = noVar.wp();
                } else {
                    i = i2;
                    list2 = this.no.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(noVar);
                    this.no.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
    }

    private void p(List<no> list) {
        int i;
        List<no> list2;
        if (list == null) {
            return;
        }
        this.no.clear();
        int i2 = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        for (int i3 = 0; i3 < list.size(); i3++) {
            no noVar = list.get(i3);
            if (noVar != null) {
                if (noVar.wp() != i2) {
                    list2 = new ArrayList<>();
                    i = noVar.wp();
                } else {
                    i = i2;
                    list2 = this.no.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(noVar);
                    this.no.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
    }

    public String bl() {
        return this.gh;
    }

    public int by() {
        return this.u;
    }

    public String c() {
        return this.dq;
    }

    public double cd() {
        return this.n;
    }

    public void cd(int i) {
        this.u = i;
    }

    public int ce() {
        return this.f984d;
    }

    public double d() {
        return this.gx;
    }

    public void d(double d2) {
        if (d2 < 0.01d || d2 > 1.0d) {
            d2 = 0.01d;
        }
        this.t = d2;
    }

    public void d(int i) {
        this.ob = i;
    }

    public void d(long j) {
        this.kx = j;
    }

    public void d(String str) {
        this.gh = str;
    }

    public void d(List<no> list) {
        int i;
        List<no> list2;
        ox(list);
        this.kk = list;
        if (list == null) {
            return;
        }
        this.jy = 0;
        this.o.clear();
        this.ig.clear();
        this.f986f = this.kk.size();
        boolean ox = com.bytedance.msdk.mn.ox.dq.dq().ox();
        int i2 = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        for (int i3 = 0; i3 < this.kk.size(); i3++) {
            no noVar = list.get(i3);
            if (noVar != null) {
                if (noVar.gh() == 0) {
                    this.jy++;
                    list2 = new ArrayList<>();
                    i = noVar.e();
                } else if (noVar.gh() == 100 && !ox) {
                    this.jy++;
                    list2 = new ArrayList<>();
                    i = noVar.e();
                } else if (noVar.wp() != i2) {
                    this.jy++;
                    list2 = new ArrayList<>();
                    i = noVar.wp();
                } else {
                    i = i2;
                    list2 = this.o.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(noVar);
                    this.o.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
        this.ig.addAll(this.o.keySet());
    }

    public void d(boolean z) {
        this.ji = z;
    }

    public int dq() {
        return this.uh;
    }

    public void dq(double d2) {
        if (d2 < 0.1d || d2 > 1.0d) {
            d2 = 0.1d;
        }
        this.gx = d2;
    }

    public void dq(int i) {
        this.uh = i;
    }

    public void dq(long j) {
        if (j < 1000) {
            j = 1000;
        }
        this.by = j;
    }

    public void dq(com.bytedance.msdk.core.kk.kk kkVar) {
        this.wn = kkVar;
    }

    public void dq(com.bytedance.msdk.core.kk.mn mnVar) {
        this.j = mnVar;
    }

    public void dq(String str) {
        this.wp = str;
    }

    public void dq(List<no> list) {
        int i;
        List<no> list2;
        p(list);
        this.kk = list;
        if (list == null) {
            return;
        }
        this.jy = 0;
        this.o.clear();
        this.ig.clear();
        this.f986f = this.kk.size();
        int i2 = AVMDLDataLoader.AVMDLErrorIsCreateTask;
        for (int i3 = 0; i3 < this.kk.size(); i3++) {
            no noVar = list.get(i3);
            if (noVar != null) {
                if (noVar.wp() != i2) {
                    this.jy++;
                    list2 = new ArrayList<>();
                    i = noVar.wp();
                } else {
                    i = i2;
                    list2 = this.o.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(noVar);
                    this.o.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
        this.ig.addAll(this.o.keySet());
    }

    public void dq(JSONObject jSONObject) {
        this.vf = jSONObject;
    }

    public void dq(boolean z) {
        this.h = z;
    }

    public double e() {
        return this.q;
    }

    public long er() {
        return this.p;
    }

    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public d clone() {
        d dVar = new d();
        dVar.dq = this.dq;
        dVar.f984d = this.f984d;
        dVar.ox = this.ox;
        dVar.p = this.p;
        dVar.s = this.s;
        dVar.iw = this.iw;
        dVar.mn = this.mn;
        dVar.ia = this.ia;
        dVar.fw = this.fw;
        dVar.k = this.k;
        dVar.r = this.r;
        dVar.cd = this.cd;
        dVar.gh = this.gh;
        dVar.i = this.i;
        dVar.le = this.le;
        dVar.wp = this.wp;
        dVar.f985e = this.f985e;
        dVar.kx = this.kx;
        dVar.bl = this.bl;
        dVar.n = this.n;
        dVar.u = this.u;
        dVar.f983c = this.f983c;
        dVar.ce = this.ce;
        dVar.op = this.op;
        dVar.ir = this.ir;
        dVar.nh = this.nh;
        dVar.j = this.j;
        dVar.wn = this.wn;
        dVar.er = this.er;
        dVar.h = this.h;
        dVar.ji = this.ji;
        dVar.vf = this.vf;
        dVar.mp = this.mp;
        dVar.f986f = this.f986f;
        dVar.kk = new CopyOnWriteArrayList(this.kk);
        dVar.o = new HashMap(this.o);
        dVar.jy = this.jy;
        dVar.ig = new ArrayList(this.ig);
        dVar.ds = new HashMap(this.ds);
        dVar.no = new HashMap(this.no);
        dVar.ob = this.ob;
        dVar.l = this.l;
        dVar.q = this.q;
        dVar.by = this.by;
        dVar.t = this.t;
        dVar.gx = this.gx;
        dVar.xz = this.xz;
        dVar.yy = this.yy;
        dVar.v = this.v;
        return dVar;
    }

    public void f(int i) {
        this.op = i;
    }

    public int fw() {
        return this.ce;
    }

    public void fw(int i) {
        this.ir = i;
    }

    public String gh() {
        return this.wp;
    }

    public void gh(int i) {
        this.f983c = i;
    }

    public String gx() {
        return this.r;
    }

    public long h() {
        return this.fw;
    }

    public long i() {
        return this.kx;
    }

    public com.bytedance.msdk.core.kk.mn ia() {
        return this.j;
    }

    public void ia(int i) {
        this.ce = i;
    }

    public void ig(int i) {
        this.k = i;
    }

    public boolean ig() {
        return this.nh == 1;
    }

    public String ir() {
        return this.ia;
    }

    public int iw() {
        return this.ob;
    }

    public no iw(String str) {
        List<no> list;
        if (!TextUtils.isEmpty(str) && (list = this.kk) != null && list.size() != 0) {
            for (no noVar : this.kk) {
                if (str.equals(noVar.cd())) {
                    return noVar;
                }
            }
        }
        return null;
    }

    public void iw(int i) {
        this.xz = i;
    }

    public void iw(long j) {
        this.iw = j;
    }

    public long j() {
        return this.iw;
    }

    public int ji() {
        return this.cd;
    }

    public d jy() {
        List<String> dq = ig.dq();
        d dVar = new d();
        dVar.dq = this.dq;
        ig.dq(dq, "mRitId");
        dVar.f984d = this.f984d;
        ig.dq(dq, "mRitType");
        dVar.ox = this.ox;
        ig.dq(dq, "mLookType");
        dVar.p = this.p;
        ig.dq(dq, "mMinWaitTime");
        dVar.s = this.s;
        ig.dq(dq, "mLayerTimeOut");
        dVar.iw = this.iw;
        ig.dq(dq, "mTotalTimeOut");
        dVar.mn = this.mn;
        ig.dq(dq, "mCacheTimeOut");
        dVar.ia = this.ia;
        ig.dq(dq, "mVersion");
        dVar.fw = this.fw;
        ig.dq(dq, "mWaterFallId");
        dVar.k = this.k;
        ig.dq(dq, "reqType");
        dVar.r = this.r;
        ig.dq(dq, "mWaterfallAbTestParam");
        dVar.cd = this.cd;
        ig.dq(dq, "segmentId");
        dVar.gh = this.gh;
        ig.dq(dq, "segmentVersion");
        dVar.i = this.i;
        ig.dq(dq, "preLoadSortControl");
        dVar.le = this.le;
        ig.dq(dq, "preShowSortControl");
        dVar.wp = this.wp;
        ig.dq(dq, "waterfallExtra");
        dVar.f985e = this.f985e;
        ig.dq(dq, "mMultilevelAfterP");
        dVar.kx = this.kx;
        ig.dq(dq, "mMultilevelTimeOut");
        dVar.bl = this.bl;
        ig.dq(dq, "mRefreshTime");
        dVar.n = this.n;
        ig.dq(dq, "mBidFloor");
        dVar.u = this.u;
        ig.dq(dq, "mParallelType");
        dVar.f983c = this.f983c;
        ig.dq(dq, "mReqParallelNum");
        dVar.ce = this.ce;
        ig.dq(dq, "mAdCount");
        dVar.op = this.op;
        ig.dq(dq, "serverSideVerifyPreRequestTime");
        dVar.ir = this.ir;
        ig.dq(dq, "serverSideRewardType");
        dVar.nh = this.nh;
        ig.dq(dq, "mAdPrime");
        dVar.yy = this.yy;
        ig.dq(dq, "mRefreshNum");
        dVar.xz = this.xz;
        ig.dq(dq, "mIsRefresh");
        dVar.j = this.j;
        ig.dq(dq, "mIntervalFreqctlBean");
        dVar.wn = this.wn;
        ig.dq(dq, "mIntervalPacingBean");
        dVar.er = this.er;
        ig.dq(dq, "mWaterFallTimingMode");
        dVar.by = this.by;
        ig.dq(dq, "mReqInterval");
        dVar.t = this.t;
        ig.dq(dq, "mTotalTimeoutRate");
        dVar.gx = this.gx;
        ig.dq(dq, "mLayerTimeoutRate");
        dVar.ds = new HashMap(this.ds);
        dVar.ob = this.ob;
        dVar.l = this.l;
        dVar.q = this.q;
        dVar.no = new HashMap(this.no);
        ig.d(dq, "AdsenseRitConfig");
        dVar.v = this.v;
        ig.dq(dq, "mBehaviorTTL");
        return dVar;
    }

    public void jy(int i) {
        this.ox = i;
    }

    public int k() {
        return this.f986f;
    }

    public int kk(int i) {
        if (iw() == 2) {
            int dq = com.bytedance.msdk.core.o.p.dq(this.dq, i, s());
            if (this.bl != 0 && dq != 0) {
                return dq;
            }
        }
        return this.bl;
    }

    public com.bytedance.msdk.core.kk.kk kk() {
        return this.wn;
    }

    public Map<Integer, List<no>> kx() {
        HashMap hashMap = new HashMap();
        Map<Integer, List<no>> map = this.o;
        if (map != null) {
            for (Map.Entry<Integer, List<no>> entry : map.entrySet()) {
                List<no> value = entry.getValue();
                Integer key = entry.getKey();
                key.intValue();
                hashMap.put(key, new ArrayList(value));
            }
        }
        return hashMap;
    }

    public Map<Integer, List<no>> l() {
        return this.no;
    }

    public int le() {
        return this.k;
    }

    public int mn() {
        int min = Math.min(this.l, 1000);
        if (min <= 0) {
            return 1000;
        }
        return min;
    }

    public void mn(int i) {
        this.yy = i;
    }

    public void mn(long j) {
        this.mn = j;
    }

    public int mp() {
        return this.xz;
    }

    public void mp(int i) {
        this.cd = i;
    }

    public boolean n() {
        return this.h;
    }

    public long nh() {
        return this.mn;
    }

    public void no(int i) {
        this.f985e = i;
    }

    public boolean no() {
        return this.u == 3;
    }

    public void o(int i) {
        this.bl = i;
    }

    public boolean o() {
        return this.er == 1;
    }

    public int ob() {
        return this.ir;
    }

    public boolean op() {
        return this.ji;
    }

    public double ox() {
        return this.t;
    }

    public void ox(double d2) {
        this.n = d2;
    }

    public void ox(int i) {
        this.l = i;
    }

    public void ox(long j) {
        this.fw = j;
    }

    public void ox(String str) {
        this.ia = str;
    }

    public long p() {
        return this.by;
    }

    public void p(double d2) {
        this.mp = d2;
    }

    public void p(int i) {
        this.nh = i;
    }

    public void p(long j) {
        this.p = j;
    }

    public void p(String str) {
        this.dq = str;
    }

    public int q() {
        int i = this.yy;
        if (i < 2) {
            return 2;
        }
        return i;
    }

    public void q(int i) {
        this.f984d = i;
    }

    public int r() {
        return this.f985e;
    }

    public void r(int i) {
        this.v = i;
    }

    public Map<String, Object> s() {
        return this.ds;
    }

    public void s(double d2) {
        this.q = d2;
    }

    public void s(int i) {
        this.er = i;
    }

    public void s(long j) {
        this.s = j;
    }

    public void s(String str) {
        this.r = str;
    }

    public List<no> t() {
        return this.kk;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AdsenseRitConfig{mRitId='");
        sb.append(this.dq);
        sb.append("', mIsSpeed=");
        sb.append(no());
        sb.append(", mHasServerbidding=");
        sb.append(this.h);
        sb.append(", mHasClientOrMultiLevel=");
        sb.append(this.ji);
        sb.append(", mRitType=");
        sb.append(this.f984d);
        sb.append(", mLookType=");
        sb.append(this.ox);
        sb.append(", mMinWaitTime=");
        sb.append(this.p);
        sb.append(", mLayerTimeOut=");
        sb.append(this.s);
        sb.append(", mTotalTimeOut=");
        sb.append(this.iw);
        sb.append(", mWaterFallConfigList=");
        sb.append(this.kk);
        sb.append(", mWaterFallConfMap=");
        sb.append(this.o);
        sb.append(", mLoadSortLevelList=");
        sb.append(this.ig);
        sb.append(", mCurrentCommonAdMaxCpm=");
        sb.append(this.mp);
        sb.append(", mTotalLoadLevelCount=");
        sb.append(this.jy);
        sb.append(", mTotalWaterFallCount=");
        sb.append(this.f986f);
        sb.append(", mWaterfallAbTestParam=");
        sb.append(this.r);
        sb.append(", mServerSideVerifyPreRequestTime=");
        sb.append(this.op);
        sb.append(", mServerSideVerifyRewardType=");
        return awf.s(sb, this.ir, '}');
    }

    public List<Integer> u() {
        return this.ig;
    }

    public int uh() {
        return this.f983c;
    }

    public int vf() {
        return this.op;
    }

    public long wn() {
        return this.s;
    }

    public double wp() {
        return this.mp;
    }

    public int xz() {
        return this.v;
    }
}
