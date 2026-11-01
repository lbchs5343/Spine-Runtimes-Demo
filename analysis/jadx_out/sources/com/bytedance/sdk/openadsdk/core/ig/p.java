package com.bytedance.sdk.openadsdk.core.ig;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.no;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.q.ox;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.u;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {
    private Runnable bl;
    private long h;
    private final j iw;
    private com.bytedance.sdk.openadsdk.core.q.s ji;
    private com.bytedance.sdk.openadsdk.iw.dq k;
    private JSONObject le;
    private WeakReference<d> n;
    private String p;
    private com.bytedance.sdk.component.mp.dq r;
    private String s;
    private int dq = 0;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f3024d = false;
    private int ox = -1;
    private String mn = "landingpage";
    private long ia = 0;
    private long kk = 0;
    private long o = 0;
    private long no = 0;
    private long ig = 0;
    private boolean mp = false;
    private long q = 0;
    private long jy = 0;

    /* renamed from: f, reason: collision with root package name */
    private long f3026f = 0;
    private long fw = -1;
    private boolean cd = false;
    private AtomicInteger gh = new AtomicInteger(0);
    private boolean i = false;
    private AtomicBoolean wp = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    private boolean f3025e = false;
    private boolean kx = true;

    public interface d {
        void dq(String str);
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private final WeakReference<d> f3028d;
        private final AtomicInteger dq;

        public dq(AtomicInteger atomicInteger, WeakReference<d> weakReference) {
            this.dq = atomicInteger;
            this.f3028d = weakReference;
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }

        @JavascriptInterface
        public void readHtml(String str, String str2) {
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i = 0;
            try {
                int intValue = Float.valueOf(str).intValue();
                if (intValue > 100) {
                    i = 100;
                } else if (intValue >= 0) {
                    i = intValue;
                }
            } catch (Throwable unused) {
            }
            AtomicInteger atomicInteger = this.dq;
            if (atomicInteger != null) {
                atomicInteger.set(i);
            }
            WeakReference<d> weakReference = this.f3028d;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f3028d.get().dq(str);
        }
    }

    public p(j jVar, com.bytedance.sdk.component.mp.dq dqVar) {
        this.iw = jVar;
        this.r = dqVar;
        if (dqVar != null) {
            dqVar.dq(new dq(this.gh, this.n), "JS_LANDING_PAGE_LOG_OBJ");
        }
        this.h = System.currentTimeMillis();
    }

    private void d(JSONObject jSONObject) {
        try {
            j jVar = this.iw;
            u sd = jVar == null ? null : jVar.sd();
            if (sd == null) {
                jSONObject.put("preload_type", 0);
                return;
            }
            jSONObject.put("preload_type", sd.f3513d);
            jSONObject.put("preload_behavior", sd.ox);
            com.bytedance.sdk.openadsdk.core.q.s sVar = this.ji;
            if (sVar != null) {
                jSONObject.put("cache_hit_rate", sVar.p());
                jSONObject.put("cache_rate", this.ji.s());
            }
            jSONObject.put("channel_name", sd.dq);
        } catch (Exception unused) {
        }
    }

    private void dq(String str, JSONObject jSONObject) {
        dq(str, jSONObject, -1L);
    }

    private void dq(String str, JSONObject jSONObject, long j) {
        if (!this.i || this.iw == null || TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject2 = null;
        if (jSONObject != null) {
            try {
                jSONObject.put("is_playable", i.ox(this.iw) ? 1 : 0);
                jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.playable.dq.dq().dq(this.iw) ? 1 : 0);
            } catch (JSONException unused) {
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("ad_extra_data", jSONObject.toString());
                    if (j > 0) {
                        jSONObject3.put(MediationConstant.EXTRA_DURATION, j);
                    }
                } catch (JSONException unused2) {
                }
                jSONObject2 = jSONObject3;
            } catch (JSONException unused3) {
            }
        }
        ox.ox(this.iw, this.mn, str, jSONObject2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn() {
        try {
            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.q.ox.dq) && this.iw != null) {
                StringBuilder sb = new StringBuilder(com.bytedance.sdk.openadsdk.core.q.ox.dq);
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("cid", this.iw.fx());
                jSONObject.putOpt(MediationConstant.EXTRA_ADID, this.iw.fa());
                jSONObject.put("log_extra", this.iw.dn());
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("web_init_time", this.f3026f);
                jSONObject2.put("click_time", this.jy);
                jSONObject2.put("web_url", this.iw.ae());
                d(jSONObject2);
                jSONObject.put("client_info", jSONObject2);
                com.bytedance.sdk.openadsdk.core.q.ox.dq(sb, "\"/** adInfo **/\"", jSONObject.toString());
                String sb2 = sb.toString();
                if (TextUtils.isEmpty(sb2)) {
                    return;
                }
                String concat = "javascript:".concat(String.valueOf(sb2));
                com.bytedance.sdk.component.mp.dq dqVar = this.r;
                if (dqVar != null) {
                    no.dq(dqVar, concat);
                }
            }
        } catch (Throwable th) {
            ig.d(th.getMessage());
        }
    }

    public p d(long j) {
        this.jy = j;
        return this;
    }

    public p d(boolean z) {
        this.i = z;
        return this;
    }

    public com.bytedance.sdk.openadsdk.iw.dq d() {
        return this.k;
    }

    public void d(String str) {
        if (this.i) {
            if ("load_finish".equals(str) && "landingpage".equals(this.mn)) {
                Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ig.p.2
                    @Override // java.lang.Runnable
                    public void run() {
                        p.this.mn();
                    }
                };
                this.bl = runnable;
                com.bytedance.sdk.openadsdk.core.q.ox.dq(new ox.dq(runnable));
            }
            long j = this.ig - this.no;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", this.ox);
                jSONObject.put("error_msg", this.p);
                jSONObject.put("error_url", this.s);
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                long j2 = this.jy;
                if (j2 > 0) {
                    jSONObject.put("exp_duration", this.ig - j2);
                }
                long j3 = this.f3026f;
                if (j3 > 0) {
                    jSONObject.put("web_duration", this.ig - j3);
                }
                long j4 = this.fw;
                if (j4 >= 0) {
                    jSONObject.put("webview_duration", j4);
                }
                d(jSONObject);
            } catch (Exception unused) {
            }
            dq(str, jSONObject, Math.min(j, 600000L));
        }
    }

    public void dq(int i, String str, String str2, String str3) {
        com.bytedance.sdk.openadsdk.iw.dq dqVar = this.k;
        if (dqVar != null) {
            dqVar.ia();
        }
        if ((str3 == null || !str3.startsWith("image")) && this.dq != 2) {
            this.dq = 3;
        }
        this.ox = i;
        this.p = str;
        this.s = str2;
    }

    public void dq(long j) {
        this.o = j;
    }

    public void dq(WebView webView) {
        com.bytedance.sdk.openadsdk.iw.dq dqVar = this.k;
        if (dqVar != null) {
            dqVar.mn();
        }
        if (this.ig <= 0) {
            this.ig = System.currentTimeMillis();
        }
        if (webView != null && !this.cd && this.i) {
            this.cd = true;
            no.dq(webView, "javascript:\n    function sendScroll() {\n        try {\n            var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n            var clientH = window.innerHeight || document.documentElement.clientHeight;\n            var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n            var validH = scrollH + clientH;\n            var result = (validH / totalH * 100).toFixed(2);\n            console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n            window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n        } catch (e) {\n            console.log('sendScroll error' + e)\n        }\n    }\nsendScroll();\nwindow.addEventListener('scroll', function (e) {\n    sendScroll();\n});");
        }
        if (this.wp.get()) {
            return;
        }
        if (this.dq != 3) {
            this.dq = 2;
        }
        this.wp.set(true);
        this.ia = System.currentTimeMillis();
        if (this.dq == 2) {
            d("load_finish");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error_code", this.ox);
            jSONObject.put("error_msg", this.p);
            jSONObject.put("error_url", this.s);
            jSONObject.putOpt("render_type", "h5");
            int i = 0;
            jSONObject.putOpt("render_type_2", 0);
            j jVar = this.iw;
            if (jVar != null && jVar.sd() != null) {
                i = this.iw.sd().f3513d;
            }
            jSONObject.put("preload_type", i);
        } catch (Exception unused) {
        }
        dq("load_fail", jSONObject);
    }

    public void dq(WebView webView, int i) {
        if (this.no == 0 && i > 0) {
            this.dq = 1;
            this.no = System.currentTimeMillis();
        } else {
            if (i != 100 || this.mp) {
                return;
            }
            this.mp = true;
            this.ig = System.currentTimeMillis();
            if (!"landingpage".equals(this.mn) || this.dq == 3) {
                return;
            }
            d("landingpage_load_hundred");
        }
    }

    public void dq(WebView webView, String str, Bitmap bitmap) {
        com.bytedance.sdk.openadsdk.iw.dq dqVar = this.k;
        if (dqVar != null) {
            dqVar.iw();
        }
        if (this.f3024d) {
            return;
        }
        this.q = System.currentTimeMillis();
        this.f3024d = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("render_type", "h5");
            int i = 0;
            jSONObject.putOpt("render_type_2", 0);
            j jVar = this.iw;
            if (jVar != null && jVar.sd() != null) {
                i = this.iw.sd().f3513d;
            }
            jSONObject.put("preload_type", i);
        } catch (Exception unused) {
        }
        dq("load_start", jSONObject);
    }

    public void dq(d dVar) {
        this.n = new WeakReference<>(dVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.q.s sVar) {
        this.ji = sVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.iw.dq dqVar) {
        this.k = dqVar;
    }

    public void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mn = str;
    }

    public void dq(JSONObject jSONObject) {
        this.le = jSONObject;
    }

    public void dq(boolean z) {
        this.f3025e = z;
    }

    public boolean dq() {
        return this.f3025e;
    }

    public void iw() {
        com.bytedance.sdk.openadsdk.core.q.p.dq uh;
        com.bytedance.sdk.component.mp.dq dqVar;
        if (this.dq != 2 || !this.mp || (uh = wp.d().uh()) == null || (dqVar = this.r) == null) {
            return;
        }
        uh.dq(dqVar.getWebView(), this.iw);
    }

    public p ox(long j) {
        this.f3026f = j;
        return this;
    }

    public void ox() {
        this.ia = System.currentTimeMillis();
        if (this.q == 0) {
            this.q = System.currentTimeMillis();
        }
    }

    public p p(long j) {
        this.fw = j;
        return this;
    }

    public void p() {
        if (this.kx) {
            this.kx = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.h);
                jSONObject.put("end", System.currentTimeMillis());
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, this.iw);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            ox.dq(this.iw, "landingpage", "agg_stay_page", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ig.p.1
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put("ad_extra_data", jSONObject);
                }
            });
        }
        if (this.dq == 2) {
            if (this.o > 0 || !dq()) {
                long currentTimeMillis = System.currentTimeMillis();
                this.kk = currentTimeMillis;
                long max = currentTimeMillis - Math.max(this.ia, this.o);
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("load_status", this.dq);
                    jSONObject2.put("max_scroll_percent", this.gh.get());
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                } catch (JSONException unused) {
                }
                dq("stay_page", jSONObject2, Math.min(max, 600000L));
            }
        }
    }

    public void s() {
        com.bytedance.sdk.component.mp.dq dqVar = this.r;
        if (dqVar != null) {
            dqVar.d("JS_LANDING_PAGE_LOG_OBJ");
        }
        this.r = null;
        if (!this.wp.get() && this.f3024d) {
            ox.ox(this.iw, this.mn, System.currentTimeMillis() - this.q);
        }
        this.bl = null;
    }
}
