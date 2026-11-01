package com.bytedance.msdk.core.f;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.msdk.api.p.f;
import com.bytedance.msdk.core.admanager.iw;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.no.p;
import com.bytedance.msdk.core.no.s;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.fw;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.he;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements dq {
    private int by;
    private long cd;
    private com.bytedance.msdk.core.iw.d cv;
    private int er;
    private long fw;
    private String ia;
    private String ig;
    private String iw;
    private int j;
    private int ji;
    private String kk;
    private String mn;
    private int mp;
    private int nh;
    private String no;
    private int o;
    private String ox;
    private long p;
    private long s;
    private com.bytedance.msdk.core.ox.d uh;
    private com.bytedance.msdk.core.d.d vf;
    private String wn;
    private int dq = 259200000;

    /* renamed from: d, reason: collision with root package name */
    private final List<Object> f924d = new CopyOnWriteArrayList();
    private String q = null;
    private int jy = 0;

    /* renamed from: f, reason: collision with root package name */
    private String f926f = "log-api.pangolin-sdk-toutiao.com/service/2/app_log/";
    private int gh = he.UNDEFINED_ITEM_ID;
    private final List<f> r = new CopyOnWriteArrayList();
    private Map<String, Boolean> i = new HashMap();
    private final AtomicBoolean le = new AtomicBoolean(false);
    private int k = 0;
    private Map<String, String> wp = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private Map<String, List<String>> f925e = new ConcurrentHashMap();
    private double kx = 0.0d;
    private boolean h = false;
    private Map<String, p> bl = new ConcurrentHashMap();
    private int n = 0;
    private final Map<String, List<p>> op = new ConcurrentHashMap();
    private final Map<String, s> ir = new ConcurrentHashMap();
    private final Map<String, Integer> u = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, Integer> f923c = new ConcurrentHashMap();
    private int ce = 0;
    private int ob = 0;
    private int l = 0;
    private int t = 0;
    private int gx = 0;
    private int xz = 0;
    private int yy = 1;
    private int v = 0;
    private boolean ds = false;
    private boolean vw = false;
    private boolean ha = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void bu() {
        com.bytedance.msdk.core.mp.dq.dq().s();
        if (bl()) {
            Iterator<f> it = this.r.iterator();
            while (it.hasNext()) {
                it.next().dq();
            }
            this.r.clear();
        }
    }

    private String d(JSONArray jSONArray) {
        JSONArray optJSONArray;
        if (jSONArray == null) {
            com.bytedance.msdk.core.kk.ox.dq().dq(null);
            return null;
        }
        ConcurrentHashMap<String, com.bytedance.msdk.core.kk.d> concurrentHashMap = new ConcurrentHashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("break_request_error_code")) != null) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    arrayList.add(optJSONArray.optString(i2));
                }
                com.bytedance.msdk.core.kk.d dVar = new com.bytedance.msdk.core.kk.d();
                dVar.dq(optJSONObject.optLong("break_request_duration"));
                dVar.dq(arrayList);
                concurrentHashMap.put(optJSONObject.optString(MediationConstant.EXTRA_ADN_NAME), dVar);
            }
        }
        com.bytedance.msdk.core.kk.ox.dq().dq(concurrentHashMap);
        return jSONArray.toString();
    }

    private String d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.vf = new com.bytedance.msdk.core.d.d(jSONObject);
        return jSONObject.toString();
    }

    private String dq(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                s.dq(jSONArray.optJSONObject(i), this.ir);
            } catch (Exception e2) {
                com.bytedance.msdk.dq.s.ox.ox("TTMediationSDK", "maybe some rit parse dynamic rules fail .....");
                e2.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    private boolean fd() {
        Boolean bool = this.i.get("active_control");
        return bool == null || !bool.booleanValue();
    }

    private void ia(String str) {
        try {
            JSONObject optJSONObject = new JSONObject(new JSONObject(str).optString("app_ab_params")).optJSONObject("mediation_settings");
            if (optJSONObject != null) {
                this.ce = optJSONObject.optInt("ad_request_optmize");
                this.yy = optJSONObject.optInt("use_cypher_v4");
                this.ds = optJSONObject.optInt("reward_cypher") == 4;
                this.vw = optJSONObject.optInt("config_cypher") == 4;
                this.ha = optJSONObject.optInt("exchange_cypher") == 4;
            }
        } catch (Throwable unused) {
        }
    }

    private void ia(JSONObject jSONObject) {
        this.f925e.clear();
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                if (keys != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        JSONArray optJSONArray = jSONObject.optJSONArray(next);
                        ArrayList arrayList = new ArrayList();
                        if (optJSONArray != null) {
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                if (optJSONArray.get(i) != null) {
                                    arrayList.add(optJSONArray.get(i).toString());
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(next) && !arrayList.isEmpty()) {
                            this.f925e.put(next, arrayList);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private String iw(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.mp = jSONObject.optInt("fetch_ad_type", 0);
        return jSONObject.toString();
    }

    private String kk(JSONObject jSONObject) {
        this.i.clear();
        if (jSONObject == null) {
            return null;
        }
        try {
            if (jSONObject.optBoolean("ad_event_control")) {
                this.i.put("ad_event_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_banner_control")) {
                this.i.put("type_banner_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_interaction_control")) {
                this.i.put("type_interaction_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_interactionfull_control")) {
                this.i.put("type_interactionfull_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_splash_control")) {
                this.i.put("type_splash_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_feed_control")) {
                this.i.put("type_feed_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_reward_control")) {
                this.i.put("type_reward_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_full_control")) {
                this.i.put("type_full_control", Boolean.TRUE);
            }
            if (jSONObject.optBoolean("type_native_control")) {
                this.i.put("type_native_control", Boolean.TRUE);
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private void kk(String str) {
        try {
            JSONObject optJSONObject = new JSONObject(new JSONObject(str).optString("app_ab_params")).optJSONObject("load_settings");
            com.bytedance.msdk.mn.ox.dq.dq().dq(optJSONObject != null ? optJSONObject.optInt("load_mode") : 0);
        } catch (Throwable unused) {
        }
    }

    private void mn(String str) {
        try {
            com.bytedance.msdk.core.admanager.reward.rewardagain.ox.dq(new JSONArray(str));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private void mn(JSONObject jSONObject) {
        this.wp.clear();
        this.k = 0;
        if (jSONObject == null) {
            return;
        }
        this.k = jSONObject.optInt("if_sample", 0);
        JSONObject optJSONObject = jSONObject.optJSONObject("call_stack_path");
        if (optJSONObject != null) {
            try {
                Iterator<String> keys = optJSONObject.keys();
                if (keys != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String optString = optJSONObject.optString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(optString)) {
                            this.wp.put(next, optString);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void no(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f923c.clear();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.f923c.put(next, Integer.valueOf(jSONObject.optInt(next)));
        }
    }

    private void o(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.u.clear();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.u.put(next, Integer.valueOf(jSONObject.optInt(next)));
        }
    }

    private String ox(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        this.uh = new com.bytedance.msdk.core.ox.d(jSONObject);
        return jSONObject.toString();
    }

    private String p(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return "";
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(next);
                if (jSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(p.dq(next, jSONArray.optJSONObject(i)));
                    }
                    this.op.put(next, arrayList);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    private String s(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            this.bl.put(next, p.dq(next, jSONObject.optJSONObject(next)));
        }
        return jSONObject.toString();
    }

    public boolean bl() {
        return (TextUtils.isEmpty(com.bytedance.msdk.core.d.no().ig()) || com.bytedance.msdk.mn.dq.dq.jy().mp() || !iw()) ? false : true;
    }

    public boolean by() {
        return this.n == 1;
    }

    public double c() {
        return this.kx;
    }

    public boolean cd() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_splash_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean ce() {
        return this.j == 1;
    }

    public boolean cv() {
        return this.t == 1 && this.gx == 1;
    }

    public int d() {
        return this.yy;
    }

    public com.bytedance.msdk.core.no.dq d(String str) {
        return com.bytedance.msdk.mn.dq.dq.jy().dq(str);
    }

    public void d(int i) {
        this.gh = i;
    }

    public void d(f fVar) {
        if (fVar != null && this.r.contains(fVar)) {
            this.r.remove(fVar);
        }
    }

    public void d(boolean z) {
        this.vw = z;
    }

    public boolean d(String str, int i) {
        return (com.bytedance.msdk.mn.dq.dq.jy().ox() || com.bytedance.msdk.mn.dq.dq.jy().mp() || com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, 101) == null) ? false : true;
    }

    public boolean dc() {
        return this.t == 1 && this.gx == 2;
    }

    public int dq() {
        return this.v;
    }

    public long dq(int i, String str) {
        com.bytedance.msdk.core.no.d dq = dq(str, i, 101);
        if (dq != null) {
            return dq.nh();
        }
        return 3000L;
    }

    public com.bytedance.msdk.core.no.d dq(String str, int i, int i2) {
        return com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, i2);
    }

    public com.bytedance.msdk.core.no.dq dq(String str) {
        return com.bytedance.msdk.mn.dq.dq.jy().dq(str);
    }

    public List<String> dq(List<String> list) {
        if (list != null && list.size() > 0) {
            if (com.bytedance.msdk.mn.dq.dq.jy().mp()) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (com.bytedance.msdk.mn.dq.dq.jy().dq(str, 0, 101) == null) {
                    arrayList.add(str);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
        }
        return null;
    }

    public void dq(f fVar) {
        if (fVar == null) {
            return;
        }
        if (bl()) {
            fVar.dq();
            return;
        }
        synchronized (this.r) {
            try {
                if (!this.r.contains(fVar)) {
                    this.r.add(fVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(com.bytedance.msdk.core.iw.d dVar) {
        this.cv = dVar;
    }

    @Override // com.bytedance.msdk.core.f.dq
    public void dq(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.optInt("state_code") != 30004) {
            return;
        }
        bl dq = com.bytedance.msdk.mn.s.dq();
        this.p = jSONObject.optLong("max_age");
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.p;
        this.s = currentTimeMillis + j;
        dq.dq("max_age", j);
        dq.dq("max_expire_time", this.s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.bytedance.msdk.core.iw.d, org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // com.bytedance.msdk.core.f.dq
    public void dq(JSONObject jSONObject, final boolean z) {
        ?? r2;
        final String optString;
        final JSONObject optJSONObject;
        final JSONArray optJSONArray;
        final String d2;
        final String iw;
        final String kk;
        final JSONObject optJSONObject2;
        final JSONObject optJSONObject3;
        final JSONObject optJSONObject4;
        final JSONObject optJSONObject5;
        final String s;
        final String p;
        final String dq;
        if (jSONObject == null) {
            return;
        }
        boolean z2 = false;
        try {
            String optString2 = jSONObject.optString("app_abtest");
            this.q = optString2;
            ia(optString2);
            kk(this.q);
            this.v = jSONObject.optInt("is_trusteeship_monetize");
            this.ox = jSONObject.optString("etag");
            this.p = jSONObject.optLong("max_age");
            this.s = System.currentTimeMillis() + this.p;
            this.iw = jSONObject.optString("ab_version");
            this.mn = jSONObject.optString("ab_params");
            this.ia = jSONObject.optString("country");
            this.kk = jSONObject.optString("transparent_params");
            this.ji = jSONObject.optInt("if_test");
            this.o = jSONObject.optInt("if_get_detail_return");
            this.no = jSONObject.optString("ecpm_precision_level");
            this.ig = jSONObject.optString("fetch_primerit_level");
            optString = jSONObject.optString(abn.EXTRA_URL);
            this.jy = jSONObject.optInt("innerLog", 0);
            this.f926f = jSONObject.optString("app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
            this.fw = jSONObject.optLong("break_request_times", 0L);
            this.cd = jSONObject.optLong("break_request_hold_time", ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
            this.er = jSONObject.optInt("ex_info", 0);
            this.wn = jSONObject.optString("ex_");
            this.n = jSONObject.optInt("if_enable_label", 0);
            this.dq = jSONObject.optInt("ecpm_ttl", 259200000);
            int optInt = jSONObject.optInt("support_tnc", he.UNDEFINED_ITEM_ID);
            this.gh = optInt;
            if (optInt != 0 && optInt != 1) {
                this.gh = 1;
            }
            this.kx = jSONObject.optDouble("custom_adn_sample_ratio", 0.0d);
            int optInt2 = jSONObject.optInt("enable_label_return", 0);
            this.j = optInt2;
            if (optInt2 != 0 && optInt2 != 1) {
                this.j = 0;
            }
            this.nh = jSONObject.optInt("dynamic_policy_enable", 0);
            com.bytedance.msdk.dq.s.ox.d("DynamicPolicy", "mDynamicPolicyEnable=" + this.nh);
            int i = this.nh;
            if (i != 0 && i != 1) {
                this.nh = 0;
            }
            int i2 = this.ob;
            int i3 = this.l;
            JSONObject optJSONObject6 = jSONObject.optJSONObject("p_c");
            if (optJSONObject6 != null) {
                this.ob = optJSONObject6.optInt("l_p_a", 0);
                this.l = optJSONObject6.optInt("l_p_r", 0);
            } else {
                this.ob = 0;
                this.l = 0;
            }
            if (i2 != this.ob || i3 != this.l) {
                com.bytedance.msdk.iw.d.s.dq();
            }
            com.bytedance.msdk.core.mn.dq.dq().dq(this.fw, this.cd);
            this.t = jSONObject.optInt("enable_bid_result_return", 0);
            this.gx = jSONObject.optInt("enable_bid_result_return_for_baidu", 0);
            this.xz = jSONObject.optInt("enable_bid_result_return_for_ks", 0);
            optJSONObject = jSONObject.optJSONObject("supervisor_feature");
            if (optJSONObject != null) {
                fw.dq(true);
                fw.dq(optJSONObject);
            } else {
                fw.dq(false);
            }
            optJSONArray = jSONObject.optJSONArray("ra_info");
            if (optJSONArray != null) {
                com.bytedance.msdk.core.admanager.reward.rewardagain.ox.dq(optJSONArray);
            }
            com.bytedance.msdk.mn.dq.dq.jy().k().d(jSONObject.optJSONObject("app_common_config"));
            JSONObject optJSONObject7 = jSONObject.optJSONObject("adn_init_conf");
            com.bytedance.msdk.mn.dq.dq.jy().ox(optJSONObject7);
            com.bytedance.msdk.mn.dq.dq.jy().k().dq(optJSONObject7);
            d2 = d(jSONObject.optJSONArray("adn_control_conf"));
            iw = iw(jSONObject.optJSONObject("poor_network_config"));
            JSONArray optJSONArray2 = jSONObject.optJSONArray("rit_conf");
            com.bytedance.msdk.mn.dq.dq.jy().d(optJSONArray2);
            com.bytedance.msdk.mn.dq.dq.jy().k().dq(optJSONArray2);
            kk = kk(jSONObject.optJSONObject("module_disable_control"));
            optJSONObject2 = jSONObject.optJSONObject("call_stack_conf");
            mn(optJSONObject2);
            optJSONObject3 = jSONObject.optJSONObject("custom_adn_feature");
            ia(optJSONObject3);
            optJSONObject4 = jSONObject.optJSONObject("timeout_req");
            o(optJSONObject4);
            optJSONObject5 = jSONObject.optJSONObject("is_callback");
            no(optJSONObject5);
            s = s(jSONObject.optJSONObject("label_outputs"));
            p = p(jSONObject.optJSONObject("label_group_infos"));
            dq = dq(jSONObject.optJSONArray("dynamic_rules"));
        } catch (Throwable th) {
            th = th;
            r2 = 0;
        }
        try {
            final String d3 = d(jSONObject.optJSONObject("dynamic_policy"));
            z2 = false;
            this.by = jSONObject.optInt("behavior_policy_enable", 0);
            com.bytedance.msdk.dq.s.ox.d("BehaviorPolicy", "mBehaviorPolicyConfigEnable=" + this.by);
            final String ox = ox(jSONObject.optJSONObject("behavior_policy"));
            JSONObject optJSONObject8 = jSONObject.optJSONObject("inter_full_refresh_cfg");
            String jSONObject2 = optJSONObject8 != null ? optJSONObject8.toString() : null;
            iw.dq(jSONObject2);
            final String str = jSONObject2;
            com.bytedance.msdk.mn.dq.dq.jy().k().dq(new Runnable() { // from class: com.bytedance.msdk.core.f.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    String dq2;
                    String dq3;
                    String dq4;
                    String dq5;
                    String dq6;
                    String dq7;
                    String dq8;
                    String dq9;
                    String dq10;
                    bl q = com.bytedance.msdk.mn.dq.dq.jy().k().q();
                    q.dq("is_trusteeship_monetize", ox.this.v);
                    q.dq("etag", ox.this.ox);
                    q.dq("max_age", ox.this.p);
                    q.dq("max_expire_time", ox.this.s);
                    q.dq("ab_version", ox.this.iw);
                    q.dq("ab_params", ox.this.mn);
                    q.dq("country", ox.this.ia);
                    q.dq("transparent_params", ox.this.kk);
                    q.dq("if_test", ox.this.ji);
                    q.dq("network_permission", ox.this.o);
                    q.dq("ecpm_precision_level", ox.this.no);
                    q.dq("fetch_primerit_level", ox.this.ig);
                    q.dq("app_abtest", ox.this.q);
                    q.dq("module_control", kk);
                    q.dq("tt_app_log_url", ox.this.f926f);
                    q.dq("break_request_times", ox.this.fw);
                    q.dq("break_request_hold_time", ox.this.cd);
                    q.dq("ex_info", ox.this.er);
                    q.dq("if_enable_label", ox.this.n);
                    q.dq("cpm_expire_time", ox.this.dq);
                    JSONObject jSONObject3 = optJSONObject;
                    q.dq("key_supervisor_feature", jSONObject3 != null ? jSONObject3.toString() : "");
                    q.dq("custom_adn_sample_ratio", (float) ox.this.kx);
                    q.dq("enable_label_return", ox.this.j);
                    q.dq("dynamic_policy_enable", ox.this.nh);
                    q.dq("behavior_policy_enable", ox.this.by);
                    q.dq("limit_p_a", ox.this.ob);
                    q.dq("limit_p_r", ox.this.l);
                    q.dq("enable_bid_result_return", ox.this.t);
                    q.dq("enable_bid_result_return_for_baidu", ox.this.gx);
                    q.dq("enable_bid_result_return_for_ks", ox.this.xz);
                    JSONObject jSONObject4 = optJSONObject2;
                    if (jSONObject4 != null) {
                        q.dq("call_stack", jSONObject4.toString());
                    } else {
                        q.dq("call_stack", "");
                    }
                    JSONObject jSONObject5 = optJSONObject3;
                    if (jSONObject5 != null) {
                        q.dq("custom_adn_feature", jSONObject5.toString());
                    } else {
                        q.dq("custom_adn_feature", "");
                    }
                    JSONObject jSONObject6 = optJSONObject4;
                    if (jSONObject6 != null) {
                        q.dq("timeout_req", jSONObject6.toString());
                    } else {
                        q.dq("timeout_req", "");
                    }
                    JSONObject jSONObject7 = optJSONObject5;
                    if (jSONObject7 != null) {
                        q.dq("is_callback", jSONObject7.toString());
                    } else {
                        q.dq("is_callback", "");
                    }
                    String str2 = optString;
                    if (str2 == null || TextUtils.isEmpty(str2)) {
                        q.iw("server_dist_host");
                    } else {
                        String dq11 = com.bytedance.msdk.ia.dq.dq(optString, com.bytedance.msdk.ia.d.dq());
                        if (dq11 != null) {
                            q.dq("server_dist_host", dq11);
                        }
                    }
                    String str3 = d2;
                    if (str3 != null && (dq10 = com.bytedance.msdk.ia.dq.dq(str3, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("adn_control_conf", dq10);
                    }
                    String str4 = iw;
                    if (str4 != null) {
                        q.dq("network_conf", str4);
                    }
                    if (!TextUtils.isEmpty(s) && (dq9 = com.bytedance.msdk.ia.dq.dq(s, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("label_outputs", dq9);
                    }
                    if (!TextUtils.isEmpty(p) && (dq8 = com.bytedance.msdk.ia.dq.dq(p, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("label_group_infos", dq8);
                    }
                    if (!TextUtils.isEmpty(dq) && (dq7 = com.bytedance.msdk.ia.dq.dq(dq, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("dynamic_rules", dq7);
                    }
                    if (!TextUtils.isEmpty(ox.this.wn) && (dq6 = com.bytedance.msdk.ia.dq.dq(ox.this.wn, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("ex_", dq6);
                    }
                    JSONArray jSONArray = optJSONArray;
                    if (jSONArray != null) {
                        String jSONArray2 = jSONArray.toString();
                        if (!TextUtils.isEmpty(jSONArray2) && (dq5 = com.bytedance.msdk.ia.dq.dq(jSONArray2, com.bytedance.msdk.ia.d.dq())) != null) {
                            q.dq("reward_again_styles", dq5);
                        }
                    }
                    if (!TextUtils.isEmpty(d3) && (dq4 = com.bytedance.msdk.ia.dq.dq(d3, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("dynamic_policy", dq4);
                    }
                    if (!TextUtils.isEmpty(ox) && (dq3 = com.bytedance.msdk.ia.dq.dq(ox, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("behavior_policy", dq3);
                    }
                    if (!TextUtils.isEmpty(str) && (dq2 = com.bytedance.msdk.ia.dq.dq(str, com.bytedance.msdk.ia.d.dq())) != null) {
                        q.dq("inter_full_refresh_cfg", dq2);
                    }
                    q.dq("is_config_from_assert", z);
                    q.dq("has_config_in_sp", true);
                }
            });
            dq(false, (JSONObject) null, (com.bytedance.msdk.core.iw.d) null);
        } catch (Throwable th2) {
            th = th2;
            r2 = 0;
            z2 = false;
            try {
                th.printStackTrace();
            } finally {
                dq(z2, (JSONObject) r2, (com.bytedance.msdk.core.iw.d) r2);
            }
        }
    }

    @Override // com.bytedance.msdk.core.f.dq
    public void dq(boolean z) {
        bl dq;
        JSONObject er;
        JSONObject jSONObject;
        int optInt;
        try {
            dq = com.bytedance.msdk.mn.s.dq();
        } catch (Throwable unused) {
            if (!z) {
                dq(true, (JSONObject) null, (com.bytedance.msdk.core.iw.d) null);
            }
            if (!com.bytedance.msdk.mn.dq.dq.jy().mp() || e.dq(com.bytedance.msdk.core.dq.getContext())) {
                return;
            }
        }
        if (!dq.s("has_config_in_sp") && (er = com.bytedance.msdk.core.d.no().er()) != null) {
            int optInt2 = er.optInt("cypher", -1);
            if (optInt2 == 2) {
                String dq2 = c.dq(er.optString("message"));
                if (!TextUtils.isEmpty(dq2)) {
                    try {
                        jSONObject = new JSONObject(dq2);
                        er = jSONObject;
                    } catch (Throwable th) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", ">>>>> setting data error: " + th.toString());
                    }
                }
                optInt = er.optInt("state_code");
                String optString = er.optString("message");
                if (optInt == 20000 || TextUtils.isEmpty(er.toString())) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", " 解密错误或者解析错误：stateCode=" + optInt + "，msg=" + optString);
                } else {
                    er.optJSONObject("adn_init_conf");
                    if (er.optString(PluginConstants.KEY_APP_ID).equals(com.bytedance.msdk.core.d.no().ig())) {
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "本地配置解析成功");
                        dq(er, true);
                        com.bytedance.msdk.core.mp.dq.dq().iw();
                        com.bytedance.msdk.core.d.no().dq((JSONObject) null);
                        if (!z) {
                            dq(true, (JSONObject) null, (com.bytedance.msdk.core.iw.d) null);
                        }
                        if (!com.bytedance.msdk.mn.dq.dq.jy().mp() || e.dq(com.bytedance.msdk.core.dq.getContext())) {
                            return;
                        }
                        com.bytedance.msdk.core.mp.dq.dq().dq(-2, "本地没有配置/当前网络不可用");
                    }
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "本地配置appid或appkey非法");
                }
            } else {
                if (optInt2 == 1) {
                    String d2 = com.bytedance.msdk.ia.dq.d(er.optString("message"), com.bytedance.msdk.ia.d.dq());
                    if (!TextUtils.isEmpty(d2)) {
                        try {
                            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "setting data : " + d2.toString());
                            jSONObject = new JSONObject(d2);
                            er = jSONObject;
                        } catch (Throwable th2) {
                            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "setting data error: ", th2);
                        }
                    }
                } else if (optInt2 == 0) {
                    er = new JSONObject(er.optString("message"));
                }
                optInt = er.optInt("state_code");
                String optString2 = er.optString("message");
                if (optInt == 20000) {
                }
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", " 解密错误或者解析错误：stateCode=" + optInt + "，msg=" + optString2);
            }
        }
        com.bytedance.msdk.core.d.no().dq((JSONObject) null);
        this.v = dq.ox("is_trusteeship_monetize");
        this.ox = dq.d("etag");
        this.p = dq.p("max_age");
        this.s = dq.p("max_expire_time");
        this.iw = dq.d("ab_version");
        this.mn = dq.d("ab_params");
        this.ia = dq.d("country");
        this.kk = dq.d("transparent_params");
        this.ji = dq.ox("if_test");
        this.o = dq.ox("network_permission");
        this.no = dq.d("ecpm_precision_level");
        this.ig = dq.d("fetch_primerit_level");
        this.f926f = dq.d("tt_app_log_url", "log-api.pangolin-sdk-toutiao.com/service/2/app_log/");
        this.fw = dq.d("break_request_times", 0L);
        this.cd = dq.d("break_request_hold_time", ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        this.er = dq.d("ex_info", 0);
        this.n = dq.d("if_enable_label", 0);
        this.dq = dq.d("cpm_expire_time", 259200000);
        this.kx = dq.d("custom_adn_sample_ratio", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.j = dq.d("enable_label_return", 0);
        this.nh = dq.d("dynamic_policy_enable", 0);
        this.by = dq.d("behavior_policy_enable", 0);
        this.ob = dq.d("limit_p_a", 0);
        this.l = dq.d("limit_p_r", 0);
        this.t = dq.d("enable_bid_result_return", 0);
        this.gx = dq.d("enable_bid_result_return_for_baidu", 0);
        this.xz = dq.d("enable_bid_result_return_for_ks", 0);
        com.bytedance.msdk.core.mn.dq.dq().dq(this.fw, this.cd);
        String d3 = dq.d("network_conf");
        if (!TextUtils.isEmpty(d3)) {
            iw(new JSONObject(d3));
        }
        String d4 = dq.d("reward_again_styles");
        if (!TextUtils.isEmpty(d4)) {
            mn(com.bytedance.msdk.ia.dq.d(d4, com.bytedance.msdk.ia.d.dq()));
        }
        String d5 = dq.d("adn_control_conf");
        if (!TextUtils.isEmpty(d5)) {
            if (!d5.startsWith("[") && !d5.startsWith("{")) {
                d5 = com.bytedance.msdk.ia.dq.d(d5, com.bytedance.msdk.ia.d.dq());
            }
            d(new JSONArray(d5));
        }
        String d6 = dq.d("module_control");
        if (!TextUtils.isEmpty(d6)) {
            kk(new JSONObject(d6));
        }
        boolean s = dq.s("all_active_control");
        if (s) {
            this.i.put("active_control", Boolean.valueOf(s));
        }
        String d7 = dq.d("call_stack");
        if (!TextUtils.isEmpty(d7)) {
            mn(new JSONObject(d7));
        }
        String d8 = dq.d("custom_adn_feature");
        if (!TextUtils.isEmpty(d8)) {
            ia(new JSONObject(d8));
        }
        String d9 = dq.d("timeout_req");
        if (!TextUtils.isEmpty(d9)) {
            o(new JSONObject(d9));
        }
        String d10 = dq.d("is_callback");
        if (!TextUtils.isEmpty(d10)) {
            no(new JSONObject(d10));
        }
        String d11 = dq.d("key_supervisor_feature");
        if (TextUtils.isEmpty(d11)) {
            fw.dq(false);
        } else {
            fw.dq(true);
            fw.dq(new JSONObject(d11));
        }
        String d12 = dq.d("label_outputs");
        if (!TextUtils.isEmpty(d12)) {
            if (!d12.startsWith("[") && !d12.startsWith("{")) {
                d12 = com.bytedance.msdk.ia.dq.d(d12, com.bytedance.msdk.ia.d.dq());
            }
            if (!TextUtils.isEmpty(d12)) {
                s(new JSONObject(d12));
            }
        }
        String d13 = dq.d("label_group_infos");
        if (!TextUtils.isEmpty(d13)) {
            if (!d13.startsWith("[") && !d13.startsWith("{")) {
                d13 = com.bytedance.msdk.ia.dq.d(d13, com.bytedance.msdk.ia.d.dq());
            }
            if (!TextUtils.isEmpty(d13)) {
                p(new JSONObject(d13));
            }
        }
        String d14 = dq.d("dynamic_rules");
        if (!TextUtils.isEmpty(d14)) {
            if (!d14.startsWith("[") && !d14.startsWith("{")) {
                d14 = com.bytedance.msdk.ia.dq.d(d14, com.bytedance.msdk.ia.d.dq());
            }
            if (!TextUtils.isEmpty(d14)) {
                dq(new JSONArray(d14));
            }
        }
        String d15 = dq.d("dynamic_policy");
        if (!TextUtils.isEmpty(d15)) {
            if (!d15.startsWith("[") && !d15.startsWith("{")) {
                d15 = com.bytedance.msdk.ia.dq.d(d15, com.bytedance.msdk.ia.d.dq());
            }
            if (!TextUtils.isEmpty(d15)) {
                d(new JSONObject(d15));
            }
        }
        String d16 = dq.d("behavior_policy");
        if (!TextUtils.isEmpty(d16)) {
            if (!d16.startsWith("[") && !d16.startsWith("{")) {
                d16 = com.bytedance.msdk.ia.dq.d(d16, com.bytedance.msdk.ia.d.dq());
            }
            if (!TextUtils.isEmpty(d16)) {
                ox(new JSONObject(d16));
            }
        }
        String d17 = dq.d("inter_full_refresh_cfg");
        if (!TextUtils.isEmpty(d17)) {
            String d18 = com.bytedance.msdk.ia.dq.d(d17, com.bytedance.msdk.ia.d.dq());
            if (!TextUtils.isEmpty(d18)) {
                iw.dq(d18);
            }
        }
        String d19 = dq.d("ex_");
        if (!TextUtils.isEmpty(d19) && !d19.startsWith("[") && !d19.startsWith("{")) {
            this.wn = com.bytedance.msdk.ia.dq.d(d19, com.bytedance.msdk.ia.d.dq());
        }
        if (!TextUtils.isEmpty(dq.d("app_abtest"))) {
            String d20 = dq.d("app_abtest");
            this.q = d20;
            ia(d20);
        }
        if (!z) {
            dq(true, (JSONObject) null, (com.bytedance.msdk.core.iw.d) null);
        }
        if (!com.bytedance.msdk.mn.dq.dq.jy().mp() || e.dq(com.bytedance.msdk.core.dq.getContext())) {
            return;
        }
        com.bytedance.msdk.core.mp.dq.dq().dq(-2, "本地没有配置/当前网络不可用");
    }

    public void dq(final boolean z, final JSONObject jSONObject, com.bytedance.msdk.core.iw.d dVar) {
        if (dVar != null) {
            this.cv = dVar;
        }
        final boolean ji = ji();
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        com.bytedance.msdk.iw.d.dq.d().dq(com.bytedance.msdk.core.dq.getContext(), z, ji, new com.bytedance.msdk.core.iw.d() { // from class: com.bytedance.msdk.core.f.ox.2
            @Override // com.bytedance.msdk.core.iw.d
            public void dq() {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "MSDK init finish.........hasConfig:" + ji);
                if (ji) {
                    ox.this.bu();
                    if (ox.this.cv != null) {
                        ox.this.cv.dq();
                    }
                    com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.core.f.ox.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!ox.this.le.get()) {
                                ox.this.le.set(true);
                                int dq = com.bytedance.msdk.iw.d.dq.dq();
                                long elapsedRealtime2 = SystemClock.elapsedRealtime() - com.bytedance.msdk.iw.ox.dq();
                                long elapsedRealtime3 = SystemClock.elapsedRealtime();
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                long j = elapsedRealtime3 - elapsedRealtime;
                                try {
                                    JSONObject jSONObject2 = jSONObject;
                                    if (jSONObject2 != null) {
                                        jSONObject2.put("adn_time", j);
                                    }
                                } catch (Throwable unused) {
                                }
                                HashMap hashMap = new HashMap();
                                hashMap.put("csj_init_time", Long.valueOf(com.bytedance.sdk.gromore.init.iw.p - com.bytedance.sdk.gromore.init.iw.dq));
                                if (com.bytedance.msdk.iw.p.dq()) {
                                    com.bytedance.msdk.dq.s.ox.dq("TMe", "-----==---- 正常上报sdk_init_end");
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    com.bytedance.msdk.s.iw.dq(elapsedRealtime2, dq, z ? 1 : 0, -1L, jSONObject, hashMap);
                                } else {
                                    com.bytedance.msdk.dq.s.ox.dq("TMe", "-----==---- 延时上报sdk_init_end");
                                    AnonymousClass2 anonymousClass23 = AnonymousClass2.this;
                                    com.bytedance.msdk.iw.p.dq(elapsedRealtime2, dq, z ? 1 : 0, jSONObject, hashMap);
                                }
                                com.bytedance.msdk.core.d.dq.dq();
                                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "sdk init end, duration: " + elapsedRealtime2 + ", initAdnCount: " + dq + ", isFromLocalConfig: " + z);
                            }
                            d.dq(com.bytedance.msdk.core.dq.d()).dq(new com.bytedance.msdk.api.p.s() { // from class: com.bytedance.msdk.core.f.ox.2.1.1
                                @Override // com.bytedance.msdk.api.p.s
                                public void dq(List<String> list) {
                                    com.bytedance.msdk.dq.s.ox.dq("TMe", "初始化更新pangle配置成功");
                                }
                            });
                        }
                    });
                }
            }
        });
    }

    public boolean dq(int i) {
        if (!fd()) {
            return false;
        }
        if (i == 1) {
            return jy();
        }
        if (i == 2) {
            return f();
        }
        if (i == 3) {
            return cd();
        }
        if (i == 5) {
            return gh() && le();
        }
        if (i == 10) {
            return fw();
        }
        if (i == 7) {
            return r();
        }
        if (i != 8) {
            return true;
        }
        return i();
    }

    public boolean dq(long j) {
        return j < ((long) this.dq);
    }

    public boolean dq(String str, int i) {
        com.bytedance.msdk.core.no.d dq;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return com.bytedance.msdk.mn.dq.dq.jy().mp() || (dq = com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, 101)) == null || dq.ce() == i;
    }

    public boolean dq(String str, String str2, int i) {
        List<no> t;
        com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, 101);
        if (dq == null || (t = dq.t()) == null) {
            return false;
        }
        for (no noVar : t) {
            if (noVar != null && TextUtils.equals(noVar.cd(), str2)) {
                return noVar.wn();
            }
        }
        return false;
    }

    public int ds() {
        return this.ob;
    }

    public boolean e() {
        return Integer.valueOf(this.no).intValue() > 1;
    }

    public boolean er() {
        return this.nh == 1;
    }

    public boolean f() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_interaction_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean fw() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_interactionfull_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean gh() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_feed_control");
        return bool == null || !bool.booleanValue();
    }

    public String gx() {
        return this.wn;
    }

    public long h() {
        return com.bytedance.msdk.mn.dq.dq.jy().s();
    }

    public boolean ha() {
        com.bytedance.msdk.dq.s.ox.d("TMe", "enable_bid_result_return = " + this.t);
        com.bytedance.msdk.dq.s.ox.d("TMe", "enable_bid_result_return_for_baidu = " + this.gx);
        return cv() || dc();
    }

    public boolean i() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_full_control");
        return bool == null || !bool.booleanValue();
    }

    public String ia() {
        return this.ia;
    }

    public boolean ig() {
        return this.mp == 1;
    }

    public Map<String, String> ir() {
        return this.wp;
    }

    public List<p> iw(String str) {
        return this.op.get(str);
    }

    public boolean iw() {
        return this.le.get();
    }

    public com.bytedance.msdk.core.d.d j() {
        return this.vf;
    }

    public boolean ji() {
        return (com.bytedance.msdk.mn.dq.dq.jy().mp() || com.bytedance.msdk.mn.dq.dq.jy().ox()) ? false : true;
    }

    public boolean jw() {
        com.bytedance.msdk.dq.s.ox.d("TMe", "enable_bid_result_return = " + this.t);
        com.bytedance.msdk.dq.s.ox.d("TMe", "enable_bid_result_return_for_ks = " + this.xz);
        return this.t == 1 && this.xz == 1;
    }

    public boolean jy() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_banner_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean k() {
        return this.o > 0;
    }

    public String kk() {
        return this.kk;
    }

    public int kx() {
        return com.bytedance.msdk.mn.dq.dq.jy().p();
    }

    public Map<String, p> l() {
        return this.bl;
    }

    public boolean le() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_native_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean mn() {
        return this.ce == 1;
    }

    public String mp() {
        return this.q;
    }

    public boolean n() {
        if (this.gh == Integer.MAX_VALUE) {
            this.gh = 1;
        }
        return this.gh == 1;
    }

    public com.bytedance.msdk.core.ox.d nh() {
        if (wn()) {
            return this.uh;
        }
        return null;
    }

    public String no() {
        return this.f926f;
    }

    public String o() {
        if (this.ox == null) {
            this.ox = com.bytedance.msdk.mn.s.dq().d("etag");
        }
        return this.ox;
    }

    public int ob() {
        return this.ji;
    }

    public boolean op() {
        return this.k == 1;
    }

    public void ox(int i) {
        this.ji = i;
    }

    public boolean ox() {
        return this.ds;
    }

    public boolean ox(String str) {
        return com.bytedance.msdk.mn.dq.dq.jy().d(str);
    }

    public boolean ox(String str, int i) {
        com.bytedance.msdk.core.no.d dq;
        Map<Integer, List<no>> kx;
        if (com.bytedance.msdk.mn.dq.dq.jy().mp()) {
            return true;
        }
        return (TextUtils.isEmpty(str) || (dq = com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, 101)) == null || (kx = dq.kx()) == null || kx.size() == 0) ? false : true;
    }

    public void p(String str) {
        try {
            bl dq = com.bytedance.msdk.mn.s.dq();
            if ("2".equals(str)) {
                this.i.put("active_control", Boolean.TRUE);
                dq.dq("all_active_control", true);
            } else {
                this.i.put("active_control", Boolean.FALSE);
                dq.dq("all_active_control", false);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean p() {
        return this.vw;
    }

    public boolean q() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("ad_event_control");
        return bool == null || !bool.booleanValue();
    }

    public boolean r() {
        if (!fd()) {
            return false;
        }
        Boolean bool = this.i.get("type_reward_control");
        return bool == null || !bool.booleanValue();
    }

    public s s(String str) {
        return this.ir.get(str);
    }

    public boolean s() {
        return this.ha;
    }

    public boolean t() {
        return this.er == 1;
    }

    public Map<String, List<String>> u() {
        return this.f925e;
    }

    public int uh() {
        return this.dq;
    }

    public Map<String, Integer> v() {
        return this.f923c;
    }

    public boolean vf() {
        return this.ji == 1;
    }

    public int vw() {
        return this.l;
    }

    public boolean wn() {
        return this.by == 1;
    }

    public boolean wp() {
        try {
            return Integer.valueOf(this.no).intValue() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public int xz() {
        com.bytedance.msdk.core.d.d dVar = this.vf;
        if (dVar != null) {
            return dVar.dq();
        }
        return 0;
    }

    public Map<String, Integer> yy() {
        return this.u;
    }
}
