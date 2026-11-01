package com.bytedance.sdk.openadsdk.core.bl;

import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ce;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.ir.kx;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.nativeexpress.gh;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.o;
import com.bytedance.sdk.openadsdk.core.r.bl;
import com.bytedance.sdk.openadsdk.core.r.ir;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.wn;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.abn;
import g.hat;
import g.he;
import j$.util.concurrent.ConcurrentHashMap;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn implements p {
    private static final String gl = null;

    /* renamed from: a, reason: collision with root package name */
    private float f2480a;
    private String aa;
    private volatile com.bytedance.sdk.component.mn.dq ae;
    private String ah;
    private boolean ao;
    private int ax;
    private int az;

    /* renamed from: b, reason: collision with root package name */
    private String f2481b;
    private int bf;
    private int bn;
    private boolean bs;
    private float bx;
    private com.bytedance.sdk.openadsdk.core.q.p.dq by;

    /* renamed from: c, reason: collision with root package name */
    private String f2482c;
    private int cc;
    private String ce;
    private boolean dk;
    private JSONObject dn;
    private int dr;
    private String el;
    private JSONObject en;
    private boolean es;
    private boolean ev;
    private volatile SharedPreferences ez;
    private int fa;
    private int fg;
    private Boolean fi;
    private long fn;
    private SharedPreferences fp;
    private JSONObject fq;
    private int fx;

    /* renamed from: g, reason: collision with root package name */
    private String f2486g;
    private int gm;
    private String gn;
    private int gv;
    private ir gx;
    private int h;
    private boolean he;
    private int hf;
    private int hg;
    private boolean ho;
    private String hy;
    private String hz;
    private Boolean ie;
    private boolean il;
    private String ip;
    private int iu;
    private boolean ix;
    private boolean iy;
    private JSONObject j;
    private int jb;
    private int jc;
    private int jn;
    private wn jo;
    private int ju;
    private int jv;
    private JSONObject kf;
    private volatile SharedPreferences kj;
    private int kr;
    private int lk;
    private Object lm;
    private int lq;
    private final String mc;
    private volatile int mj;
    private int ml;
    private boolean ne;
    private long nh;
    private JSONObject nm;
    private boolean np;
    private float nt;
    private float ny;
    private int oh;
    public volatile com.bytedance.sdk.component.mn.dq ox;
    public volatile com.bytedance.sdk.component.mn.dq p;
    private String ps;
    private String py;
    private int qc;
    private boolean qz;
    private int ri;
    private float rp;
    private Map<String, Object> rr;
    private int ru;
    private JSONObject rv;
    public int s;
    private Set<String> sc;
    private int sp;
    private String sy;
    private String t;
    private String td;
    private String tl;
    private int tu;
    private boolean tv;
    private String uo;
    private gh us;
    private JSONObject ux;
    private String vf;
    private d vk;
    private int w;
    private final int wi;
    private float wq;
    private int x;
    private int xj;
    private JSONObject xn;
    private String xo;
    private String xq;
    private int xx;
    private volatile boolean y;
    private long yj;
    private int yo;
    private boolean yw;
    private JSONObject zc;
    private boolean zi;
    private int iw = he.UNDEFINED_ITEM_ID;
    private Set<String> mn = Collections.synchronizedSet(new HashSet());
    private int ia = he.UNDEFINED_ITEM_ID;
    private int kk = he.UNDEFINED_ITEM_ID;
    private int o = he.UNDEFINED_ITEM_ID;
    private int no = he.UNDEFINED_ITEM_ID;
    private String ig = null;
    private int mp = he.UNDEFINED_ITEM_ID;
    private int q = he.UNDEFINED_ITEM_ID;
    private int jy = Integer.MIN_VALUE;

    /* renamed from: f, reason: collision with root package name */
    private int f2485f = Integer.MIN_VALUE;
    private int fw = Integer.MIN_VALUE;
    private int cd = -1;
    private int gh = Integer.MIN_VALUE;
    private String r = null;
    private int i = he.UNDEFINED_ITEM_ID;
    private int le = he.UNDEFINED_ITEM_ID;
    public int dq = 0;
    private int k = Integer.MIN_VALUE;
    private int wp = he.UNDEFINED_ITEM_ID;

    /* renamed from: d, reason: collision with root package name */
    public int f2483d = 10;

    /* renamed from: e, reason: collision with root package name */
    private int f2484e = he.UNDEFINED_ITEM_ID;
    private int kx = 3600;
    private com.bytedance.sdk.openadsdk.core.iw.d ji = null;
    private com.bytedance.sdk.openadsdk.core.dislike.d bl = null;
    private boolean n = false;
    private int op = he.UNDEFINED_ITEM_ID;
    private final Map<String, dq> ir = new ConcurrentHashMap();
    private Map<String, com.bytedance.sdk.component.adexpress.dq.ox.p> u = new HashMap();
    private Set<String> er = Collections.synchronizedSet(new HashSet());
    private final List<Object> wn = new CopyOnWriteArrayList();
    private JSONObject ob = null;
    private String l = "";
    private int uh = he.UNDEFINED_ITEM_ID;
    private int xz = he.UNDEFINED_ITEM_ID;
    private long yy = 0;
    private Set<String> v = new ConcurrentSkipListSet();
    private Set<String> ds = new ConcurrentSkipListSet();
    private Set<String> vw = new ConcurrentSkipListSet();
    private int ha = he.UNDEFINED_ITEM_ID;
    private int cv = he.UNDEFINED_ITEM_ID;
    private long dc = 2147483647L;
    private int jw = he.UNDEFINED_ITEM_ID;
    private int fd = he.UNDEFINED_ITEM_ID;
    private int bu = he.UNDEFINED_ITEM_ID;
    private int ws = 0;
    private long ij = 0;
    private int xi = 0;
    private long z = 0;
    private int pa = he.UNDEFINED_ITEM_ID;
    private JSONObject io = null;
    private JSONObject m = null;
    private int xv = 3;

    public mn() {
        int ox = com.bytedance.sdk.openadsdk.dq.d.d.ox();
        this.wi = ox;
        this.cc = ox;
        this.mc = "live_sdk_conf";
        this.yo = he.UNDEFINED_ITEM_ID;
        this.hf = he.UNDEFINED_ITEM_ID;
        this.f2481b = null;
        this.tl = null;
        this.xj = he.UNDEFINED_ITEM_ID;
        this.bf = he.UNDEFINED_ITEM_ID;
        this.x = 0;
        this.bx = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.nt = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.tv = false;
        this.ny = 8.5f;
        this.f2480a = 7.3f;
        this.sc = Collections.synchronizedSet(new HashSet());
        this.hy = null;
        this.ip = null;
        this.ah = "apps.bytesfield.com";
        this.xx = he.UNDEFINED_ITEM_ID;
        this.jv = he.UNDEFINED_ITEM_ID;
        this.jn = 20;
        this.w = 3;
        this.y = false;
        this.wq = -1.0f;
        this.rp = 2.1474836E9f;
        this.fq = null;
        this.bn = he.UNDEFINED_ITEM_ID;
        this.oh = 2;
        this.ux = null;
        this.en = null;
        this.qz = false;
        this.lk = 3;
        this.tu = 0;
        this.fx = 1;
        this.gm = he.UNDEFINED_ITEM_ID;
        this.dn = null;
        this.kr = 0;
        this.el = null;
        this.fa = 0;
        this.hg = 0;
        this.uo = null;
        this.gv = 1;
        this.ix = true;
        this.ne = false;
        this.xn = null;
        this.sp = 1;
        this.xq = "跳过";
        this.hz = "";
        this.ml = 0;
        this.iu = 0;
        this.jb = 0;
        this.ps = "";
        this.az = -1;
        this.fn = -1L;
        this.ax = 0;
        this.yj = 2147483647L;
        this.fg = he.UNDEFINED_ITEM_ID;
        this.ri = he.UNDEFINED_ITEM_ID;
        this.dr = he.UNDEFINED_ITEM_ID;
        this.ju = he.UNDEFINED_ITEM_ID;
        this.mj = he.UNDEFINED_ITEM_ID;
        this.kj = null;
        this.rv = null;
        this.ez = null;
        this.lm = new Object();
        this.ox = null;
        this.nm = null;
        this.iy = false;
        this.il = false;
        this.he = false;
        this.s = 0;
        this.ao = false;
        this.ho = false;
        this.es = true;
        this.yw = false;
        this.lq = 0;
        this.qc = he.UNDEFINED_ITEM_ID;
        this.bs = false;
        this.jc = 0;
        this.rr = new HashMap();
        this.aa = "";
        this.ie = null;
        this.fi = null;
        this.np = false;
    }

    private com.bytedance.sdk.component.mn.dq ax() {
        if (this.p == null) {
            this.p = n.dq("tt_sdk_lp_w_list");
        }
        return this.p;
    }

    public static Set<String> dq(Set<String> set) {
        try {
            if (set == null) {
                return new HashSet();
            }
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            return hashSet;
        } catch (Throwable unused) {
            return new HashSet();
        }
    }

    private void fg() {
        d();
        com.bytedance.sdk.openadsdk.core.ox.ox.dq().dq(this.f2481b);
        this.ox.dq("url_stats", this.sy);
        if (!"https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/".equals(this.f2486g) && !TextUtils.isEmpty(this.f2486g)) {
            this.ox.dq("img_bucket", this.f2486g);
        }
        SharedPreferences.Editor edit = ri().edit();
        edit.putString("url_stats", this.sy);
        this.ox.dq("url_alog", this.tl);
        edit.putString("url_alog", this.tl);
        this.ox.dq("xpath", this.vf);
        if (this.j != null) {
            this.ox.dq("digest", this.j.toString());
        }
        this.ox.dq("data_time", this.nh);
        this.ox.dq("fetch_template", this.hf);
        this.ox.dq("pyload_h5", this.t);
        com.bytedance.sdk.component.mn.dq dqVar = this.ox;
        ir irVar = this.gx;
        dqVar.dq("insert_js_config", irVar != null ? irVar.toString() : "");
        com.bytedance.sdk.component.mn.dq dqVar2 = this.ox;
        com.bytedance.sdk.openadsdk.core.q.p.dq dqVar3 = this.by;
        dqVar2.dq("white_check_config", dqVar3 != null ? dqVar3.toString() : "");
        this.ox.dq("splash_check_type", this.uh);
        this.ox.dq("if_both_open", this.ha);
        this.ox.dq("adlog_exception_batch", this.fd);
        this.ox.dq("adlog_interval", this.dc);
        this.ox.dq("adlog_batch", this.jw);
        this.ox.dq("adlog_debug", this.bu);
        this.ox.dq("enable_ttvideo", this.cd);
        this.ox.dq("enable_zaid", this.gh);
        this.ox.dq("ext_use_type", this.z);
        this.ox.dq("enable_dl_ext", this.xi);
        this.ox.dq("download_receiver_enable", this.f2484e);
        this.ox.dq("launch_strategy", this.dq);
        this.ox.dq("dl_popup_duration", this.k);
        this.ox.dq("switch_audio_focus", this.pa);
        this.ox.dq("opt_show_check", this.wp);
        if (this.io != null) {
            this.ox.dq("pitaya_general_settings", this.io.toString());
        }
        if (this.zc != null) {
            this.ox.dq("live_stream_cof", this.zc.toString());
        }
        this.ox.dq("disable_show_url", this.gm);
        if (this.dn != null) {
            this.ox.dq("sensor_direction", this.dn.toString());
        }
        if (this.kf != null) {
            this.ox.dq("pitaya_business_conf", this.kf.toString());
        }
        com.bytedance.sdk.component.mn.dq dqVar4 = this.ox;
        JSONObject jSONObject = this.m;
        dqVar4.dq("http_drop", jSONObject == null ? "" : jSONObject.toString());
        this.ox.dq("stats_batch", this.xv);
        this.ox.dq("event_switch", this.cc);
        this.ox.dq("pre_fetch_cnt", this.f2483d);
        this.ox.dq("web_upload_enable", this.iw);
        this.ox.dq("web_upload_content_type", this.mn);
        this.ox.dq("web_upload_send_restowv", this.ia);
        this.ox.dq("web_upload_max_retry", this.q);
        this.ox.dq("web_upload_max_single_file", this.kk);
        this.ox.dq("web_upload_max_zip_file", this.o);
        this.ox.dq("web_upload_report_url", this.ig);
        this.ox.dq("web_upload_storage_type", this.mp);
        this.ox.dq("web_upload_report_only_wifi", this.no);
        this.ox.dq("app_list_control", this.xz);
        this.ox.dq("max_tpl_cnts", this.xj);
        this.ox.dq("fetch_tpl_timeout_ctrl", this.bf);
        this.ox.dq("fetch_tpl_timeout_ctrl_bad_device", this.x);
        this.ox.dq("tpl_render_error_rate_h5", this.bx);
        this.ox.dq("tpl_render_error_rate_native", this.nt);
        this.ox.dq("mid_value", this.ny);
        this.ox.dq("low_value", this.f2480a);
        this.ox.dq("tpl_enable_render_timeout_opt", this.tv);
        this.ox.dq("open_single_abi", this.dk);
        this.ox.dq("webview_cache_count", this.jv);
        this.ox.dq("webview_cache_count_v3", this.jn);
        this.ox.dq("webview_render_concurrent_count", this.w);
        this.ox.dq("gecko_hosts", this.sc);
        this.ox.dq("enable_apm_pv", this.zi);
        this.ox.dq("gecko_ids", this.hz);
        this.ox.dq("hit_app_list_time", this.yy);
        this.ox.dq("hit_app_list_data", this.v);
        this.ox.dq("scheme_list_data", this.ds);
        this.ox.dq("top_scheme_list_data", this.vw);
        this.ox.dq("policy_url", this.py);
        com.bytedance.sdk.component.mn.dq dqVar5 = this.ox;
        Boolean bool = this.ie;
        dqVar5.dq("use_mediation_map", bool != null ? bool.booleanValue() : false);
        this.ox.dq("circle_splash_switch", this.i);
        this.ox.dq("apm_pv_config", this.r);
        this.ox.dq("circle_load_splash_time", this.le);
        this.ox.dq("dyn_draw_engine_url", this.hy);
        this.ox.dq("play_component_ugen_engine_url", this.ip);
        this.ox.dq("ad_pkg_info_url", this.ah);
        this.ox.dq("disable_dynamic_code_group", this.h);
        this.ox.dq("dynamic_code_group_cache_time", this.kx);
        this.ox.dq("sp_key_if_sp_cache", this.xx);
        this.ox.dq("download_sdk_config", this.l);
        com.bytedance.sdk.component.mn.dq dqVar6 = this.ox;
        JSONObject jSONObject2 = this.en;
        dqVar6.dq("thread_config", jSONObject2 != null ? jSONObject2.toString() : "");
        this.ox.dq("npth_enable_type", this.s);
        this.ox.dq("is_sp_send_meta", this.es);
        this.ox.dq("io_create_ad", this.ao);
        this.ox.dq("use_csj_main", this.ho);
        this.ox.dq("is_first_plugin_resources", this.yw);
        this.ox.dq("vbtt", this.yo);
        this.ox.dq("preload_switch", this.bs);
        this.ox.dq("preload_time_point", this.jc);
        this.ox.dq("app_info_cache_switch", this.ev);
        this.ox.dq("is_adapt_density", this.np);
        if (!TextUtils.isEmpty(this.ce)) {
            this.ox.dq("template_ids", this.ce);
        }
        if (!TextUtils.isEmpty(this.f2482c)) {
            this.ox.dq("tpl_infos", this.f2482c);
        }
        com.bytedance.sdk.component.mn.dq dqVar7 = this.ox;
        gh ghVar = this.us;
        dqVar7.dq("tpl_timeout_ctrl", ghVar != null ? ghVar.toString() : "");
        this.ox.dq("call_stack_rate", this.wq);
        this.ox.dq("gnd_prefetch_cache_ttl", this.fn);
        this.ox.dq("gnd_prefetch_cache_size", this.az);
        this.ox.dq("global_rate", this.rp);
        this.ox.dq("read_video_from_cache", this.bn);
        this.ox.dq("brand_video_cache_count", this.oh);
        this.ox.dq("enable_bw_screen_detection", this.qz);
        this.ox.dq("splash_card_show_max_count", this.lk);
        com.bytedance.sdk.component.mn.dq dqVar8 = this.ox;
        com.bytedance.sdk.openadsdk.core.iw.d dVar = this.ji;
        dqVar8.dq("clog_config", dVar != null ? dVar.toString() : "");
        com.bytedance.sdk.component.mn.dq dqVar9 = this.ox;
        com.bytedance.sdk.openadsdk.core.dislike.d dVar2 = this.bl;
        dqVar9.dq("clog_config", dVar2 != null ? dVar2.toString() : "");
        this.ox.dq("check_live_room", this.n);
        this.ox.dq("can_init_live", this.ix);
        this.ox.dq("new_app_list", this.ne);
        com.bytedance.sdk.component.mn.dq dqVar10 = this.ox;
        d dVar3 = this.vk;
        dqVar10.dq("app_live_config", dVar3 != null ? dVar3.toString() : "");
        com.bytedance.sdk.component.mn.dq dqVar11 = this.ox;
        JSONObject jSONObject3 = this.xn;
        dqVar11.dq("plugin_update_state", jSONObject3 != null ? jSONObject3.toString() : "");
        com.bytedance.sdk.component.mn.dq dqVar12 = this.ox;
        JSONObject jSONObject4 = this.rv;
        dqVar12.dq("antispam_autoclick_detect", jSONObject4 != null ? jSONObject4.toString() : "");
        this.ox.dq("pglam_main_enable", this.fa);
        this.ox.dq("pglam_dns_check_enable", this.hg);
        this.ox.dq("pglam_clazz_check", this.uo);
        this.ox.dq("ud_enable", this.gv);
        this.ox.dq("is_open_isw", this.sp);
        edit.putInt("is_kv_cache_type", this.ml);
        edit.putInt("kv_init_type", this.iu);
        edit.putString(TTDownloadField.TT_MD5, this.td);
        edit.putString(abn.EXTRA_URL, this.gn);
        edit.apply();
        this.ox.dq("lp_url_sw", this.jb);
        if (this.jb == 1) {
            ax().dq("lp_list", this.ps);
        }
        if (this.jo != null) {
            this.ox.dq("live_sdk_conf", this.jo.toString());
        }
        this.ox.dq("open_dl_type", this.lq);
        this.ox.dq("app_dl_scheme_list", this.xo);
        this.ox.dq("scheme_get_type", this.tu);
        this.ox.dq("scheme_get_num", this.fx);
        this.ox.dq("if_query_all_package", this.kr);
        if (this.ux != null) {
            this.ox.dq("video_cache_config", this.ux.toString());
        }
        if (this.fq != null) {
            this.ox.dq("log_rate_conf", this.fq.toString());
        }
        this.ox.dq("splash_close_text", this.xq);
        this.ox.dq("network_module", this.op);
        this.ox.dq("m_vids_join", this.qc);
        this.ox.dq("mini_event_upload_version", this.ax);
        this.ox.dq("bg_web_readd_t", this.yj);
        this.ox.dq("title_priority", this.fg);
        this.ox.dq("splash_video_opt_enable", this.ri);
        this.ox.dq("refresh_req_num", this.dr);
        this.ox.dq("refresh_max_times", this.ju);
        this.ox.dq("shake_trigger_control", this.ru);
        this.ox.dq("net_rating", this.iy);
        this.ox.dq("device_rating", this.il);
        this.ox.dq("bytebench_rating", this.he);
        com.bytedance.sdk.component.mn.dq dqVar13 = this.ox;
        JSONObject jSONObject5 = this.nm;
        dqVar13.dq("net_rating_config", jSONObject5 != null ? jSONObject5.toString() : "");
        this.ox.dq("express_gesture_enable", this.jy);
        this.ox.dq("enable_download_proto", this.fw);
        this.ox.dq("app_express_gesture_priority", this.f2485f);
        this.ox.dq("ad_slot_conf_block", this.aa);
        com.bytedance.sdk.openadsdk.core.r.n.dq(this.ox);
        uh.dq(this.ox);
        com.bytedance.sdk.openadsdk.core.r.mn.d(this.ox);
    }

    private String i(String str) {
        return "ad_slot_conf_".concat(String.valueOf(str));
    }

    private static boolean ig(int i) {
        return i == 0 || i == 1 || i == 2;
    }

    private dq k(String str) {
        String d2;
        com.bytedance.sdk.component.mn.dq ox = ox();
        dq dqVar = null;
        try {
            if (ox == null) {
                if (this.kj == null) {
                    this.kj = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "tt_sdk_settings_slot", 0);
                }
                d2 = this.kj.getString(i(str), "");
            } else {
                d2 = ox.d(i(str), "");
            }
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            dqVar = ox(new JSONObject(d2));
            this.ir.put(str, dqVar);
            return dqVar;
        } catch (Throwable th) {
            ig.d("TTSdkSetting", "buildSlot failed:" + th.getMessage());
            return dqVar;
        }
    }

    private dq le(String str) {
        dq dqVar = null;
        try {
            bn();
            String string = this.ez.getString(i(str), null);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            dqVar = ox(new JSONObject(string));
            this.ir.put(str, dqVar);
            return dqVar;
        } catch (Throwable th) {
            ig.d("TTSdkSetting", "buildSlot failed:" + th.getMessage());
            return dqVar;
        }
    }

    private static dq ox(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("code_id");
        boolean dq = h.dq(jSONObject, "enable_bidding_cache", false);
        long dq2 = h.dq(jSONObject, "bidding_cache_skip_time", 0L);
        boolean dq3 = h.dq(jSONObject, "enable_bidding_pre_fetch", false);
        int dq4 = h.dq(jSONObject, "auto_play", 1);
        int dq5 = h.dq(jSONObject, "voice_control", 1);
        int dq6 = h.dq(jSONObject, "voice_control", 0);
        int dq7 = h.dq(jSONObject, "rv_preload", 2);
        int dq8 = h.dq(jSONObject, "nv_preload", 1);
        int dq9 = h.dq(jSONObject, "sp_preload", 0);
        int dq10 = h.dq(jSONObject, "skip_time_displayed", 0);
        int dq11 = h.dq(jSONObject, "reg_creative_control", 1);
        int dq12 = h.dq(jSONObject, "rv_skip_time", 0);
        int dq13 = h.dq(jSONObject, "iv_skip_time", 0);
        int dq14 = h.dq(jSONObject, "if_show_win", 1);
        int dq15 = h.dq(jSONObject, "stop_time", 1500);
        int dq16 = h.dq(jSONObject, "native_playable_delay", 0);
        boolean dq17 = h.dq(jSONObject, "close_on_click", false);
        int dq18 = h.dq(jSONObject, "splash_load_type", 2);
        int dq19 = h.dq(jSONObject, "splash_buffer_time", 100);
        int dq20 = h.dq(jSONObject, "time_out_control", ZeusPluginEventCallback.EVENT_START_LOAD);
        int dq21 = h.dq(jSONObject, "time_out_control_type", 0);
        int dq22 = h.dq(jSONObject, "slot_type", -1);
        return dq.dq().dq(optString).o(dq4).no(!ig(dq5) ? 1 : dq5).ig(dq7).mp(dq8).q(dq10).jy(dq11).ia(dq12).mn(ig(dq6) ? dq6 : 0).f(dq14).p(dq9).s(dq15).iw(dq16).ox(dq20).fw(dq18).cd(dq19).kk(dq13).ox(dq17).gh(dq21).dq(dq2).d(dq).dq(dq3).d(dq22).dq(h.dq(jSONObject, "refresh_rit_sw", 0));
    }

    public static void p() {
        mn d2 = wp.d();
        if (d2 != null) {
            boolean dc = d2.dc();
            if (no.ia().h().values().booleanValue(1) != dc) {
                hat f2 = hat.f();
                f2.f19148c.put(0, new op().dq(TTDownloadField.TT_DOWNLOAD_PATH, o.dq(dc)));
                no.ia().h().call(10, f2.k(), Void.class);
            }
            if (d2.ix && d2.jo != null) {
                com.bytedance.sdk.openadsdk.core.live.d.dq().d();
            }
            ce.ox();
            com.bytedance.sdk.openadsdk.core.u.dq.dq().dq(wp.getContext());
        }
    }

    private void p(JSONObject jSONObject) {
        if (jSONObject == null) {
            this.iw = 0;
            this.mn.clear();
            this.ia = 0;
            this.kk = 2;
            this.o = 5;
            this.q = 0;
            this.ig = "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/";
            this.mp = 0;
            this.no = 0;
            return;
        }
        this.iw = jSONObject.optInt("enable", 0);
        JSONArray optJSONArray = jSONObject.optJSONArray("content_type");
        this.mn.clear();
        if (optJSONArray != null && optJSONArray.length() != 0) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                String optString = optJSONArray.optString(i);
                if (!TextUtils.isEmpty(optString)) {
                    this.mn.add(optString);
                }
            }
        }
        this.ia = jSONObject.optInt("send_response_to_webview", 0);
        this.kk = jSONObject.optInt("max_report_size_single", 2);
        this.o = jSONObject.optInt("max_report_size_total", 5);
        this.q = jSONObject.optInt("max_report_times", 0);
        this.ig = jSONObject.optString("report_url", "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/");
        this.mp = jSONObject.optInt("storage_type", 0);
        this.no = jSONObject.optInt("report_only_wifi_enable", 0);
    }

    private SharedPreferences ri() {
        if (this.fp == null) {
            this.fp = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "tt_sdk_settings_other", 0);
        }
        return this.fp;
    }

    private int s(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("splash_check_type", 1);
        this.uh = optInt;
        if (optInt == 0 || optInt == 1) {
            return optInt;
        }
        return 1;
    }

    private boolean wp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!TextUtils.isEmpty(this.xo)) {
            this.xo = d().d("app_dl_scheme_list", "");
        }
        if (TextUtils.isEmpty(this.xo)) {
            return false;
        }
        String[] split = this.xo.split(",");
        if (split.length == 0) {
            return false;
        }
        for (String str2 : split) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private void yj() {
        com.bytedance.sdk.component.o.mn.d(new kk("") { // from class: com.bytedance.sdk.openadsdk.core.bl.mn.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.wp.d.dq.dq();
            }
        });
    }

    public String a() {
        if (TextUtils.isEmpty(this.py)) {
            this.py = d().d("policy_url", gl);
        }
        return this.py;
    }

    public int ae() {
        if (this.jv == Integer.MAX_VALUE) {
            this.jv = d().d("webview_cache_count", 20);
        }
        int i = this.jv;
        if (i < 0) {
            return 20;
        }
        return i;
    }

    public int ah() {
        if (this.xj == Integer.MAX_VALUE) {
            this.xj = d().d("max_tpl_cnts", 100);
        }
        return this.xj;
    }

    public boolean az() {
        return this.ev;
    }

    public int b() {
        int i = this.fx;
        if (i <= 0) {
            return 1;
        }
        return i;
    }

    public boolean bf() {
        return Build.VERSION.SDK_INT < this.ax;
    }

    public boolean bl() {
        if (this.wp == Integer.MAX_VALUE) {
            this.wp = d().d("opt_show_check", 0);
        }
        return this.wp == 1;
    }

    public void bn() {
        if (this.ez == null) {
            synchronized (this.lm) {
                try {
                    if (this.ez == null) {
                        this.ez = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "tt_sdk_settings_slot_splash", 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public JSONObject bu() {
        return this.zc;
    }

    public boolean bx() {
        if (this.fg == Integer.MAX_VALUE) {
            this.fg = d().d("title_priority", 0);
        }
        return this.fg == 1;
    }

    public ir by() {
        if (this.gx == null) {
            this.gx = ir.dq(d().d("insert_js_config", ""));
        }
        return this.gx;
    }

    public long c() {
        if (this.nh == 0) {
            this.nh = d().d("data_time", 0L);
        }
        return this.nh;
    }

    public String cc() {
        if (TextUtils.isEmpty(this.xq)) {
            this.xq = d().d("splash_close_text", "跳过");
        }
        if (TextUtils.isEmpty(this.xq)) {
            this.xq = "跳过";
        }
        return this.xq;
    }

    public long cd() {
        if (this.dc == 2147483647L) {
            this.dc = d().d("adlog_interval", PushUIConfig.dismissTime);
        }
        return this.dc;
    }

    public dq cd(String str) {
        if (str == null) {
            return ox(new JSONObject());
        }
        dq dqVar = this.ir.get(str);
        if (dqVar == null) {
            dqVar = le(str);
        }
        if (dqVar != null) {
            return dqVar;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code_id", str);
            return ox(jSONObject);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public float ce() {
        if (this.wq < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.wq = d().d("call_stack_rate", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        return this.wq;
    }

    public JSONObject cv() {
        if (this.fq == null) {
            try {
                this.fq = new JSONObject(d().d("log_rate_conf", ""));
            } catch (Exception unused) {
            }
        }
        return this.fq;
    }

    public com.bytedance.sdk.component.mn.dq d() {
        if (this.ox == null) {
            this.ox = n.dq("tt_sdk_settings_other");
        }
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.bl.p
    public void d(JSONObject jSONObject) {
        int length;
        SharedPreferences.Editor editor;
        this.hy = jSONObject.optString("dyn_draw_engine_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/renderer/package.json");
        this.ip = jSONObject.optString("play_component_ugen_engine_url", "");
        this.f2481b = jSONObject.optString("ads_url", "api-access.pangolin-sdk-toutiao.com");
        this.tl = jSONObject.optString("app_log_url", "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/");
        this.vf = jSONObject.optString("xpath");
        this.j = jSONObject.optJSONObject("digest");
        this.nh = jSONObject.optLong("data_time");
        JSONObject optJSONObject = jSONObject.optJSONObject("feq_policy");
        if (optJSONObject != null) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq(optJSONObject.optLong(MediationConstant.EXTRA_DURATION) * 1000);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq(optJSONObject.optInt("max"));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq((float) optJSONObject.optDouble("agg_multiple"));
        }
        this.yo = jSONObject.optInt("vbtt", 5);
        this.hf = jSONObject.optInt("fetch_tpl_interval", 3600);
        this.py = jSONObject.optString("privacy_url", gl);
        this.ie = Boolean.valueOf(jSONObject.optBoolean("use_mediation_map"));
        JSONObject optJSONObject2 = jSONObject.optJSONObject("abtest");
        if (optJSONObject2 != null) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq(optJSONObject2.optString("version"));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().d(optJSONObject2.optString("param"));
        } else {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().mn();
        }
        this.bn = jSONObject.optInt("read_video_from_cache", 1);
        this.qz = jSONObject.optBoolean("enable_bw_screen_detection", false);
        p(jSONObject.optJSONObject("web_upload"));
        JSONObject optJSONObject3 = jSONObject.optJSONObject("log_rate_conf");
        this.fq = optJSONObject3;
        if (optJSONObject3 != null) {
            this.rp = (float) optJSONObject3.optDouble("global_rate", 1.0d);
            if (this.fq.has("call_stack_rate")) {
                this.wq = (float) this.fq.optDouble("call_stack_rate");
            } else {
                this.wq = this.rp;
            }
        } else {
            this.rp = 1.0f;
        }
        this.t = jSONObject.optString("pyload_h5");
        this.gx = ir.dq(jSONObject.optJSONObject("insert_js_config"));
        this.uh = s(jSONObject);
        ig.p("splashLoad", "setting-》mSplashCheckType=" + this.uh);
        this.ha = jSONObject.optInt("if_both_open", 0);
        this.cv = jSONObject.optInt("support_tnc", he.UNDEFINED_ITEM_ID);
        this.xz = jSONObject.optInt("al", 1);
        this.xj = jSONObject.optInt("max_tpl_cnts", 100);
        JSONObject optJSONObject4 = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject4 != null) {
            com.bytedance.sdk.openadsdk.core.ox.ox.dq().dq(optJSONObject4);
            this.sy = optJSONObject4.optString("stats_url", "api-access.pangolin-sdk-toutiao1.com");
            this.f2486g = optJSONObject4.optString("img_bucket", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/");
            this.zi = optJSONObject4.optBoolean("enable_apm_pv", false);
            this.dk = optJSONObject4.optBoolean("open_single_abi", false);
            this.bf = optJSONObject4.optInt("fetch_tpl_timeout_ctrl", MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
            this.x = optJSONObject4.optInt("fetch_tpl_timeout_ctrl_bad_device", TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
            this.bx = (float) optJSONObject4.optDouble("tpl_render_error_rate_h5", 4.5d);
            this.nt = (float) optJSONObject4.optDouble("tpl_render_error_rate_native", 1.0d);
            this.tv = optJSONObject4.optBoolean("tpl_enable_render_timeout_opt", false);
            String optString = optJSONObject4.optString("tpl_timeout_ctrl");
            if (!TextUtils.isEmpty(optString)) {
                this.us = gh.ox(optString);
            }
            this.i = optJSONObject4.optInt("circle_splash", 0);
            this.le = optJSONObject4.optInt("circle_time", -1);
            this.xx = optJSONObject4.optInt("if_sp_cache", 1);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().ox(optJSONObject4.optBoolean("is_spl_cache_remove_change", false));
            this.jy = optJSONObject4.optInt("express_gesture_enable", 0);
            this.fw = optJSONObject4.optInt("enable_download_proto", 1);
            this.f2485f = optJSONObject4.optInt("app_express_gesture_priority", -1);
            this.jv = optJSONObject4.optInt("webview_cache_count", 20);
            this.jn = optJSONObject4.optInt("webview_cache_count_v3", 20);
            this.w = optJSONObject4.optInt("webview_render_concurrent_count", 3);
            this.ah = optJSONObject4.optString("ad_pkg_info_url", "apps.bytesfield.com");
            this.xq = optJSONObject4.optString("splash_close_text", "跳过");
            this.op = optJSONObject4.optInt("network_module", 1);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().kk(optJSONObject4.optInt("cypher_version", 40001));
            com.bytedance.sdk.component.d.dq.dq.dq.dq().dq(this.op != 2);
            this.bu = optJSONObject4.optInt("adlog_debug", 0);
            this.jw = optJSONObject4.optInt("adlog_batch", 10);
            this.dc = optJSONObject4.optLong("adlog_interval", PushUIConfig.dismissTime);
            this.fd = optJSONObject4.optInt("adlog_exception_batch", 100);
            this.cd = optJSONObject4.optInt("enable_ttvideo", -1);
            this.gh = optJSONObject4.optInt("enable_zaid", 0);
            this.z = optJSONObject4.optLong("ext_use_type", this.ij);
            this.xi = optJSONObject4.optInt("enable_dl_ext", this.ws);
            this.f2484e = optJSONObject4.optInt("download_receiver_enable", 1);
            this.dq = optJSONObject4.optInt("launch_strategy", 0);
            this.k = optJSONObject4.optInt("dl_popup_duration", 1000);
            this.wp = optJSONObject4.optInt("opt_show_check", 0);
            this.ru = optJSONObject4.optInt("shake_trigger_control", 0);
            this.io = optJSONObject4.optJSONObject("pitaya_general_settings");
            this.m = optJSONObject4.optJSONObject("http_drop");
            this.xv = optJSONObject4.optInt("stats_batch", 5);
            this.zc = optJSONObject4.optJSONObject("live_stream_cof");
            this.gm = optJSONObject4.optInt("disable_show_url", 0);
            this.dn = optJSONObject4.optJSONObject("sensor_direction");
            this.kf = optJSONObject4.optJSONObject("pitaya_business_conf");
            com.bytedance.sdk.openadsdk.core.ox.p.dq().no(optJSONObject4.optInt("spl_cache_conf", 0));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().ig(optJSONObject4.optInt("spl_thread_conf", 0));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().mp(optJSONObject4.optInt("spl_comm_conf", 0));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().q(optJSONObject4.optInt("spl_cache_expired", 0));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().ji(optJSONObject4.optString("drop_cache_black_conf", ""));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().dq(this.kf);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().jy(optJSONObject4.optInt("splash_render_timeout_backup", 100));
            JSONObject optJSONObject5 = optJSONObject4.optJSONObject("client_intelligence_conf");
            if (optJSONObject5 != null) {
                this.iy = optJSONObject5.optBoolean("net_rating");
                this.nm = optJSONObject5.optJSONObject("net_rating_config");
                this.il = optJSONObject5.optBoolean("device_rating");
            }
            JSONObject optJSONObject6 = optJSONObject4.optJSONObject("bytebench_rating");
            if (optJSONObject6 != null) {
                this.he = optJSONObject6.optBoolean("enable");
                this.ny = (float) optJSONObject6.optDouble("mid_value");
                this.f2480a = (float) optJSONObject6.optDouble("low_value");
            }
            this.cc = optJSONObject4.optInt("event_switch", this.wi);
            this.pa = optJSONObject4.optInt("switch_audio_focus", 0);
            this.r = optJSONObject4.optString("apm_pv_config", "");
            this.lk = optJSONObject4.optInt("splash_card_show_max_count", 3);
            this.f2483d = optJSONObject4.optInt("pre_fetch_cnt", 10);
            this.kx = optJSONObject4.optInt("dynamic_code_group_cache_time", 3600);
            this.h = optJSONObject4.optInt("disable_dynamic_code_group");
            this.az = optJSONObject4.optInt("gnd_prefetch_cache_size", 5);
            this.fn = optJSONObject4.optLong("gnd_prefetch_cache_ttl", 0L);
            this.by = com.bytedance.sdk.openadsdk.core.q.p.dq.dq(optJSONObject4.optJSONObject("white_check_config"));
            try {
                this.sc.clear();
                JSONArray optJSONArray = optJSONObject4.optJSONArray("gecko_hosts");
                if (optJSONArray != null && optJSONArray.length() != 0) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        this.sc.add(optJSONArray.getString(i));
                    }
                }
                this.sc = dq(this.sc);
            } catch (Throwable th) {
                ig.d("GeckoLog: settings json error ".concat(String.valueOf(th)));
            }
            this.tu = optJSONObject4.optInt("scheme_get_type", 0);
            this.fx = optJSONObject4.optInt("scheme_get_num", 1);
            this.kr = optJSONObject4.optInt("if_query_all_package", 0);
            this.ji = com.bytedance.sdk.openadsdk.core.iw.d.dq(optJSONObject4.optJSONObject("clog_config"));
            this.bl = com.bytedance.sdk.openadsdk.core.dislike.d.dq(optJSONObject4.optJSONObject("oncall_upload"));
            this.n = optJSONObject4.optBoolean("check_live_room", false);
            JSONObject optJSONObject7 = optJSONObject4.optJSONObject("pglam");
            if (optJSONObject7 != null) {
                this.fa = optJSONObject7.optInt("pglam_main_enable", 0);
                this.hg = optJSONObject7.optInt("pglam_dns_check_enable", 0);
                this.uo = optJSONObject7.optString("pglam_clazz_check", "");
            }
            this.gv = optJSONObject4.optInt("ud_enable", 1);
            this.en = optJSONObject4.optJSONObject("thread_config");
            this.ne = optJSONObject4.optBoolean("new_app_list", false);
            this.vk = d.dq(optJSONObject4.optJSONObject("app_live_config"));
            this.xn = optJSONObject4.optJSONObject("plugin_update_state");
            this.rv = optJSONObject4.optJSONObject("antispam_autoclick_detect");
            com.bytedance.sdk.component.panglearmor.d.s.dq().dq(this.rv);
            this.sp = optJSONObject4.optInt("is_open_isw", 1);
            this.ml = optJSONObject4.optInt("is_kv_cache_type", 0);
            this.iu = optJSONObject4.optInt("kv_init_type", 0);
            this.lq = optJSONObject4.optInt("open_dl_type", 0);
            this.xo = optJSONObject4.optString("app_dl_scheme_list", "");
            int optInt = optJSONObject4.optInt("lp_url_sw", 0);
            this.jb = optInt;
            if (optInt == 1) {
                this.ps = optJSONObject4.optString("lp_list", "");
            }
            JSONObject optJSONObject8 = optJSONObject4.optJSONObject("uchain");
            SharedPreferences.Editor edit = ri().edit();
            if (optJSONObject8 != null) {
                this.td = optJSONObject8.optString(TTDownloadField.TT_MD5);
                String optString2 = optJSONObject8.optString(abn.EXTRA_URL);
                this.gn = optString2;
                if (TextUtils.isEmpty(optString2)) {
                    edit.remove(abn.EXTRA_URL);
                }
                if (TextUtils.isEmpty(this.td)) {
                    edit.remove(TTDownloadField.TT_MD5);
                }
                com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq(this.td, this.gn);
            } else {
                edit.remove(abn.EXTRA_URL);
                edit.remove(TTDownloadField.TT_MD5);
            }
            edit.apply();
            this.qc = optJSONObject4.optInt("m_vids_join", 0);
            this.ax = optJSONObject4.optInt("mini_event_upload_version", 0);
            this.yj = optJSONObject4.optLong("bg_web_readd_t", 3000L);
            this.fg = optJSONObject4.optInt("title_priority", 0);
            this.ri = optJSONObject4.optInt("splash_video_opt_enable", 0);
            this.dr = optJSONObject4.optInt("refresh_req_num", 2);
            this.ju = optJSONObject4.optInt("refresh_max_times", 1);
            ri().edit().putBoolean("_use_pl_", optJSONObject4.optBoolean("_use_pl_", false)).apply();
            this.s = optJSONObject4.optInt("npth_enable_type", 0);
            this.es = optJSONObject4.optBoolean("is_sp_send_meta", true);
            this.ao = optJSONObject4.optBoolean("io_create_ad", false);
            this.ho = optJSONObject4.optBoolean("use_csj_main", false);
            this.bs = optJSONObject4.optBoolean("preload_switch", false);
            this.jc = optJSONObject4.optInt("preload_time_point", 0);
            this.np = optJSONObject4.optBoolean("is_adapt_density", false);
            this.ev = optJSONObject4.optBoolean("app_info_cache_switch", false);
            boolean z = this.yw;
            boolean optBoolean = optJSONObject4.optBoolean("is_first_plugin_resources", false);
            this.yw = optBoolean;
            if (z != optBoolean) {
                r.dq(com.bytedance.sdk.openadsdk.core.op.dq(wp.getContext()), this.yw, wp.getContext());
            }
        }
        com.bytedance.sdk.openadsdk.core.r.n.d(jSONObject);
        uh.dq(jSONObject);
        bl.dq(jSONObject);
        com.bytedance.sdk.openadsdk.core.r.mn.dq(jSONObject);
        this.yy = System.currentTimeMillis();
        this.v.clear();
        JSONArray optJSONArray2 = jSONObject.optJSONArray("spam_app_list");
        if (optJSONArray2 != null) {
            int length2 = optJSONArray2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                String optString3 = optJSONArray2.optString(i2);
                if (!TextUtils.isEmpty(optString3)) {
                    this.v.add(optString3);
                }
            }
        }
        synchronized (this.ds) {
            try {
                this.ds.clear();
                JSONArray optJSONArray3 = jSONObject.optJSONArray("scheme_check_list");
                if (optJSONArray3 != null) {
                    int length3 = optJSONArray3.length();
                    for (int i3 = 0; i3 < length3; i3++) {
                        String optString4 = optJSONArray3.optString(i3);
                        if (!TextUtils.isEmpty(optString4)) {
                            this.ds.add(optString4);
                        }
                    }
                }
            } finally {
            }
        }
        synchronized (this.vw) {
            try {
                this.vw.clear();
                JSONArray optJSONArray4 = jSONObject.optJSONArray("top_scheme_list");
                if (optJSONArray4 != null) {
                    int length4 = optJSONArray4.length();
                    for (int i4 = 0; i4 < length4; i4++) {
                        String optString5 = optJSONArray4.optString(i4);
                        if (!TextUtils.isEmpty(optString5)) {
                            this.vw.add(optString5);
                        }
                    }
                }
            } finally {
            }
        }
        JSONObject optJSONObject9 = jSONObject.optJSONObject("download_config");
        if (optJSONObject9 != null) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().mn(optJSONObject9.optInt("if_storage_internal", 1));
        }
        JSONObject optJSONObject10 = jSONObject.optJSONObject("download_sdk_config");
        this.ob = optJSONObject10;
        if (optJSONObject10 != null) {
            this.l = optJSONObject10.toString();
        } else {
            this.l = "";
        }
        try {
            JSONObject optJSONObject11 = jSONObject.optJSONObject("ad_slot_conf_block");
            if (optJSONObject11 != null) {
                this.aa = optJSONObject11.toString();
                this.rr.clear();
                Iterator<String> keys = optJSONObject11.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.rr.put(next, optJSONObject11.opt(next));
                }
            }
        } catch (Exception unused) {
        }
        JSONArray optJSONArray5 = jSONObject.optJSONArray("ad_slot_conf_list");
        if (optJSONArray5 != null && (length = optJSONArray5.length()) > 0) {
            this.ir.clear();
            bn();
            com.bytedance.sdk.component.mn.dq ox = ox();
            if (ox == null) {
                if (this.kj == null) {
                    this.kj = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "tt_sdk_settings_slot", 0);
                }
                editor = this.kj.edit();
            } else {
                editor = null;
            }
            SharedPreferences.Editor editor2 = null;
            for (int i5 = 0; i5 < length; i5++) {
                JSONObject optJSONObject12 = optJSONArray5.optJSONObject(i5);
                dq ox2 = ox(optJSONObject12);
                if (ox2 != null) {
                    this.ir.put(ox2.dq, ox2);
                    if (com.bytedance.sdk.openadsdk.core.ox.p.dq().o(ox2.ox())) {
                        if (editor2 == null && this.ez != null) {
                            editor2 = this.ez.edit();
                        }
                        if (editor2 != null) {
                            editor2.putString(i(ox2.dq), optJSONObject12.toString());
                        }
                    }
                    if (ox != null) {
                        ox.dq(i(ox2.dq), optJSONObject12.toString());
                    } else if (editor != null) {
                        editor.putString(i(ox2.dq), optJSONObject12.toString());
                    }
                    com.bytedance.sdk.openadsdk.tools.d.dq(ox2.dq, optJSONObject12);
                }
            }
            if (editor2 != null) {
                try {
                    editor2.commit();
                } catch (Throwable th2) {
                    ig.d("TTSdkSetting", "saveSlotConfig failed:" + th2.getMessage());
                }
            }
            if (editor != null) {
                editor.commit();
            }
        }
        com.bytedance.sdk.openadsdk.tools.d.ox(15, this.f2481b);
        if (com.bytedance.sdk.openadsdk.tools.d.dq()) {
            JSONObject optJSONObject13 = optJSONObject4 != null ? optJSONObject4.optJSONObject("test_tool_urls") : null;
            if (optJSONObject13 != null) {
                if (optJSONObject13.has("qa_tool_host")) {
                    try {
                        String host = new URL(optJSONObject13.optString("qa_tool_host")).getHost();
                        if (!TextUtils.isEmpty(host)) {
                            no.ia().o(host);
                        }
                    } catch (MalformedURLException unused2) {
                    }
                }
                if (!TextUtils.isEmpty(no.ia().xz())) {
                    if (optJSONObject13.has("ad_preview_url")) {
                        no.ia().no(optJSONObject13.optString("ad_preview_url"));
                    }
                    if (optJSONObject13.has("basic_info_url")) {
                        no.ia().ig(optJSONObject13.optString("basic_info_url"));
                    }
                }
            }
        }
        this.oh = jSONObject.optInt("pre_cache_brand_count", this.oh);
        JSONObject optJSONObject14 = jSONObject.optJSONObject("video_cache_config");
        this.ux = optJSONObject14;
        if (optJSONObject14 != null) {
            com.bykv.vk.openvk.component.video.dq.dq.dq(optJSONObject14);
        }
        p();
        fg();
        com.bytedance.sdk.openadsdk.core.iw.ox.dq(this.ji);
        yj();
    }

    public boolean d(int i) {
        return kk(i) != 0;
    }

    public boolean d(String str) {
        return gh(str).k;
    }

    public boolean dc() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().jy();
    }

    public boolean dk() {
        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.op.ox) && com.bytedance.sdk.openadsdk.core.op.ox.compareTo(com.bytedance.sdk.openadsdk.core.op.ia) < 0) {
            return false;
        }
        Boolean bool = this.fi;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.ie == null) {
            this.ie = Boolean.valueOf(d().d("use_mediation_map", false));
        }
        Boolean bool2 = this.ie;
        this.fi = bool2;
        return bool2.booleanValue();
    }

    public int dn() {
        return this.hg;
    }

    public int dq(String str, int i) {
        return (i == 0 || i == 9) ? jy(str) : q(str);
    }

    public <T> T dq(String str, T t) {
        try {
            if (this.rr.containsKey(str)) {
                T t2 = (T) this.rr.get(str);
                if (t2 != null) {
                    return t2;
                }
            }
        } catch (Exception unused) {
        }
        return t;
    }

    @Override // com.bytedance.sdk.openadsdk.core.bl.p
    public synchronized void dq() {
        d();
        this.y = true;
        this.fd = this.ox.d("adlog_exception_batch", 100);
        this.sy = this.ox.d("url_stats", "api-access.pangolin-sdk-toutiao1.com");
        this.f2486g = this.ox.d("img_bucket", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/");
        this.zi = this.ox.d("enable_apm_pv", false);
        this.tl = this.ox.d("url_alog", "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/");
        this.vf = this.ox.d("xpath", "");
        this.nh = this.ox.d("data_time", 0L);
        this.hf = this.ox.d("fetch_template", 3600);
        this.yo = this.ox.d("vbtt", 5);
        this.ce = this.ox.d("template_ids", this.el);
        this.t = this.ox.d("pyload_h5", this.el);
        this.gx = ir.dq(this.ox.d("insert_js_config", this.el));
        this.uh = this.ox.d("splash_check_type", 1);
        this.bu = this.ox.d("adlog_debug", 0);
        this.jw = this.ox.d("adlog_batch", 10);
        this.dc = this.ox.d("adlog_interval", PushUIConfig.dismissTime);
        this.fd = this.ox.d("adlog_exception_batch", 100);
        this.cd = this.ox.d("enable_ttvideo", -1);
        this.gh = this.ox.d("enable_zaid", 0);
        this.xi = this.ox.d("enable_dl_ext", this.ws);
        this.z = this.ox.d("ext_use_type", this.ij);
        this.dq = this.ox.d("launch_strategy", 0);
        this.k = this.ox.d("dl_popup_duration", 1000);
        this.wp = this.ox.d("opt_show_check", 0);
        this.us = gh.ox(this.ox.d("tpl_timeout_ctrl", ""));
        String d2 = this.ox.d("digest", "");
        if (!TextUtils.isEmpty(d2)) {
            try {
                this.j = new JSONObject(d2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        String d3 = this.ox.d("pitaya_general_settings", "");
        if (!TextUtils.isEmpty(d3)) {
            try {
                this.io = new JSONObject(d3);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        String d4 = this.ox.d("live_stream_cof", "");
        if (!TextUtils.isEmpty(d4)) {
            try {
                this.zc = new JSONObject(d4);
            } catch (Exception e4) {
                ig.p("parse exception", "e:" + e4.getMessage());
            }
        }
        this.gm = this.ox.d("disable_show_url", 0);
        String d5 = this.ox.d("sensor_direction", "");
        if (!TextUtils.isEmpty(d5)) {
            try {
                this.dn = new JSONObject(d5);
            } catch (Exception e5) {
                ig.p("parse ex", "e:" + e5.getMessage());
            }
        }
        String d6 = this.ox.d("pitaya_business_conf", "");
        if (!TextUtils.isEmpty(d6)) {
            try {
                this.kf = new JSONObject(d6);
            } catch (Exception e6) {
                ig.p("parse exception", "e:" + e6.getMessage());
            }
        }
        String d7 = this.ox.d("http_drop", "");
        if (!TextUtils.isEmpty(d7)) {
            try {
                this.m = new JSONObject(d7);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        this.xv = this.ox.d("stats_batch", 5);
        this.pa = this.ox.d("switch_audio_focus", 0);
        this.f2484e = this.ox.d("download_receiver_enable", 1);
        this.cc = this.ox.d("event_switch", this.wi);
        this.f2483d = this.ox.d("pre_fetch_cnt", 10);
        this.ha = this.ox.d("if_both_open", 0);
        this.f2482c = this.ox.d("tpl_infos", this.el);
        this.fn = this.ox.d("gnd_prefetch_cache_ttl", 0);
        this.az = this.ox.d("gnd_prefetch_cache_size", 5);
        this.rp = this.ox.d("global_rate", 1.0f);
        this.xz = this.ox.d("app_list_control", 0);
        this.xj = this.ox.d("max_tpl_cnts", 100);
        this.bf = this.ox.d("fetch_tpl_timeout_ctrl", MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
        this.x = this.ox.d("fetch_tpl_timeout_ctrl_bad_device", TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        this.bx = this.ox.d("tpl_render_error_rate_h5", 4.5f);
        this.tv = this.ox.d("tpl_enable_render_timeout_opt", false);
        this.nt = this.ox.d("tpl_render_error_rate_native", 1.0f);
        this.he = this.ox.d("enable", false);
        this.ny = this.ox.d("mid_value", 8.5f);
        this.f2480a = this.ox.d("low_value", 7.3f);
        this.dk = this.ox.d("open_single_abi", false);
        this.jv = this.ox.d("webview_cache_count", 20);
        this.jn = this.ox.d("webview_cache_count_v3", 20);
        this.w = this.ox.d("webview_render_concurrent_count", 3);
        this.py = this.ox.d("policy_url", gl);
        this.ie = Boolean.valueOf(this.ox.d("use_mediation_map", false));
        Set<String> set = this.sc;
        if (set != null) {
            set.clear();
        }
        this.sc = this.ox.d("gecko_hosts", Collections.synchronizedSet(new HashSet()));
        this.hz = this.ox.d("gecko_ids", "");
        this.sc = dq(this.sc);
        this.yy = this.ox.d("hit_app_list_time", 0L);
        this.v.clear();
        this.r = this.ox.d("apm_pv_config", "");
        this.i = this.ox.d("circle_splash_switch", 0);
        this.le = this.ox.d("circle_load_splash_time", -1);
        this.hy = this.ox.d("dyn_draw_engine_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/renderer/package.json");
        this.ip = this.ox.d("play_component_ugen_engine_url", "");
        this.ah = this.ox.d("ad_pkg_info_url", "apps.bytesfield.com");
        this.xx = this.ox.d("sp_key_if_sp_cache", 1);
        this.h = this.ox.d("disable_dynamic_code_group", 0);
        this.kx = this.ox.d("dynamic_code_group_cache_time", 3600);
        this.jy = this.ox.d("express_gesture_enable", 0);
        this.fw = this.ox.d("enable_download_proto", 1);
        this.f2485f = this.ox.d("app_express_gesture_priority", -1);
        this.xq = this.ox.d("splash_close_text", "跳过");
        this.op = this.ox.d("network_module", 1);
        com.bytedance.sdk.component.d.dq.dq.dq.dq().dq(this.op != 2);
        this.iw = this.ox.d("web_upload_enable", 0);
        Set<String> d8 = this.ox.d("web_upload_content_type", Collections.synchronizedSet(new HashSet()));
        this.mn.clear();
        if (d8 != null && d8.size() != 0) {
            Iterator<String> it = d8.iterator();
            while (it.hasNext()) {
                this.mn.add(it.next());
            }
        }
        this.ia = this.ox.d("web_upload_send_restowv", 0);
        this.kk = this.ox.d("web_upload_max_single_file", 2);
        this.o = this.ox.d("web_upload_max_zip_file", 5);
        this.q = this.ox.d("web_upload_max_retry", 0);
        this.ig = this.ox.d("web_upload_report_url", "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/");
        this.mp = this.ox.d("web_upload_storage_type", 0);
        this.no = this.ox.d("web_upload_report_only_wifi", 0);
        Set<String> d9 = this.ox.d("hit_app_list_data", Collections.synchronizedSet(new HashSet()));
        if (d9 != null && !d9.isEmpty()) {
            Iterator<String> it2 = d9.iterator();
            while (it2.hasNext()) {
                this.v.add(it2.next());
            }
        }
        synchronized (this.ds) {
            try {
                this.ds.clear();
                Set<String> d10 = this.ox.d("scheme_list_data", Collections.synchronizedSet(new HashSet()));
                if (d10 != null && !d10.isEmpty()) {
                    Iterator<String> it3 = d10.iterator();
                    while (it3.hasNext()) {
                        this.ds.add(it3.next());
                    }
                }
            } finally {
            }
        }
        synchronized (this.vw) {
            try {
                this.vw.clear();
                Set<String> d11 = this.ox.d("top_scheme_list_data", Collections.synchronizedSet(new HashSet()));
                if (d11 != null && !d11.isEmpty()) {
                    Iterator<String> it4 = d11.iterator();
                    while (it4.hasNext()) {
                        this.vw.add(it4.next());
                    }
                }
            } finally {
            }
        }
        String d12 = this.ox.d("download_sdk_config", "");
        this.l = d12;
        if (!TextUtils.isEmpty(d12)) {
            try {
                this.ob = new JSONObject(this.l);
            } catch (JSONException e8) {
                ig.ox("TTSdkSettings", e8);
            }
        }
        String d13 = this.ox.d("thread_config", "");
        if (!TextUtils.isEmpty(d13)) {
            try {
                this.en = new JSONObject(d13);
                com.bytedance.sdk.openadsdk.core.n.dq.dq();
            } catch (JSONException e9) {
                ig.ox("TTSdkSettings", e9);
            }
        }
        this.wq = this.ox.d("call_stack_rate", TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.bn = this.ox.d("read_video_from_cache", 1);
        this.oh = this.ox.d("brand_video_cache_count", 2);
        this.qz = this.ox.d("enable_bw_screen_detection", false);
        this.lk = this.ox.d("splash_card_show_max_count", 3);
        this.ji = com.bytedance.sdk.openadsdk.core.iw.d.dq(this.ox.d("clog_config", this.el));
        this.bl = com.bytedance.sdk.openadsdk.core.dislike.d.dq(this.ox.d("oncall_upload", ""));
        this.n = this.ox.d("check_live_room", false);
        this.ix = this.ox.d("can_init_live", true);
        this.ne = this.ox.d("new_app_list", false);
        String d14 = this.ox.d("plugin_update_state", "");
        if (!TextUtils.isEmpty(d14)) {
            try {
                this.xn = new JSONObject(d14);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        String d15 = this.ox.d("antispam_autoclick_detect", "");
        if (!TextUtils.isEmpty(d15)) {
            try {
                this.rv = new JSONObject(d15);
                com.bytedance.sdk.component.panglearmor.d.s.dq().dq(this.rv);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        String d16 = this.ox.d("app_live_config", "");
        if (!TextUtils.isEmpty(d16)) {
            try {
                this.vk = d.dq(new JSONObject(d16));
            } catch (JSONException unused) {
            }
        }
        this.fa = this.ox.d("pglam_main_enable", 0);
        this.hg = this.ox.d("pglam_dns_check_enable", 0);
        this.uo = this.ox.d("pglam_clazz_check", "");
        this.gv = this.ox.d("ud_enable", 1);
        this.ml = ri().getInt("is_kv_cache_type", 0);
        this.iu = ri().getInt("kv_init_type", 0);
        this.lq = this.ox.d("open_dl_type", 0);
        this.xo = this.ox.d("app_dl_scheme_list", "");
        int d17 = this.ox.d("lp_url_sw", 0);
        this.jb = d17;
        if (d17 == 1) {
            this.ps = ax().d("lp_list", "");
        }
        this.td = ri().getString(TTDownloadField.TT_MD5, "");
        this.gn = ri().getString(abn.EXTRA_URL, "");
        this.sp = this.ox.d("is_open_isw", 1);
        String d18 = this.ox.d("live_sdk_conf", this.el);
        if (!TextUtils.isEmpty(d18)) {
            this.jo = wn.dq(d18);
        }
        this.s = this.ox.d("npth_enable_type", 0);
        this.tu = this.ox.d("scheme_get_type", 0);
        this.fx = this.ox.d("scheme_get_num", 1);
        this.kr = this.ox.d("if_query_all_package", 0);
        this.es = this.ox.d("is_sp_send_meta", true);
        this.ao = this.ox.d("io_create_ad", false);
        this.ho = this.ox.d("use_csj_main", false);
        this.yw = this.ox.d("is_first_plugin_resources", false);
        this.qc = this.ox.d("m_vids_join", 0);
        this.ax = this.ox.d("mini_event_upload_version", 0);
        this.yj = this.ox.d("bg_web_readd_t", 3000L);
        this.fg = this.ox.d("title_priority", 0);
        this.ri = this.ox.d("splash_video_opt_enable", 0);
        this.dr = this.ox.d("refresh_req_num", 2);
        this.ju = this.ox.d("refresh_max_times", 1);
        this.mj = this.ox.d("settings_open", 1);
        this.ru = this.ox.d("shake_trigger_control", 0);
        this.bs = this.ox.d("preload_switch", false);
        this.jc = this.ox.d("preload_time_point", 0);
        this.np = this.ox.d("is_adapt_density", false);
        this.ev = this.ox.d("app_info_cache_switch", false);
        r.dq(com.bytedance.sdk.openadsdk.core.op.dq(wp.getContext()), this.yw, wp.getContext());
        com.bytedance.sdk.openadsdk.core.r.n.d(this.ox);
        uh.d(this.ox);
        com.bytedance.sdk.openadsdk.core.r.mn.dq(this.ox);
        String d19 = this.ox.d("video_cache_config", "");
        if (!TextUtils.isEmpty(d19)) {
            try {
                JSONObject jSONObject = new JSONObject(d19);
                this.ux = jSONObject;
                com.bykv.vk.openvk.component.video.dq.dq.dq(jSONObject);
            } catch (JSONException e12) {
                e12.printStackTrace();
            }
        }
        String d20 = this.ox.d("log_rate_conf", "");
        if (!TextUtils.isEmpty(d20)) {
            try {
                this.fq = new JSONObject(d20);
            } catch (Exception unused2) {
            }
        }
        try {
            this.aa = this.ox.d("ad_slot_conf_block", "");
            JSONObject jSONObject2 = new JSONObject(this.aa);
            if (jSONObject2.length() > 0) {
                this.rr.clear();
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.rr.put(next, jSONObject2.opt(next));
                }
            }
        } catch (Exception unused3) {
        }
        p();
    }

    public void dq(int i) {
        this.cv = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.bl.p
    public void dq(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject2 != null) {
            this.ix = optJSONObject2.optBoolean("can_init_live", true);
        }
        if (!this.ix || (optJSONObject = jSONObject.optJSONObject("live_sdk_conf")) == null) {
            return;
        }
        this.jo = wn.dq(optJSONObject);
        com.bytedance.sdk.openadsdk.core.live.d.dq().d();
    }

    public boolean dq(j jVar, int i) {
        dq gh = wp.d().gh(String.valueOf(i));
        return com.bytedance.sdk.openadsdk.core.component.reward.p.p.dq(jVar) == 4 ? gh.ox == 1 : gh.no == 1;
    }

    public boolean dq(String str) {
        return gh(str).le;
    }

    public boolean ds() {
        return v() == 1;
    }

    public int e() {
        if (this.f2483d == 10) {
            this.f2483d = d().d("pre_fetch_cnt", 10);
        }
        return this.f2483d;
    }

    public boolean el() {
        return this.ix;
    }

    public long en() {
        if (this.fn == -1) {
            this.fn = d().d("gnd_prefetch_cache_ttl", 0);
        }
        return this.fn;
    }

    public int er() {
        if (this.iw == Integer.MAX_VALUE) {
            this.iw = d().d("web_upload_enable", 0);
        }
        return this.iw;
    }

    public int f(String str) {
        return cd(String.valueOf(str)).i;
    }

    public String f() {
        if (TextUtils.isEmpty(this.tl)) {
            String d2 = d().d("url_alog", "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/");
            this.tl = d2;
            if (TextUtils.isEmpty(d2)) {
                this.tl = "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
            }
        }
        return this.tl;
    }

    public boolean fa() {
        return this.ne;
    }

    public JSONObject fd() {
        if (this.m == null) {
            String d2 = d().d("http_drop", "");
            if (!TextUtils.isEmpty(d2)) {
                try {
                    this.m = new JSONObject(d2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.m;
    }

    public boolean fn() {
        return this.np;
    }

    public int fp() {
        if (this.jn == Integer.MAX_VALUE) {
            this.jn = d().d("webview_cache_count_v3", 20);
        }
        int i = this.jn;
        if (i < 0) {
            return 20;
        }
        return i;
    }

    public int fq() {
        if (this.yo == Integer.MAX_VALUE) {
            this.yo = d().d("vbtt", 5);
        }
        return this.yo;
    }

    public boolean fw() {
        if (this.bu == Integer.MAX_VALUE) {
            this.bu = d().d("adlog_debug", 0);
        }
        return this.bu == 1;
    }

    public boolean fw(String str) {
        return gh(str).d() == 1;
    }

    public boolean fx() {
        return this.es;
    }

    public int g() {
        if (this.xx == Integer.MAX_VALUE) {
            this.xx = d().d("sp_key_if_sp_cache", 1);
        }
        return this.xx;
    }

    public int gh() {
        if (this.jw == Integer.MAX_VALUE) {
            this.jw = d().d("adlog_batch", 10);
        }
        return this.jw;
    }

    public dq gh(String str) {
        if (str == null) {
            return ox(new JSONObject());
        }
        dq dqVar = this.ir.get(str);
        if (dqVar == null) {
            dqVar = k(str);
        }
        if (dqVar != null) {
            return dqVar;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code_id", str);
            return ox(jSONObject);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public int gl() {
        return this.oh;
    }

    public boolean gm() {
        return this.ao;
    }

    public boolean gn() {
        return this.he;
    }

    public boolean gv() {
        return com.bytedance.sdk.openadsdk.core.op.iw() && this.sp == 1;
    }

    public int gx() {
        if (this.mp == Integer.MAX_VALUE) {
            this.mp = d().d("web_upload_storage_type", 0);
        }
        return this.mp;
    }

    public boolean h() {
        if (this.dq == 0) {
            this.dq = d().d("launch_strategy", 0);
        }
        return this.dq == 1;
    }

    public String ha() {
        if (TextUtils.isEmpty(this.r)) {
            this.r = d().d("apm_pv_config", "");
        }
        return this.r;
    }

    public boolean hf() {
        return this.tu != 1;
    }

    public JSONObject hg() {
        return this.xn;
    }

    public Set<String> hy() {
        if (this.vw.size() == 0) {
            return null;
        }
        return this.vw;
    }

    public boolean hz() {
        return this.bs;
    }

    public int i() {
        if (this.xv == 3) {
            this.xv = d().d("stats_batch", 5);
        }
        int i = this.xv;
        if (i <= 0 || i > 100) {
            return 5;
        }
        return i;
    }

    public int ia(int i) {
        return gh(String.valueOf(i)).mn;
    }

    public boolean ia() {
        if (this.gh == Integer.MIN_VALUE) {
            this.gh = d().d("enable_zaid", 0);
        }
        return this.gh != 0;
    }

    public boolean ia(String str) {
        return str == null || wp.d().cd(str).mp == 0;
    }

    public String ig() {
        if (TextUtils.isEmpty(this.sy)) {
            String d2 = d().d("url_stats", "api-access.pangolin-sdk-toutiao1.com");
            this.sy = d2;
            if (TextUtils.isEmpty(d2)) {
                this.sy = "api-access.pangolin-sdk-toutiao1.com";
            }
        }
        return this.sy;
    }

    public boolean ig(String str) {
        try {
            dq cd = wp.d().cd(String.valueOf(str));
            if (cd != null) {
                return cd.cd != null;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public JSONObject ij() {
        return this.kf;
    }

    public boolean io() {
        if (this.gm == Integer.MAX_VALUE) {
            this.gm = this.ox.d("disable_show_url", 0);
        }
        return this.gm == 1;
    }

    public boolean ip() {
        if (this.xz == Integer.MAX_VALUE) {
            this.xz = d().d("app_list_control", 0);
        }
        return this.xz == 1;
    }

    public String ir() {
        if (TextUtils.isEmpty(this.vf)) {
            this.vf = d().d("xpath", "");
        }
        return this.vf;
    }

    public boolean iu() {
        if (this.gv == 1) {
            this.gv = d().d("ud_enable", 1);
        }
        return this.gv == 1;
    }

    public int iw(int i) {
        return Math.max(gh(String.valueOf(i)).o, 0);
    }

    public int iw(String str) {
        return cd(str).f2479f;
    }

    public String iw() {
        if (TextUtils.isEmpty(this.f2481b)) {
            this.f2481b = com.bytedance.sdk.openadsdk.core.ox.ox.dq().p();
        }
        return this.f2481b;
    }

    public int ix() {
        if (this.ml == 0) {
            this.ml = ri().getInt("is_kv_cache_type", 0);
        }
        return this.ml;
    }

    public int j() {
        if (this.ia == Integer.MAX_VALUE) {
            this.ia = d().d("web_upload_send_restowv", 0);
        }
        return this.ia;
    }

    public boolean jb() {
        return this.iy;
    }

    public int ji() {
        if (this.k == Integer.MIN_VALUE) {
            this.k = d().d("dl_popup_duration", 1000);
        }
        return this.k;
    }

    public boolean jn() {
        if (!this.tv) {
            this.tv = d().d("tpl_enable_render_timeout_opt", false);
        }
        return this.tv;
    }

    public boolean jo() {
        int mc = mc();
        return (mc == 40001 || mc == 40002 || mc == 4) && com.bytedance.sdk.component.panglearmor.kk.d();
    }

    public int jv() {
        if (this.x == 0) {
            this.x = d().d("fetch_tpl_timeout_ctrl_bad_device", TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
        }
        return this.x;
    }

    public JSONObject jw() {
        return this.io;
    }

    public int jy(String str) {
        int dq;
        if (this.us == null) {
            return MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        }
        str.getClass();
        switch (str) {
            case "banner_ad":
                dq = this.us.dq(MediationConstant.RIT_TYPE_BANNER);
                break;
            case "rewarded_video":
                dq = this.us.dq("rewarded");
                break;
            case "fullscreen_interstitial_ad":
                dq = this.us.dq("fullscreen");
                break;
            case "embeded_ad":
                dq = this.us.dq(MediationConstant.RIT_TYPE_FEED);
                break;
            case "draw_ad":
                dq = this.us.dq(MediationConstant.RIT_TYPE_DRAW);
                break;
            default:
                dq = MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
                break;
        }
        return dq <= 0 ? MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE : dq;
    }

    public void jy() {
        this.f2481b = "api-access.pangolin-sdk-toutiao-b.com";
    }

    public boolean k() {
        if (this.pa == Integer.MAX_VALUE) {
            this.pa = d().d("switch_audio_focus", 0);
        }
        return this.pa == 1;
    }

    public boolean kf() {
        return this.n;
    }

    public int kk(int i) {
        int i2 = cd(String.valueOf(i)).gh;
        if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            return i2;
        }
        return 2;
    }

    public int kk(String str) {
        if (str == null) {
            return 1500;
        }
        return wp.d().gh(str).q;
    }

    public boolean kk() {
        if (this.jy == Integer.MIN_VALUE) {
            this.jy = d().d("express_gesture_enable", 0);
        }
        return this.jy == 1;
    }

    public String[] kr() {
        String str = this.uo;
        if (str == null || str.length() <= 0) {
            return null;
        }
        return this.uo.split("//");
    }

    public long kx() {
        if (this.z == this.ij) {
            this.z = d().d("ext_use_type", this.ij);
        }
        return this.z;
    }

    public int l() {
        if (this.no == Integer.MAX_VALUE) {
            this.no = d().d("web_upload_report_only_wifi", 0);
        }
        return this.no;
    }

    public boolean le() {
        if (this.f2484e == Integer.MAX_VALUE) {
            this.f2484e = d().d("download_receiver_enable", 1);
        }
        return this.f2484e != 0;
    }

    public boolean lk() {
        return this.qz;
    }

    public String m() {
        if (TextUtils.isEmpty(this.hy)) {
            this.hy = d().d("dyn_draw_engine_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/renderer/package.json");
        }
        return this.hy;
    }

    public int mc() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().h();
    }

    public int ml() {
        return this.jc;
    }

    public int mn(int i) {
        int i2 = gh(String.valueOf(i)).f2477d;
        if (i2 <= 0 || i2 > 5) {
            return 1;
        }
        return i2;
    }

    public boolean mn() {
        if (this.cd == -1) {
            this.cd = d().d("enable_ttvideo", -1);
        }
        int i = this.cd;
        if (i == 0) {
            return false;
        }
        return (i == 1 && (e.cd() || e.fw())) ? false : true;
    }

    public boolean mn(String str) {
        return str == null || wp.d().gh(str).ig == 1;
    }

    public int mp(String str) {
        return gh(str).ia;
    }

    public String mp() {
        if (TextUtils.isEmpty(this.f2486g)) {
            this.f2486g = d().d("img_bucket", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/");
        }
        return this.f2486g;
    }

    public int n() {
        if (this.fd == Integer.MAX_VALUE) {
            this.fd = d().d("adlog_exception_batch", 100);
        }
        return this.fd;
    }

    public int ne() {
        if (this.iu == 0) {
            this.iu = ri().getInt("kv_init_type", 0);
        }
        return this.iu;
    }

    public int nh() {
        if (this.kk == Integer.MAX_VALUE) {
            this.kk = d().d("web_upload_max_single_file", 2);
        }
        return this.kk;
    }

    public boolean no() {
        if (this.fw == Integer.MIN_VALUE) {
            this.fw = d().d("enable_download_proto", 1);
        }
        return this.fw != 0;
    }

    public boolean no(int i) {
        return gh(String.valueOf(i)).fw;
    }

    public boolean no(String str) {
        try {
            dq gh = wp.d().gh(String.valueOf(str));
            if (gh != null) {
                return gh.cd != null;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean nt() {
        if (this.ri == Integer.MAX_VALUE) {
            this.ri = d().d("splash_video_opt_enable", 0);
        }
        return this.ri == 1;
    }

    public int ny() {
        if (this.ju == Integer.MAX_VALUE) {
            this.ju = d().d("refresh_max_times", 1);
        }
        if (this.ju < 0) {
            this.ju = 1;
        }
        return this.ju;
    }

    public int o() {
        if (this.f2485f == Integer.MIN_VALUE) {
            this.f2485f = d().d("app_express_gesture_priority", -1);
        }
        return this.f2485f;
    }

    public int o(int i) {
        return cd(String.valueOf(i)).r;
    }

    public int o(String str) {
        if (str == null) {
            return 0;
        }
        return wp.d().gh(str).jy;
    }

    public int ob() {
        if (this.q == Integer.MAX_VALUE) {
            this.q = d().d("web_upload_max_retry", 0);
        }
        return this.q;
    }

    public boolean oh() {
        return this.y;
    }

    public boolean op() {
        if (this.cv == Integer.MAX_VALUE) {
            this.cv = 1;
        }
        return this.cv == 1;
    }

    public long ox(String str) {
        return gh(str).wp;
    }

    public com.bytedance.sdk.component.mn.dq ox() {
        if (this.ae == null) {
            this.ae = n.dq("tt_sdk_settings_slot");
        }
        if (n.d() != 1) {
            return null;
        }
        return this.ae;
    }

    public void ox(int i) {
        if (this.mj != i) {
            this.mj = i;
            d().dq("settings_open", this.mj);
        }
    }

    public boolean p(int i) {
        return gh(String.valueOf(i)).ox == 1;
    }

    public boolean p(String str) {
        int i = wp.d().gh(String.valueOf(str)).s;
        return i != 1 ? i == 2 && q.ox(wp.getContext()) != 0 : q.p(wp.getContext());
    }

    public com.bytedance.sdk.openadsdk.core.dislike.d pa() {
        return this.bl;
    }

    public JSONObject ps() {
        return this.nm;
    }

    public int py() {
        return this.lk;
    }

    public int q(String str) {
        int d2;
        if (this.us == null) {
            return MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        }
        str.getClass();
        switch (str) {
            case "banner_ad":
                d2 = this.us.d(MediationConstant.RIT_TYPE_BANNER);
                break;
            case "rewarded_video":
                d2 = this.us.d("rewarded");
                break;
            case "fullscreen_interstitial_ad":
                d2 = this.us.d("fullscreen");
                break;
            case "embeded_ad":
                d2 = this.us.d(MediationConstant.RIT_TYPE_FEED);
                break;
            case "draw_ad":
                d2 = this.us.d(MediationConstant.RIT_TYPE_DRAW);
                break;
            default:
                d2 = MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
                break;
        }
        return d2 <= 0 ? MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE : d2;
    }

    public boolean q() {
        boolean d2 = d().d("enable_apm_pv", false);
        this.zi = d2;
        return d2;
    }

    public boolean qz() {
        if (this.bn == Integer.MAX_VALUE) {
            this.bn = d().d("read_video_from_cache", 1);
        }
        return this.bn == 1;
    }

    public boolean r() {
        if (this.xi == this.ws) {
            this.xi = d().d("enable_dl_ext", this.ws);
        }
        return this.xi == 1;
    }

    public boolean r(String str) {
        if (TextUtils.isEmpty(str) || str.equals("http") || str.equals("https")) {
            return false;
        }
        if (this.lq == 0) {
            this.lq = d().d("open_dl_type", 0);
        }
        int i = this.lq;
        if (i == 0) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        return wp(str);
    }

    public String[] rp() {
        Set<String> set;
        try {
            set = this.sc;
        } catch (Throwable unused) {
        }
        if (set == null || set.size() == 0) {
            Set<String> d2 = d().d("gecko_hosts", Collections.synchronizedSet(new HashSet()));
            this.sc = d2;
            Set<String> dq = dq(d2);
            this.sc = dq;
            if (dq != null) {
                if (dq.size() == 0) {
                }
            }
            return null;
        }
        return (String[]) this.sc.toArray(new String[0]);
    }

    public int s(int i) {
        return Math.max(gh(String.valueOf(i)).kk, 0);
    }

    public boolean s() {
        return this.ru == 1;
    }

    public boolean s(String str) {
        return gh(String.valueOf(str)).iw == 1;
    }

    public List<String> sc() {
        if (this.yy + 172800000 < System.currentTimeMillis()) {
            return null;
        }
        Map<String, Boolean> d2 = kx.d(AdBaseConstants.DEFAULT_DELAY_TIMESTAMP);
        ArrayList arrayList = new ArrayList();
        synchronized (this.ds) {
            try {
                for (String str : this.ds) {
                    if (!d2.containsKey(str.replaceAll("[&\\?]?tt_csj_scheme_priority=[^&]*", ""))) {
                        arrayList.add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Collections.sort(arrayList, new Comparator<String>() { // from class: com.bytedance.sdk.openadsdk.core.bl.mn.2
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(String str2, String str3) {
                try {
                    return Integer.parseInt(Uri.parse(str2).getQueryParameter("tt_csj_scheme_priority")) - Integer.parseInt(Uri.parse(str3).getQueryParameter("tt_csj_scheme_priority"));
                } catch (Throwable unused) {
                    return 0;
                }
            }
        });
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.set(i, ((String) arrayList.get(i)).replaceAll("[&\\?]?tt_csj_scheme_priority=[^&]*", ""));
        }
        return arrayList;
    }

    public String sp() {
        if (TextUtils.isEmpty(this.td)) {
            this.td = ri().getString(TTDownloadField.TT_MD5, "");
        }
        return this.td;
    }

    public List<String> sy() {
        if (this.yy + 172800000 < System.currentTimeMillis()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.v.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public String t() {
        if (TextUtils.equals(this.ig, "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/")) {
            this.ig = d().d("web_upload_report_url", "https://api-access.pangolin-sdk-toutiao.com/v2/inspect/aegis/client/page/");
        }
        return this.ig;
    }

    public boolean td() {
        return this.il;
    }

    public boolean tl() {
        return this.kr == 1;
    }

    public int tu() {
        int d2 = d().d("npth_enable_type", 0);
        this.s = d2;
        return d2;
    }

    public int tv() {
        if (this.dr == Integer.MAX_VALUE) {
            this.dr = d().d("refresh_req_num", 2);
        }
        if (this.dr <= 0) {
            this.dr = 2;
        }
        return this.dr;
    }

    public JSONObject u() {
        if (this.j == null) {
            String d2 = d().d("digest", "");
            if (!TextUtils.isEmpty(d2)) {
                try {
                    this.j = new JSONObject(d2);
                } catch (Exception unused) {
                }
            }
        }
        return this.j;
    }

    public com.bytedance.sdk.openadsdk.core.q.p.dq uh() {
        if (this.by == null) {
            this.by = com.bytedance.sdk.openadsdk.core.q.p.dq.dq(d().d("white_check_config", ""));
        }
        return this.by;
    }

    public d uo() {
        return this.vk;
    }

    public int ux() {
        if (this.az == -1) {
            this.az = d().d("gnd_prefetch_cache_size", 5);
        }
        return this.az;
    }

    public int v() {
        if (this.uh == Integer.MAX_VALUE) {
            this.uh = d().d("splash_check_type", 1);
        }
        return this.uh;
    }

    public int vf() {
        if (this.o == Integer.MAX_VALUE) {
            this.o = d().d("web_upload_max_zip_file", 5);
        }
        return this.o;
    }

    public String vk() {
        if (this.jb != 1) {
            return "";
        }
        if (!TextUtils.isEmpty(this.ps)) {
            return this.ps;
        }
        String d2 = ax().d("lp_list", this.ps);
        this.ps = d2;
        return d2;
    }

    public boolean vw() {
        if (this.rp == 2.1474836E9f) {
            this.rp = d().d("global_rate", 1.0f);
        }
        return ((float) ((int) this.rp)) == 1.0f;
    }

    public float w() {
        if (this.bx == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.bx = d().d("tpl_render_error_rate_h5", 4.5f);
        }
        return this.bx;
    }

    public String wi() {
        if (TextUtils.isEmpty(this.ah)) {
            this.ah = d().d("ad_pkg_info_url", "apps.bytesfield.com");
        }
        if (TextUtils.isEmpty(this.ah)) {
            this.ah = "apps.bytesfield.com";
        }
        return this.ah;
    }

    public Set<String> wn() {
        Set<String> d2;
        if (this.mn.isEmpty() && (d2 = d().d("web_upload_content_type", Collections.synchronizedSet(new HashSet()))) != null && d2.size() != 0) {
            Iterator<String> it = d2.iterator();
            while (it.hasNext()) {
                this.mn.add(it.next());
            }
        }
        return this.mn;
    }

    public boolean wp() {
        if (this.cc == this.wi) {
            this.cc = d().d("event_switch", this.wi);
        }
        return this.cc == 1;
    }

    public float wq() {
        if (this.f2480a == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.f2480a = d().d("low_value", 7.3f);
        }
        return this.f2480a;
    }

    public JSONObject ws() {
        return this.dn;
    }

    public long x() {
        if (this.yj == 2147483647L) {
            this.yj = d().d("bg_web_readd_t", 3000L);
        }
        return this.yj;
    }

    public wn xi() {
        return this.jo;
    }

    public int xj() {
        if (this.qc == Integer.MAX_VALUE) {
            this.qc = d().d("m_vids_join", 0);
        }
        int i = this.qc;
        if (i == Integer.MAX_VALUE) {
            return 0;
        }
        return i;
    }

    public boolean xn() {
        String xq = xq();
        this.gn = xq;
        if (TextUtils.isEmpty(xq)) {
            return false;
        }
        String sp = sp();
        this.td = sp;
        return !TextUtils.isEmpty(sp);
    }

    public String xq() {
        if (TextUtils.isEmpty(this.gn)) {
            this.gn = ri().getString(abn.EXTRA_URL, "");
        }
        return this.gn;
    }

    public String xv() {
        if (TextUtils.isEmpty(this.ip)) {
            this.ip = d().d("play_component_ugen_engine_url", "");
        }
        return this.ip;
    }

    public boolean xx() {
        return this.dk;
    }

    public JSONObject xz() {
        if (this.ob == null) {
            String d2 = d().d("download_sdk_config", "");
            this.l = d2;
            if (!TextUtils.isEmpty(d2)) {
                try {
                    this.ob = new JSONObject(this.l);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.ob;
    }

    public float y() {
        if (this.nt == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.nt = d().d("tpl_render_error_rate_native", 1.0f);
        }
        return this.nt;
    }

    public boolean yo() {
        if (this.mj == Integer.MAX_VALUE) {
            this.mj = d().d("settings_open", 1);
        }
        return this.mj == 1;
    }

    public JSONObject yy() {
        return this.en;
    }

    public com.bytedance.sdk.openadsdk.core.iw.d z() {
        return this.ji;
    }

    public boolean zc() {
        return this.ho;
    }

    public JSONObject zi() {
        if (this.ux == null) {
            try {
                String d2 = d().d("video_cache_config", "");
                if (!TextUtils.isEmpty(d2)) {
                    this.ux = new JSONObject(d2);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return this.ux;
    }
}
