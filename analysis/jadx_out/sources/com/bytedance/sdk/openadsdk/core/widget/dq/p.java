package com.bytedance.sdk.openadsdk.core.widget.dq;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.adexpress.s.s;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.no;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ig.iw;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.nativeexpress.mn;
import com.bytedance.sdk.openadsdk.core.o.ox.ia;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.n;
import com.bytedance.sdk.openadsdk.core.wp;
import g.hat;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class p extends WebViewClient implements SSWebView.ox {
    private static final HashSet<String> ig;

    /* renamed from: d, reason: collision with root package name */
    protected final c f3692d;
    private com.bytedance.sdk.openadsdk.ig.ox dq;
    protected final Context ox;
    protected final String p;
    protected com.bytedance.sdk.openadsdk.core.ig.p s;
    protected boolean iw = true;
    protected boolean mn = true;
    private AtomicBoolean kk = new AtomicBoolean(false);
    protected volatile AtomicInteger ia = new AtomicInteger(0);
    private long o = -1;
    private boolean no = false;

    static {
        HashSet<String> hashSet = new HashSet<>();
        ig = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public p(Context context, c cVar, String str) {
        this.ox = context;
        this.f3692d = cVar;
        this.p = str;
    }

    public p(Context context, c cVar, String str, com.bytedance.sdk.openadsdk.core.ig.p pVar) {
        this.ox = context;
        this.f3692d = cVar;
        this.p = str;
        this.s = pVar;
    }

    public p(Context context, c cVar, String str, com.bytedance.sdk.openadsdk.core.ig.p pVar, com.bytedance.sdk.openadsdk.ig.ox oxVar) {
        this.ox = context;
        this.f3692d = cVar;
        this.p = str;
        this.s = pVar;
        this.dq = oxVar;
    }

    private static String d(String str) {
        int lastIndexOf;
        String substring;
        if (str == null || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf == str.length() - 1 || (substring = str.substring(lastIndexOf)) == null || !ig.contains(substring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/".concat(substring);
    }

    private void dq(Context context, Intent intent) {
        if (intent != null) {
            try {
                ComponentName resolveActivity = intent.resolveActivity(context.getPackageManager());
                if ((resolveActivity == null || !resolveActivity.getPackageName().equals(context.getPackageName())) && (intent.getFlags() & MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO) == 0) {
                    com.bytedance.sdk.component.utils.d.dq(context, intent, null, TextUtils.equals("main", "internal"));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.contains("weixin://wap/pay") || str.contains("weixin://dl/business/?ticket") || str.contains("alipays://platformapi/startapp?appId")) {
            com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.f3692d.kk(), "landingpage", "lp_pay");
        }
    }

    public void d(boolean z) {
        if (!z || this.no) {
            this.o = System.currentTimeMillis();
        }
    }

    public boolean d() {
        return System.currentTimeMillis() - this.o < 1000;
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView.ox
    public void dq(boolean z) {
        c cVar = this.f3692d;
        if (cVar != null) {
            cVar.ox(z);
        }
    }

    public boolean dq(WebView webView, WebResourceRequest webResourceRequest) {
        return n.dq(webView, this.ia, this.f3692d, webResourceRequest, false, d()) && !(this instanceof mn);
    }

    public boolean dq(WebView webView, String str) {
        return n.dq(webView, this.ia, this.f3692d, str, false, d()) && !(this instanceof mn);
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.s;
        if (pVar != null) {
            pVar.dq(webView);
        }
        if (webView != null && this.iw) {
            try {
                String dq = d.dq(wp.d().ir(), this.p);
                if (!TextUtils.isEmpty(dq)) {
                    no.dq(webView, dq);
                }
            } catch (Throwable unused) {
            }
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.s;
        if (pVar != null) {
            pVar.dq(webView, str, bitmap);
        }
        if (this.mn) {
            d.dq(this.ox).dq(true).dq(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.s;
        if (pVar != null) {
            pVar.dq(i, str, str2, d(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.s == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("Accept")) {
            str = requestHeaders.get("Accept");
        } else if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.s.dq(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), uri, str);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.s == null || webResourceResponse == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("Accept")) {
            str = requestHeaders.get("Accept");
        } else if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.s.dq(webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), uri, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable unused) {
            }
        }
        if (this.s != null) {
            int i = 0;
            String str = "SslError: unknown";
            String str2 = null;
            if (sslError != null) {
                try {
                    i = sslError.getPrimaryError();
                    str = "SslError: ".concat(String.valueOf(sslError));
                    str2 = sslError.getUrl();
                } catch (Throwable unused2) {
                }
            }
            this.s.dq(i, str, str2, d(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        if (renderProcessGoneDetail.didCrash()) {
            ig.p("WebChromeClient", "The WebView rendering process crashed!");
            if (webView != null) {
                ViewGroup viewGroup = (ViewGroup) webView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(webView);
                }
                webView.destroy();
                s.dq().d();
            }
            return true;
        }
        ig.p("WebChromeClient", "System killed the WebView rendering process to reclaim memory. Recreating...");
        if (webView != null) {
            ViewGroup viewGroup2 = (ViewGroup) webView.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(webView);
            }
            webView.destroy();
            s.dq().d();
        }
        return true;
    }

    public void ox() {
        this.no = true;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebResourceResponse shouldInterceptRequest = super.shouldInterceptRequest(webView, webResourceRequest);
        com.bytedance.sdk.openadsdk.ig.ox oxVar = this.dq;
        if (oxVar != null) {
            shouldInterceptRequest = oxVar.dq(webView, webResourceRequest, shouldInterceptRequest);
        }
        return dq(webView, webResourceRequest) ? new WebResourceResponse("", "", null) : shouldInterceptRequest;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return dq(webView, str) ? new WebResourceResponse("", "", null) : super.shouldInterceptRequest(webView, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x016b, code lost:
    
        if (r1.o() != false) goto L59;
     */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        c cVar;
        dq(str);
        try {
        } catch (Exception e2) {
            ig.dq("WebChromeClient", "shouldOverrideUrlLoading", e2);
            c cVar2 = this.f3692d;
            if (cVar2 != null) {
            }
        }
        if (!dq(webView, str)) {
            com.bytedance.sdk.openadsdk.ig.ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq(webView, str);
            }
            Uri parse = Uri.parse(str);
            String lowerCase = parse.getScheme().toLowerCase();
            if ("bytedance".equals(lowerCase)) {
                r.dq(parse, this.f3692d);
                return true;
            }
            if (com.bytedance.sdk.openadsdk.core.no.ia().h() != null) {
                Bridge h = com.bytedance.sdk.openadsdk.core.no.ia().h();
                hat f2 = hat.f();
                boolean z = false;
                f2.f19148c.put(0, new op().dq("uri", parse));
                if (((Boolean) h.call(15, f2.k(), Boolean.class)).booleanValue()) {
                    c cVar3 = this.f3692d;
                    if (cVar3 != null && cVar3.kk() != null) {
                        if (com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(str)) {
                            j kk = this.f3692d.kk();
                            com.bytedance.sdk.openadsdk.core.o.d.ox d2 = com.bytedance.sdk.openadsdk.core.o.s.d(this.ox, kk, this.f3692d.n(), true);
                            if (d2 instanceof ia) {
                                ((ia) d2).ox(true);
                            }
                            d2.dq(kk, false);
                            z = true;
                        } else {
                            z = com.bytedance.sdk.openadsdk.core.o.s.dq() ? com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(parse, this.f3692d.kk(), this.ox, this.f3692d.n(), hashCode()) : com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(parse, this.f3692d.kk(), this.ox, this.f3692d.n());
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.ox.dq().dq("is_landing_page_open_market", true);
                    if (z) {
                    }
                }
            }
            if (!q.dq(str) && (cVar = this.f3692d) != null && cVar.kk() != null) {
                final String n = this.f3692d.n();
                final j kk2 = this.f3692d.kk();
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                com.bytedance.sdk.openadsdk.core.ig.ox.d(kk2, n, "lp_open_dpl", lowerCase);
                if (com.bytedance.sdk.openadsdk.core.ir.c.iw(this.ox)) {
                    if (com.bytedance.sdk.openadsdk.core.ir.c.dq(this.ox, intent)) {
                        com.bytedance.sdk.component.utils.d.dq(this.ox, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.widget.dq.p.1
                            @Override // com.bytedance.sdk.component.utils.d.dq
                            public void dq() {
                                com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_openurl");
                                com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_deeplink_success_realtime");
                            }

                            @Override // com.bytedance.sdk.component.utils.d.dq
                            public void dq(Throwable th) {
                                com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_openurl_failed");
                                com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_deeplink_fail_realtime");
                            }
                        }, TextUtils.equals("main", "internal"));
                        iw.dq().dq(kk2, n, true);
                        return true;
                    }
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_openurl_failed");
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_deeplink_fail_realtime");
                    return true;
                }
                try {
                    dq(this.ox, intent);
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_openurl");
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_deeplink_success_realtime");
                    iw.dq().dq(kk2, n, true);
                    return true;
                } catch (Throwable unused) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_openurl_failed");
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(kk2, n, "lp_deeplink_fail_realtime");
                }
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
        return true;
    }
}
