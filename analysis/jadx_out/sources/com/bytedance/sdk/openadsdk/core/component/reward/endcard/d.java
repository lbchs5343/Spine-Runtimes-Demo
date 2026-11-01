package com.bytedance.sdk.openadsdk.core.component.reward.endcard;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.openvk.component.video.dq.s.d;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.p.s;
import com.bytedance.sdk.openadsdk.core.ig.mn;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.uh;
import g.awf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends dq {
    private double bl;

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Bitmap> f2596e;
    private final com.bytedance.sdk.openadsdk.core.fw.d h;
    private String ir;
    private double ji;
    private final com.bytedance.sdk.openadsdk.o.dq kx;
    private double n;
    private double op;
    private boolean u;

    public d(TTBaseVideoActivity tTBaseVideoActivity, j jVar, String str, int i, int i2, boolean z, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        super(tTBaseVideoActivity, jVar, str, i, i2, z);
        this.f2596e = new HashMap();
        this.kx = new com.bytedance.sdk.openadsdk.o.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.d.1
            @Override // com.bytedance.sdk.openadsdk.o.dq
            public void dq() {
                d.this.dq.kk(1);
            }
        };
        this.h = new com.bytedance.sdk.openadsdk.core.fw.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.d.2
            @Override // com.bytedance.sdk.openadsdk.core.fw.d
            public void dq(boolean z2, int i3, String str2) {
                if (z2) {
                    d dVar = d.this;
                    dVar.f2599f = true;
                    if (dVar.u) {
                        d dVar2 = d.this;
                        dVar2.dq(dVar2.ji, d.this.bl, d.this.n, d.this.op, d.this.ir);
                        d.this.u = false;
                    }
                }
                if (pa.o(d.this.f2598d)) {
                    d.this.dq(z2, i3, str2);
                }
            }
        };
        this.mn = abstractEndCardFrameLayout.getEndCardWebView();
        dq();
    }

    private void bl() {
        this.o = pa.ia(this.f2598d);
        float es = this.f2598d.es();
        if (TextUtils.isEmpty(this.o)) {
            return;
        }
        if (this.gh == 1) {
            if (this.o.contains("?")) {
                this.o = awf.ad(new StringBuilder(), this.o, "&orientation=portrait");
            } else {
                this.o = awf.ad(new StringBuilder(), this.o, "?orientation=portrait");
            }
        }
        if (this.o.contains("?")) {
            this.o += "&height=" + this.i + "&width=" + this.r + "&aspect_ratio=" + es;
        } else {
            this.o += "?height=" + this.i + "&width=" + this.r + "&aspect_ratio=" + es;
        }
        this.o = com.bytedance.sdk.openadsdk.core.component.reward.s.dq.dq(this.o);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebResourceResponse dq(String str) {
        if (!str.startsWith("csjclientimg://")) {
            return null;
        }
        Bitmap bitmap = this.f2596e.get(str.replace("csjclientimg://", ""));
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
    }

    public void dq(double d2, double d3, double d4, double d5, String str) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        if (!this.f2599f) {
            this.ji = d2;
            this.bl = d3;
            this.op = d5;
            this.n = d4;
            this.ir = str;
            this.u = true;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", d2);
            jSONObject.put("y", d3);
            jSONObject.put(MediaFormat.KEY_WIDTH, d4);
            jSONObject.put(MediaFormat.KEY_HEIGHT, d5);
            jSONObject.put("videoFrameKey", str);
            this.ia.dq("endcardTransform", jSONObject);
        } catch (JSONException unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(int i) {
        super.dq(i);
        dq(true);
        ox(true);
        dq(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(DownloadListener downloadListener, com.bytedance.sdk.openadsdk.core.d.d dVar) {
        if (this.mn == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.dq, this.ia, this.f2598d.fx(), this.ig) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.d.3
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                mn mnVar = d.this.kk;
                if (mnVar != null) {
                    mnVar.mn();
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                mn mnVar = d.this.kk;
                if (mnVar != null) {
                    mnVar.iw();
                }
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                d.this.fw.set(false);
                d.this.cd = this.ia;
                d dVar2 = d.this;
                dVar2.mp = i;
                dVar2.q = str;
                if (dVar2.kk != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            jSONObject.put(PluginConstants.KEY_ERROR_CODE, i);
                            jSONObject.put("msg", str);
                        }
                        d.this.kk.dq(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                int errorCode;
                CharSequence description;
                int errorCode2;
                CharSequence description2;
                if (webResourceRequest.isForMainFrame()) {
                    d.this.fw.set(false);
                    d.this.cd = this.ia;
                }
                if (d.this.kk != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (Build.VERSION.SDK_INT >= 23) {
                            errorCode = webResourceError.getErrorCode();
                            jSONObject.put(PluginConstants.KEY_ERROR_CODE, errorCode);
                            description = webResourceError.getDescription();
                            jSONObject.put("msg", description);
                        }
                        d.this.kk.dq(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                d dVar2 = d.this;
                errorCode2 = webResourceError.getErrorCode();
                dVar2.mp = errorCode2;
                d dVar3 = d.this;
                description2 = webResourceError.getDescription();
                dVar3.q = String.valueOf(description2);
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (d.this.kk != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(PluginConstants.KEY_ERROR_CODE, webResourceResponse.getStatusCode());
                        jSONObject.put("msg", webResourceResponse.getReasonPhrase());
                        d.this.kk.dq(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (d.this.o.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        d.this.fw.set(false);
                        d.this.cd = this.ia;
                    }
                    if (webResourceResponse != null) {
                        d.this.mp = webResourceResponse.getStatusCode();
                        d.this.q = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String uri = webResourceRequest.getUrl().toString();
                    d dVar2 = d.this;
                    if (dVar2.f2598d == null) {
                        return super.shouldInterceptRequest(webView, uri);
                    }
                    WebResourceResponse dq = dVar2.dq(uri);
                    if (dq != null) {
                        return dq;
                    }
                    if (TextUtils.isEmpty(d.this.f2598d.rp())) {
                        return super.shouldInterceptRequest(webView, uri);
                    }
                    d.this.s++;
                    return super.shouldInterceptRequest(webView, uri);
                } catch (Throwable th) {
                    ig.d("CommonEndCard", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                WebResourceResponse dq = d.this.dq(str);
                return dq != null ? dq : super.shouldInterceptRequest(webView, str);
            }
        };
        this.no = pVar;
        this.mn.setWebViewClient(pVar);
        dq(this.mn);
        this.mn.setBackgroundColor(-1);
        this.mn.setDisplayZoomControls(false);
        this.mn.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.ia, this.ig) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.d.4
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.ox, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
            }
        });
        this.mn.setDownloadListener(downloadListener);
    }

    public void dq(q qVar) {
        double d2;
        double d3;
        double d4;
        double d5;
        if (uh.wp(this.f2598d)) {
            double d6 = this.r;
            double d7 = this.i;
            if (qVar == null || !this.dq.yy().mn() || (qVar.ia() == 0.0d && qVar.kk() == 0.0d)) {
                d2 = d7;
                d3 = 0.0d;
                d4 = d6;
                d5 = 0.0d;
            } else {
                double iw = qVar.iw();
                double mn = qVar.mn();
                double ia = qVar.ia();
                d2 = qVar.kk();
                d3 = mn;
                d5 = iw;
                d4 = ia;
            }
            dq(d5, d3, d4, d2, null);
            if (this.dq.yy() instanceof s) {
                return;
            }
            final double d8 = d2;
            final double d9 = d4;
            final double d10 = d3;
            final double d11 = d5;
            com.bykv.vk.openvk.component.video.dq.s.d.dq(2147483647L, pa.dq(this.f2598d), new d.InterfaceC0011d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.d.5
                @Override // com.bykv.vk.openvk.component.video.dq.s.d.InterfaceC0011d
                public void dq(Bitmap bitmap) {
                    if (bitmap != null) {
                        String valueOf = String.valueOf(bitmap.hashCode());
                        d.this.f2596e.put(valueOf, bitmap);
                        d.this.dq(d11, d10, d9, d8, valueOf);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(boolean z, Map<String, Object> map, View view) {
        if (this.mn == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        mn mnVar = new mn(this.ox, this.f2598d, jSONObject);
        this.kk = mnVar;
        mnVar.dq(jSONObject, "webview_source", (Object) 2);
        com.bytedance.sdk.openadsdk.core.ig.p d2 = new com.bytedance.sdk.openadsdk.core.ig.p(this.f2598d, this.mn).d(true);
        this.ig = d2;
        d2.dq(true);
        bl();
        this.ig.dq(h() ? "landingpage_endcard" : z ? "reward_endcard" : "fullscreen_endcard");
        c cVar = new c(this.dq);
        this.ia = cVar;
        cVar.d(this.mn).dq(this.f2598d).d(this.f2598d.fx()).ox(this.f2598d.dn()).ox(z ? 7 : 5).dq(this.k).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.f2598d)).dq(this.mn).d(jy.dq(this.f2598d)).dq(this.kk).dq(this.ox).dq(map).dq(this.wp).dq(view).dq(this.kx);
        this.ia.dq(this.h);
    }

    public boolean h() {
        String str = this.o;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public void ji() {
        SSWebView sSWebView;
        if (this.jy || (sSWebView = this.mn) == null) {
            return;
        }
        sSWebView.dq(this.o);
        this.jy = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void jy() {
        super.jy();
        this.f2596e.clear();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public String wp() {
        return "endcard";
    }
}
