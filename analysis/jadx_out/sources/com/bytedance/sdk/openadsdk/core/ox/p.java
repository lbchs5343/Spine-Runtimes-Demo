package com.bytedance.sdk.openadsdk.core.ox;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.mn;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private static volatile p f3344d;
    private volatile String bl;

    /* renamed from: c, reason: collision with root package name */
    private volatile String f3345c;
    private volatile String cd;
    private volatile String ce;
    public String dq;
    private volatile String gh;
    private volatile String h;
    private volatile String i;
    private volatile String ia;
    private volatile String ir;
    private volatile String ji;
    private volatile String jy;
    private volatile String k;
    private volatile String kx;
    private volatile String le;
    private volatile String mn;
    private volatile String n;
    private volatile String no;
    private volatile String o;
    private volatile String ob;
    private volatile String op;
    private volatile String q;
    private volatile String r;
    private volatile JSONArray u;
    private volatile String vf;
    private volatile String wn;
    private volatile String wp;
    private volatile int p = -1;
    private volatile long s = -1;
    private volatile float iw = -1.0f;
    private volatile int kk = -1;
    private volatile int ig = -1;
    private volatile int mp = -1;

    /* renamed from: f, reason: collision with root package name */
    private volatile int f3347f = -1;
    private volatile int fw = -1;

    /* renamed from: e, reason: collision with root package name */
    private volatile int f3346e = -1;
    private volatile int er = -1;
    private volatile int j = -1;
    private volatile int nh = -1;
    private volatile int l = -1;
    private volatile int t = -1;
    private volatile int gx = -1;
    private volatile int by = -1;
    private volatile int uh = 0;
    private volatile SharedPreferences ox = com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "sp_exec_getad_config", 0);

    public static p dq() {
        if (f3344d == null) {
            synchronized (p.class) {
                try {
                    if (f3344d == null) {
                        f3344d = new p();
                    }
                } finally {
                }
            }
        }
        return f3344d;
    }

    private void ob() {
        try {
            this.r = mn.dq().p();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, 6607);
            jSONObject.put("log_version", this.r);
            d("logsdk_version", jSONObject.toString());
        } catch (JSONException unused) {
        }
    }

    private SharedPreferences vf() {
        return this.ox;
    }

    public void bl(String str) {
        if (str == null || !str.equals(this.vf)) {
            this.vf = str;
            d("net_qty", str);
        }
    }

    public boolean bl() {
        return d("is_spl_cache_remove_change", false);
    }

    public String c() {
        if (this.dq == null) {
            this.dq = ox("drop_cache_black_conf", "");
        }
        return this.dq;
    }

    public String cd() {
        if (this.ji == null) {
            this.ji = ox("dev17", (String) null);
        }
        return this.ji;
    }

    public void cd(String str) {
        if (str == null || str.equals(this.kx)) {
            return;
        }
        this.kx = str;
        d("dev07", str);
    }

    public int ce() {
        if (this.uh <= 0) {
            this.uh = d("splash_render_timeout_backup", 100);
        }
        return this.uh;
    }

    public float d(String str, float f2) {
        try {
            return ox.dq().d() ? com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, f2) : vf().getFloat(str, f2);
        } catch (Throwable unused) {
            return f2;
        }
    }

    public int d(String str, int i) {
        try {
            return ox.dq().d() ? com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, i) : vf().getInt(str, i);
        } catch (Throwable unused) {
            return i;
        }
    }

    public long d() {
        if (this.s == -1) {
            this.s = d(MediationConstant.EXTRA_DURATION, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        }
        return this.s;
    }

    public long d(String str, long j) {
        try {
            return ox.dq().d() ? com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, j) : vf().getLong(str, j);
        } catch (Throwable unused) {
            return j;
        }
    }

    public void d(int i) {
        if (this.kk == i) {
            return;
        }
        this.kk = i;
        dq("live_ad_clk_cnt", i);
    }

    public void d(String str) {
        if (str == null || !str.equals(this.ia)) {
            this.ia = str;
            d("ab_test_param", str);
        }
    }

    public void d(String str, String str2) {
        try {
            if (ox.dq().d()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, str2);
                return;
            }
            SharedPreferences.Editor edit = vf().edit();
            edit.putString(str, str2);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public void d(boolean z) {
        this.ig = z ? 1 : 2;
        dq("is_paid", this.ig);
    }

    public boolean d(String str, boolean z) {
        try {
            return ox.dq().d() ? com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, z) : vf().getBoolean(str, z);
        } catch (Throwable unused) {
            return z;
        }
    }

    public String dq(String str, String str2) {
        return ox("code_group_rit_".concat(String.valueOf(str)), str2);
    }

    public void dq(float f2) {
        if (this.iw == f2) {
            return;
        }
        this.iw = f2;
        dq("max", this.iw);
    }

    public void dq(int i) {
        if (this.p == i) {
            return;
        }
        this.p = i;
        dq("max", i);
    }

    public void dq(long j) {
        if (this.s == j) {
            return;
        }
        this.s = j;
        dq(MediationConstant.EXTRA_DURATION, j);
    }

    public void dq(String str) {
        if (str == null || !str.equals(this.mn)) {
            this.mn = str;
            d("ab_test_version", str);
        }
    }

    public void dq(String str, float f2) {
        try {
            if (ox.dq().d()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, Float.valueOf(f2));
                return;
            }
            SharedPreferences.Editor edit = vf().edit();
            edit.putFloat(str, f2);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, int i) {
        try {
            if (ox.dq().d()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, Integer.valueOf(i));
                return;
            }
            SharedPreferences.Editor edit = vf().edit();
            edit.putInt(str, i);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, long j) {
        try {
            if (ox.dq().d()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, Long.valueOf(j));
                return;
            }
            SharedPreferences.Editor edit = vf().edit();
            edit.putLong(str, j);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, boolean z) {
        try {
            if (ox.dq().d()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_exec_getad_config", str, Boolean.valueOf(z));
                return;
            }
            SharedPreferences.Editor edit = vf().edit();
            edit.putBoolean(str, z);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public void dq(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        if (jSONArray.toString().equals(this.u == null ? null : this.u.toString())) {
            return;
        }
        this.u = jSONArray;
        d("dev12", jSONArray.toString());
    }

    public void dq(JSONObject jSONObject) {
        int optInt;
        if (jSONObject == null || this.j == (optInt = jSONObject.optInt("splash_policy", 0))) {
            return;
        }
        this.j = optInt;
        dq("splash_policy", optInt);
    }

    public boolean dq(boolean z) {
        if (this.ig == -1) {
            this.ig = d("is_paid", z ? 1 : 2);
        }
        return this.ig == 1;
    }

    public String e() {
        if (this.ce == null) {
            this.ce = ox("dev15", (String) null);
        }
        return this.ce;
    }

    public void e(String str) {
        if (str == null || str.equals(this.f3345c)) {
            return;
        }
        this.f3345c = str;
        p("dev13", str);
    }

    public int er() {
        if (this.j == -1) {
            this.j = d("splash_policy", 0);
        }
        return this.j;
    }

    public String f() {
        if (this.kx == null) {
            this.kx = ox("dev07", (String) null);
        }
        return this.kx;
    }

    public void f(int i) {
        if (this.nh == i) {
            return;
        }
        this.nh = i;
        dq("dev_level", i);
    }

    public void f(String str) {
        if (str == null || str.equals(this.k)) {
            return;
        }
        this.k = str;
        d("dev04", str);
    }

    public String fw() {
        if (this.h == null) {
            this.h = ox("dev08", (String) null);
        }
        return this.h;
    }

    public void fw(String str) {
        if (str == null || str.equals(this.wp)) {
            return;
        }
        this.wp = str;
        d("dev05", str);
    }

    public String gh() {
        if (this.bl == null) {
            this.bl = ox("dev18", (String) null);
        }
        return this.bl;
    }

    public void gh(String str) {
        if (str == null || str.equals(this.h)) {
            return;
        }
        this.h = str;
        d("dev08", str);
    }

    public int h() {
        if (this.er == -1) {
            this.er = d("cypher_version", 40001);
        }
        return this.er;
    }

    public void h(String str) {
        if (str == null || !str.equals(this.wn)) {
            this.wn = str;
            d("dev16", str);
        }
    }

    public String i() {
        if (this.op == null) {
            this.op = ox("dev10", (String) null);
        }
        return this.op;
    }

    public void i(String str) {
        if (str == null || str.equals(this.bl)) {
            return;
        }
        this.bl = str;
        d("dev18", str);
    }

    public int ia() {
        if (this.kk == -1) {
            this.kk = d("live_ad_clk_cnt", 0);
        }
        return this.kk;
    }

    public String ia(String str) {
        if (this.jy == null) {
            this.jy = ox("keywords", str);
        }
        return this.jy;
    }

    public void ia(int i) {
        dq("sp_device_app_direction", i);
    }

    public String ig() {
        if (this.le == null) {
            this.le = com.bytedance.sdk.component.utils.dq.ox(ox("dev02", (String) null));
        }
        return this.le;
    }

    public String ig(String str) {
        if (this.gh == null) {
            this.gh = ox("extra_internal_data", str);
        }
        return this.gh;
    }

    public void ig(int i) {
        if (this.gx == i) {
            return;
        }
        this.gx = i;
        dq("spl_thread_conf", i);
    }

    public int ir() {
        if (this.by == -1) {
            this.by = d("spl_comm_conf", 0);
        }
        return this.by;
    }

    public String iw() {
        if (this.ia == null) {
            this.ia = ox("ab_test_param", "");
        }
        return this.ia;
    }

    public String iw(int i) {
        if (TextUtils.isEmpty(this.r)) {
            try {
                String ox = ox("logsdk_version", "");
                if (TextUtils.isEmpty(ox)) {
                    ob();
                } else {
                    JSONObject jSONObject = new JSONObject(ox);
                    int optInt = jSONObject.optInt(PluginConstants.KEY_PLUGIN_VERSION);
                    this.r = jSONObject.optString("log_version");
                    if (optInt != 6607 || TextUtils.isEmpty(this.r)) {
                        ob();
                    }
                }
            } catch (Exception unused) {
            }
        }
        return this.r;
    }

    public void iw(String str) {
        this.q = str;
        d("dev03", str);
    }

    public String j() {
        if (this.ob == null) {
            this.ob = ox("spl_strategy", "");
        }
        return this.ob;
    }

    public String ji() {
        if (this.wn == null) {
            this.wn = ox("dev16", "");
        }
        return this.wn;
    }

    public void ji(String str) {
        if (str == null || !str.equals(this.dq)) {
            this.dq = str;
            d("drop_cache_black_conf", str);
        }
    }

    public void jy(int i) {
        if (this.uh == i) {
            return;
        }
        this.uh = i;
        dq("splash_render_timeout_backup", i);
    }

    public void jy(String str) {
        if (str == null || str.equals(this.le)) {
            return;
        }
        this.le = str;
        d("dev02", com.bytedance.sdk.component.utils.dq.d(str));
    }

    public boolean jy() {
        if (this.f3346e == -1) {
            this.f3346e = d("dl_storage_internal", 1);
        }
        return this.f3346e == 1;
    }

    public JSONArray k() {
        String ox;
        if (this.u == null && (ox = ox("dev12", (String) null)) != null) {
            try {
                this.u = new JSONArray(ox);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return this.u;
    }

    public void k(String str) {
        if (str == null || str.equals(this.op)) {
            return;
        }
        this.op = str;
        d("dev10", str);
    }

    public String kk() {
        if (this.o == null) {
            this.o = ox(PluginConstants.KEY_APP_ID, "");
        }
        return this.o;
    }

    public void kk(int i) {
        if (this.er == i) {
            return;
        }
        this.er = i;
        dq("cypher_version", i);
    }

    public void kk(String str) {
        if (str == null || !str.equals(this.cd)) {
            this.cd = str;
            d("extra_data", str);
        }
    }

    public int kx() {
        return d("sp_device_app_direction", -1);
    }

    public void kx(String str) {
        if (str == null || str.equals(this.ce)) {
            return;
        }
        this.ce = str;
        p("dev15", str);
    }

    public String le() {
        if (this.ir == null) {
            this.ir = ox("dev11", (String) null);
        }
        return this.ir;
    }

    public void le(String str) {
        if (str == null || str.equals(this.n)) {
            return;
        }
        this.n = str;
        d("dev09", str);
    }

    public void mn() {
        this.ia = "";
        this.mn = "";
        d("ab_test_version", "");
        d("ab_test_param", "");
    }

    public void mn(int i) {
        this.f3346e = i;
        dq("dl_storage_internal", i);
    }

    public void mn(String str) {
        if (str == null || !str.equals(this.jy)) {
            this.jy = str;
            d("keywords", str);
        }
    }

    public String mp() {
        if (this.k == null) {
            this.k = ox("dev04", (String) null);
        }
        return this.k;
    }

    public void mp(int i) {
        if (this.by == i) {
            return;
        }
        this.by = i;
        dq("spl_comm_conf", i);
    }

    public void mp(String str) {
        if (str == null || str.equals(this.i)) {
            return;
        }
        this.i = str;
        d("dev01", str);
    }

    public int n() {
        if (this.l == -1) {
            this.l = d("spl_cache_conf", 0);
        }
        return this.l;
    }

    public void n(String str) {
        if (str == null || !str.equals(this.ob)) {
            this.ob = str;
            d("spl_strategy", this.ob);
        }
    }

    public void nh() {
        try {
            SharedPreferences.Editor edit = vf().edit();
            edit.clear();
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    public int no() {
        if (this.f3347f == -1) {
            this.f3347f = d("age_group", Integer.MIN_VALUE);
        }
        return this.f3347f;
    }

    public void no(int i) {
        if (this.l == i) {
            return;
        }
        this.l = i;
        dq("spl_cache_conf", i);
    }

    public void no(String str) {
        if (str == null || !str.equals(this.gh)) {
            this.gh = str;
            d("extra_internal_data", str);
        }
    }

    public String o() {
        if (this.no == null) {
            this.no = ox("app_name", "");
        }
        return this.no;
    }

    public String o(String str) {
        if (this.cd == null) {
            this.cd = ox("extra_data", str);
        }
        return this.cd;
    }

    public boolean o(int i) {
        return i == 3 || i == 4;
    }

    public int op() {
        if (this.gx == -1) {
            this.gx = d("spl_thread_conf", 0);
        }
        return this.gx;
    }

    public int ox() {
        if (this.p == -1) {
            this.p = d("max", 50);
        }
        return this.p;
    }

    public String ox(String str, long j) {
        String ox;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ox = ox(str, "");
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(ox)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(ox);
        if (System.currentTimeMillis() - jSONObject.getLong("time") <= j) {
            return jSONObject.getString("value");
        }
        return null;
    }

    public String ox(String str, String str2) {
        try {
            return ox.dq().d() ? com.bytedance.sdk.component.mn.ox.dq.d.d("sp_exec_getad_config", str, str2) : vf().getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }

    public void ox(int i) {
        if (i == this.f3347f) {
            return;
        }
        this.f3347f = i;
        dq("age_group", i);
    }

    public void ox(String str) {
        if (str == null || !str.equals(this.o)) {
            this.o = str;
            d(PluginConstants.KEY_APP_ID, str);
        }
    }

    public void ox(boolean z) {
        dq("is_spl_cache_remove_change", z);
    }

    public float p() {
        if (this.iw == -1.0f) {
            this.iw = d("max", -1.0f);
        }
        return this.iw;
    }

    public String p(String str, long j) {
        String ox;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ox = ox(str, "");
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(ox)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(ox);
        if (6607 < jSONObject.optInt("p_version", 0)) {
            return null;
        }
        if (System.currentTimeMillis() - jSONObject.getLong("time") <= j) {
            return jSONObject.getString("value");
        }
        return null;
    }

    public void p(int i) {
        if (i == this.fw) {
            return;
        }
        this.fw = i;
        dq("sdk_theme_status", i);
    }

    public void p(String str) {
        if (str == null || !str.equals(this.no)) {
            this.no = str;
            d("app_name", str);
        }
    }

    public void p(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("value", str2);
            jSONObject.put("time", System.currentTimeMillis());
            jSONObject.put("p_version", 6607);
            d(str, jSONObject.toString());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public boolean p(boolean z) {
        if (this.mp == -1) {
            this.mp = d("is_use_mediation", z ? 1 : 2);
        }
        return this.mp == 1;
    }

    public String q() {
        if (this.wp == null) {
            this.wp = ox("dev05", (String) null);
        }
        return this.wp;
    }

    public String q(String str) {
        if (this.i == null) {
            this.i = ox("dev01", str);
        }
        return this.i;
    }

    public void q(int i) {
        if (this.t == i) {
            return;
        }
        this.t = i;
        dq("spl_cache_expired", i);
    }

    public String r() {
        if (this.n == null) {
            this.n = ox("dev09", (String) null);
        }
        return this.n;
    }

    public void r(String str) {
        if (str == null || str.equals(this.ji)) {
            return;
        }
        this.ji = str;
        d("dev17", str);
    }

    public int s(int i) {
        if (this.fw == -1) {
            this.fw = d("sdk_theme_status", i);
        }
        return this.fw;
    }

    public String s() {
        if (this.mn == null) {
            this.mn = ox("ab_test_version", "");
        }
        return this.mn;
    }

    public String s(String str) {
        if (this.q == null) {
            this.q = ox("dev03", str);
        }
        return this.q;
    }

    public void s(boolean z) {
        int i = z ? 1 : 2;
        if (this.mp != i) {
            this.mp = i;
            dq("is_use_mediation", i);
        }
    }

    public long u() {
        if (this.t == -1) {
            this.t = d("spl_cache_expired", 0);
        }
        return this.t;
    }

    public String wn() {
        if (this.vf == null) {
            this.vf = ox("net_qty", "");
        }
        return this.vf;
    }

    public String wp() {
        if (this.f3345c == null) {
            this.f3345c = ox("dev13", (String) null);
        }
        return this.f3345c;
    }

    public void wp(String str) {
        if (str == null || str.equals(this.ir)) {
            return;
        }
        this.ir = str;
        d("dev11", str);
    }
}
