package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.R;
import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.dmm;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class InteractWebView extends SSWebView {

    /* renamed from: d, reason: collision with root package name */
    private c f3551d;
    private Context dq;
    private Map<String, Object> ox;
    private j p;
    private dmm s;

    public static class dq extends com.bytedance.sdk.openadsdk.core.widget.dq.p {
        private j dq;

        public dq(Context context, c cVar, j jVar, String str) {
            super(context, cVar, str);
            this.dq = jVar;
        }

        @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            try {
                return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
            } catch (Throwable th) {
                ig.d("InteractWebView", "shouldInterceptRequest error1", th);
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, String str) {
            try {
                com.bytedance.sdk.component.adexpress.dq.d.dq dq = com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.dq(webView, this.dq, str, new dq.InterfaceC0175dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.InteractWebView.dq.1
                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.InterfaceC0175dq
                    public com.bytedance.sdk.component.adexpress.dq.d.dq dq(String str2, kk.dq dqVar, String str3) {
                        com.bytedance.sdk.component.adexpress.dq.d.dq dqVar2 = new com.bytedance.sdk.component.adexpress.dq.d.dq();
                        dqVar2.dq(5);
                        dqVar2.dq(com.bytedance.sdk.openadsdk.core.ugeno.iw.dq.d().dq(webView, dqVar, str2));
                        return dqVar2;
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.InterfaceC0175dq
                    public boolean dq() {
                        return false;
                    }
                });
                if (dq != null && dq.dq() != null) {
                    return dq.dq();
                }
            } catch (Throwable unused) {
            }
            return super.shouldInterceptRequest(webView, str);
        }
    }

    public InteractWebView(Context context) {
        super(context);
        this.dq = context;
    }

    private void iw(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.dq).dq(false).dq(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            r.dq(sSWebView, op.f3334d, j.p(this.p));
            sSWebView.setMixedContentMode(0);
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e2) {
            ig.p("InteractWebView", e2.toString());
        }
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, com.bytedance.sdk.component.mp.dq
    public void dq(String str) {
        super.dq(str);
    }

    public dmm getUGenContext() {
        return this.s;
    }

    public void ig() {
        Map<String, Object> map = this.ox;
        if (map == null || map.size() <= 0 || !this.ox.containsKey("key_material")) {
            return;
        }
        Object obj = this.ox.get("key_material");
        if (obj instanceof j) {
            this.p = (j) obj;
            this.f3551d = (c) this.ox.get("key_js_object");
            if (this.ox.containsKey("key_data_list") && (this.ox.get("key_data_list") instanceof List)) {
                this.f3551d.d((List<JSONObject>) this.ox.get("key_data_list"));
            }
            this.f3551d.d(this).dq(this.p).d(this.p.fx()).ox(this.p.dn()).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.p)).dq((SSWebView) this);
        }
    }

    public void mp() {
        setBackgroundColor(0);
        setBackgroundResource(R.color.transparent);
        iw(this);
        if (this.p != null) {
            Context context = this.dq;
            c cVar = this.f3551d;
            j jVar = this.p;
            setWebViewClient(new dq(context, cVar, jVar, jVar.fx()));
        } else {
            setWebViewClient(new SSWebView.dq());
        }
        com.bytedance.sdk.component.adexpress.s.s.dq().dq(this, this.f3551d);
        setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.f3551d));
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setUGenContext(dmm dmmVar) {
        this.s = dmmVar;
    }

    public void setUGenExtraMap(Map<String, Object> map) {
        this.ox = map;
    }
}
