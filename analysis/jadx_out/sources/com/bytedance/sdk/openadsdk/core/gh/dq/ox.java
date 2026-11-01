package com.bytedance.sdk.openadsdk.core.gh.dq;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.gh.dq.ox;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.mn;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox<T extends ox> implements dq {

    /* renamed from: d, reason: collision with root package name */
    private String f2871d;
    private String dq;
    private String ia;
    private String ig;
    private String jy;
    private String mp;
    private String no;
    private String o;
    private String ox;
    private String q;
    private String s;
    private String p = op.ox;
    private long iw = System.currentTimeMillis() / 1000;
    private int mn = 0;
    private int kk = 0;

    private T cd() {
        return this;
    }

    public static ox<ox> d() {
        return new ox<>();
    }

    private JSONObject fw() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("os", 1);
            com.bytedance.sdk.openadsdk.jy.d.d(wp.getContext(), jSONObject);
            jSONObject.put("oaid", le.dq(false));
            jSONObject.put("model", i.le());
            jSONObject.put("android_id", i.s());
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("package_name", c.kk());
            jSONObject.put("ua", c.mn());
            jSONObject.put("applog_did", mn.dq().d());
            jSONObject.put("ip", o.iw());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public T d(int i) {
        this.kk = i;
        return cd();
    }

    public T d(String str) {
        this.mp = str;
        return cd();
    }

    public T dq(int i) {
        this.mn = i;
        return cd();
    }

    public T dq(long j) {
        this.iw = j;
        return cd();
    }

    public T dq(String str) {
        this.dq = str;
        return cd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.gh.dq.dq
    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(getType())) {
                jSONObject.put("type", getType());
            }
            if (!TextUtils.isEmpty(p())) {
                jSONObject.put("rit", p());
            }
            if (!TextUtils.isEmpty(s())) {
                jSONObject.put("creative_id", s());
            }
            if (!TextUtils.isEmpty(iw())) {
                jSONObject.put("ad_sdk_version", iw());
            }
            if (TextUtils.isEmpty(ia())) {
                jSONObject.put("app_version", c.no());
            } else {
                jSONObject.put("app_version", ia());
            }
            if (kk() > 0) {
                jSONObject.put("timestamp", kk());
            }
            if (o() > 0) {
                jSONObject.put("adtype", o());
            }
            if (!TextUtils.isEmpty(no())) {
                jSONObject.put("req_id", no());
            }
            jSONObject.put("error_code", ig());
            if (!TextUtils.isEmpty(mp())) {
                jSONObject.put("error_msg", mp());
            }
            if (!TextUtils.isEmpty(q())) {
                jSONObject.put("extra", q());
            }
            if (!TextUtils.isEmpty(jy())) {
                jSONObject.put("image_url", jy());
            }
            if (!TextUtils.isEmpty(ox())) {
                jSONObject.put("event_extra", ox());
            }
            if (!TextUtils.isEmpty(mn())) {
                jSONObject.put(MediationConstant.EXTRA_DURATION, mn());
            }
            if (!TextUtils.isEmpty(no.ia().mp())) {
                jSONObject.put("appid", no.ia().mp());
            }
            if (!TextUtils.isEmpty(f())) {
                jSONObject.put("ad_info", f());
            }
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            jSONObject.put("is_plugin", op.dq());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("conn_type", q.d(wp.getContext()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject.put("device_info", fw());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public String f() {
        return this.jy;
    }

    public String getType() {
        return this.dq;
    }

    public T ia(String str) {
        this.no = str;
        return cd();
    }

    public String ia() {
        return this.s;
    }

    public int ig() {
        return this.kk;
    }

    public T iw(String str) {
        this.ia = str;
        return cd();
    }

    public String iw() {
        return this.p;
    }

    public String jy() {
        return this.ig;
    }

    public long kk() {
        return this.iw;
    }

    public T kk(String str) {
        this.jy = str;
        return cd();
    }

    public T mn(String str) {
        this.o = str;
        return cd();
    }

    public String mn() {
        return this.q;
    }

    public String mp() {
        return this.o;
    }

    public String no() {
        return this.ia;
    }

    public int o() {
        return this.mn;
    }

    public T ox(String str) {
        this.f2871d = str;
        return cd();
    }

    public String ox() {
        return this.mp;
    }

    public T p(String str) {
        this.ox = str;
        return cd();
    }

    public String p() {
        return this.f2871d;
    }

    public String q() {
        return this.no;
    }

    public T s(String str) {
        this.q = str;
        return cd();
    }

    public String s() {
        return this.ox;
    }
}
