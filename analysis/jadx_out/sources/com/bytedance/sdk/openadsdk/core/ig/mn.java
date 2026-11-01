package com.bytedance.sdk.openadsdk.core.ig;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn implements com.bytedance.sdk.openadsdk.iw.dq {

    /* renamed from: d, reason: collision with root package name */
    private j f2982d;
    private String dq;
    private JSONArray ia;
    private JSONObject ig;
    private JSONObject iw;
    private boolean kk;
    private JSONArray mn;
    private volatile int mp;
    private AtomicLong no;
    private int o;
    private Boolean ox;
    private Boolean p;
    private volatile boolean q;
    private Boolean s;

    public mn() {
        this.dq = "embeded_ad";
        Boolean bool = Boolean.FALSE;
        this.ox = bool;
        this.p = bool;
        this.s = bool;
        this.kk = false;
        this.no = new AtomicLong();
        this.mp = 0;
        this.q = false;
    }

    public mn(String str, j jVar, JSONObject jSONObject) {
        this.dq = "embeded_ad";
        Boolean bool = Boolean.FALSE;
        this.ox = bool;
        this.p = bool;
        this.s = bool;
        this.kk = false;
        this.no = new AtomicLong();
        this.mp = 0;
        this.q = false;
        this.dq = str;
        this.f2982d = jVar;
        this.iw = jSONObject;
        this.mn = new JSONArray();
        this.ia = new JSONArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean cd() {
        if (this.s.booleanValue()) {
            return true;
        }
        return this.p.booleanValue() && this.ox.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(JSONArray jSONArray, Object obj) {
        if (jSONArray == null || jSONArray.length() >= 10) {
            return;
        }
        try {
            jSONArray.put(obj);
        } catch (Exception e2) {
            ig.d("WebviewTimeTrack", e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(JSONObject jSONObject, String str, Object obj, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception e2) {
                ig.d("WebviewTimeTrack", e2.getMessage());
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.ox
    public void d() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.12
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "render_success", jSONObject);
                    if (mn.this.dq.equals("splash_ad") || mn.this.dq.equals("cache_splash_ad")) {
                        return;
                    }
                    if (mn.this.iw.optInt("webview_source", -1) == 2) {
                        String unused = mn.this.dq;
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", "h5_render_success", String.valueOf(currentTimeMillis) + "0");
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void d(int i) {
        this.o = i;
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void d(final int i, final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.30
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                    if (mn.this.dq.equals("splash_ad") || mn.this.dq.equals("cache_splash_ad")) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", "native_render_fail", String.valueOf(currentTimeMillis) + "1");
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void d(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.28
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void d(final String str, final long j, final long j2, final int i) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.17
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str) || j2 < j) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "start_ts", Long.valueOf(j));
                    mn.this.dq(jSONObject, "end_ts", Long.valueOf(j2));
                    mn.this.dq(jSONObject, "intercept_type", Integer.valueOf(i));
                    mn.this.dq(jSONObject, "type", "intercept_js");
                    mn.this.dq(jSONObject, abn.EXTRA_URL, str);
                    mn.this.dq(jSONObject, MediationConstant.EXTRA_DURATION, Long.valueOf(j2 - j));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.ia, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void d(final JSONObject jSONObject) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.23
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject2;
                    if (mn.this.iw == null || (jSONObject2 = jSONObject) == null) {
                        return;
                    }
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        mn mnVar = mn.this;
                        mnVar.dq(mnVar.iw, next, jSONObject.opt(next));
                    }
                    mn.this.p = Boolean.TRUE;
                    mn.this.fw();
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void d(boolean z) {
        try {
            if (!this.q && this.f2982d != null) {
                this.q = true;
                if (this.f2982d.dr() == 0 && this.mp != 0) {
                    if (this.ig == null) {
                        this.ig = new JSONObject();
                    }
                    this.ig.put("render_sequence", this.f2982d.dr());
                    this.ig.put("render_control", this.f2982d.ce());
                    this.ig.put("fetch_tpl_time_out", wp.d().dq(this.dq, this.f2982d.dr()));
                    this.ig.put("req_id", this.f2982d.el());
                    this.ig.put(MediationConstant.EXTRA_ADID, this.f2982d.fx());
                    this.ig.put("ad_slot_type", c.ia(this.f2982d));
                    if (z) {
                        this.ig.put("webview_time_cost", System.currentTimeMillis() - this.no.get());
                        this.ig.put("webview_result", 2);
                    }
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(this.ig);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.ox
    public void dq() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.1
                @Override // java.lang.Runnable
                public void run() {
                    mn.this.no.set(System.currentTimeMillis());
                    JSONObject jSONObject = new JSONObject();
                    mn mnVar = mn.this;
                    mnVar.dq(jSONObject, "ts", Long.valueOf(mnVar.no.get()));
                    mn mnVar2 = mn.this;
                    mnVar2.dq(jSONObject, "render_sequence", Integer.valueOf(mnVar2.f2982d.dr()));
                    mn mnVar3 = mn.this;
                    mnVar3.dq(jSONObject, "render_timeout", Integer.valueOf(mnVar3.o));
                    mn.this.dq(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.s.s.dq().s()));
                    mn.this.dq(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.s.s.dq().ox()));
                    mn mnVar4 = mn.this;
                    mnVar4.dq(mnVar4.iw, "render_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void dq(final int i) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.5
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, "isWebViewCache", Integer.valueOf(i));
                    if (mn.this.f2982d != null) {
                        if (mn.this.f2982d.ou()) {
                            mn.this.dq(jSONObject, "engine_version", "v3");
                        } else {
                            mn.this.dq(jSONObject, "engine_version", "v1");
                        }
                    }
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "before_webview_request", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void dq(int i, int i2, String str) {
        try {
            this.mp = i;
            if (this.ig == null) {
                this.ig = new JSONObject();
            }
            this.ig.put("render_type", i);
            this.ig.put("error_code", i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.ox
    public void dq(final int i, final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.25
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
                    String str2 = str;
                    if (str2 != null) {
                        mn.this.dq(jSONObject, MediationConstant.KEY_REASON, str2);
                    }
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "render_error", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void dq(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.27
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void dq(final String str, final long j, final long j2, final int i) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.16
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str) || j2 < j) {
                        return;
                    }
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "start_ts", Long.valueOf(j));
                    mn.this.dq(jSONObject, "end_ts", Long.valueOf(j2));
                    mn.this.dq(jSONObject, "intercept_type", Integer.valueOf(i));
                    mn.this.dq(jSONObject, "type", "intercept_html");
                    mn.this.dq(jSONObject, abn.EXTRA_URL, str);
                    mn.this.dq(jSONObject, MediationConstant.EXTRA_DURATION, Long.valueOf(j2 - j));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.ia, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void dq(final JSONObject jSONObject) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.10
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 == null) {
                        jSONObject2 = new JSONObject();
                    }
                    mn.this.dq(jSONObject2, "ts", Long.valueOf(System.currentTimeMillis()));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "webview_load_error", jSONObject2);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void dq(JSONObject jSONObject, String str, Object obj) {
        dq(jSONObject, str, obj, true);
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void dq(boolean z) {
        this.s = Boolean.valueOf(z);
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void dq(boolean z, int i) {
        try {
            if (this.ig == null) {
                this.ig = new JSONObject();
            }
            this.ig.put("error_code", i);
            this.ig.put("webview_time_cost", System.currentTimeMillis() - this.no.get());
            this.ig.put("webview_result", !z ? 1 : 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void f() {
        this.ox = Boolean.TRUE;
    }

    @Override // com.bytedance.sdk.openadsdk.iw.dq
    public void fw() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.24
                @Override // java.lang.Runnable
                public void run() {
                    if (mn.this.cd() && !mn.this.kk) {
                        if (mn.this.mn != null && mn.this.mn.length() != 0) {
                            try {
                                mn.this.iw.put("native_switchBackgroundAndForeground", mn.this.mn);
                            } catch (Exception unused) {
                            }
                        }
                        if (mn.this.ia != null && mn.this.ia.length() != 0) {
                            try {
                                mn.this.iw.put("intercept_source", mn.this.ia);
                            } catch (Exception unused2) {
                            }
                        }
                        HashMap hashMap = new HashMap();
                        hashMap.put("webview_time_track", mn.this.iw);
                        no.ia().c();
                        ox.mn(mn.this.f2982d, mn.this.dq, "webview_time_track", hashMap);
                        mn.this.kk = true;
                    }
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void ia() {
        dq((JSONObject) null);
    }

    public void ig() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.15
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, "type", "native_enterForeground");
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.mn, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void iw() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.8
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "webview_load_start", (Object) jSONObject, false);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void iw(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.18
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, "jsb", str);
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "webview_jsb_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.ox
    public void jy() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.22
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "render_did_finish", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void kk() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.11
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "native_endcard_show", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void mn() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.9
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "webview_load_success", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.p
    public void mn(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.19
                @Override // java.lang.Runnable
                public void run() {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, "jsb", str);
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "webview_jsb_end", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.d
    public void mp() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.20
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "no_native_render", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void no() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.14
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, "type", "native_enterBackground");
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.mn, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void o() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.13
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "native_endcard_close", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.d
    public void ox() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.26
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "native_render_start", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void ox(final int i, final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.4
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn.this.dq(jSONObject, PluginConstants.KEY_ERROR_CODE, Integer.valueOf(i));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                    if (mn.this.dq.equals("splash_ad") || mn.this.dq.equals("cache_splash_ad")) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", "native_render_fail", String.valueOf(currentTimeMillis) + "1");
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void ox(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.29
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                    if (mn.this.dq.equals("splash_ad") || mn.this.dq.equals("cache_splash_ad")) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", "native_render_success", String.valueOf(currentTimeMillis) + "0");
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    public void p() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.6
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "native_render_end", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void p(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.2
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.ox
    public void q() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.21
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "render_failed", jSONObject);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.d
    public void s() {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.7
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, "native_render_end", jSONObject);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    JSONObject jSONObject2 = new JSONObject();
                    mn.this.dq(jSONObject2, "ts", Long.valueOf(currentTimeMillis2));
                    mn mnVar2 = mn.this;
                    mnVar2.dq(mnVar2.iw, "render_success", jSONObject2);
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.iw.p.dq
    public void s(final String str) {
        try {
            ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.mn.3
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    mn.this.dq(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    mn mnVar = mn.this;
                    mnVar.dq(mnVar.iw, str, jSONObject);
                    if (mn.this.dq.equals("splash_ad") || mn.this.dq.equals("cache_splash_ad")) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("ugen_render", "native_render_success", String.valueOf(currentTimeMillis) + "0");
                }
            });
        } catch (Throwable th) {
            ig.d("WebviewTimeTrack", th.getMessage());
        }
    }
}
