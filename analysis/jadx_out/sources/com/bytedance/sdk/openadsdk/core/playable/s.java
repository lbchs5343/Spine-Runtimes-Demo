package com.bytedance.sdk.openadsdk.core.playable;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.q.ia;
import com.bytedance.sdk.openadsdk.q.mn;
import g.awf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {
    private static final s dq = new s();

    public enum d {
        STATUS_NEW,
        STATUS_LOADING,
        STATUS_FINISH,
        STATUS_ERROR
    }

    public static class dq {

        /* renamed from: f, reason: collision with root package name */
        private static final mn.dq f3408f = new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.1
            @Override // com.bytedance.sdk.openadsdk.q.mn.dq
            public void dq(String str, String str2, Throwable th) {
                ig.d(str, str2, th);
            }
        };

        /* renamed from: d, reason: collision with root package name */
        private c f3409d;
        private SSWebView dq;
        private final String ia;
        private boolean ig;
        private InterfaceC0181dq iw;
        private final j mn;
        private com.bytedance.sdk.openadsdk.q.ia ox;
        private com.bytedance.sdk.openadsdk.core.ig.p p;
        private com.bytedance.sdk.openadsdk.core.widget.dq.p q;
        private final Context s;
        private boolean kk = true;
        private int no = 0;
        private final AtomicBoolean mp = new AtomicBoolean(false);
        private final Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> jy = awf.ab();
        private d o = d.STATUS_NEW;

        /* renamed from: com.bytedance.sdk.openadsdk.core.playable.s$dq$dq, reason: collision with other inner class name */
        public interface InterfaceC0181dq {
            void d(int i);

            void dq(int i);

            void dq(SSWebView sSWebView);

            Activity getActivity();

            com.bytedance.sdk.openadsdk.core.d.s ox();

            void p();
        }

        public dq(Context context, j jVar) {
            this.ig = true;
            this.s = context;
            this.mn = jVar;
            this.ia = i.d(jVar);
            if (this.dq == null) {
                this.dq = new SSWebView(context);
            }
            o();
            no();
            if (l.mn(jVar)) {
                return;
            }
            this.ig = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(int i) {
            this.ig = false;
            dq(i);
            InterfaceC0181dq interfaceC0181dq = this.iw;
            if (interfaceC0181dq != null) {
                interfaceC0181dq.dq(i);
            }
        }

        private void ig() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.mn);
            c cVar = new c(this.s);
            this.f3409d = cVar;
            cVar.d(this.dq).dq(this.mn).ox(arrayList).d(jy.dq(this.mn)).d(this.mn.fx()).ox(this.mn.dn()).ox(1).dq(this.dq).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.mn)).ig();
            this.f3409d.dq(new com.bytedance.sdk.openadsdk.core.fw.p() { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.5
                @Override // com.bytedance.sdk.openadsdk.core.fw.p
                public void d() {
                }

                @Override // com.bytedance.sdk.openadsdk.core.fw.p
                public void dq() {
                    if (l.kk(dq.this.mn)) {
                        dq.this.d(1);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.fw.p
                public void dq(int i) {
                }
            });
            q();
        }

        private void mp() {
            com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.s).dq(false).d(false).dq(this.dq);
            r.dq(this.dq, op.f3334d, j.p(this.mn));
            WebView webView = this.dq.getWebView();
            if (webView == null) {
                return;
            }
            webView.getSettings().setMixedContentMode(0);
        }

        private void no() {
            if (this.dq.getParent() != null) {
                return;
            }
            this.dq.dq(this.ia);
            com.bytedance.sdk.openadsdk.q.ia iaVar = this.ox;
            if (iaVar != null) {
                iaVar.mn(this.ia);
            }
            this.o = d.STATUS_LOADING;
        }

        private void o() {
            this.dq.setBackgroundColor(-16777216);
            com.bytedance.sdk.openadsdk.core.ig.p d2 = new com.bytedance.sdk.openadsdk.core.ig.p(this.mn, this.dq).d(true);
            this.p = d2;
            d2.dq("embeded_ad");
            ig();
            mp();
            com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.s, this.f3409d, this.mn.fx(), this.p) { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    dq.this.o = d.STATUS_FINISH;
                    if (dq.this.ox != null) {
                        dq.this.ox.ia(str);
                    }
                    if (l.ia(dq.this.mn)) {
                        dq.this.d(0);
                    }
                    if (dq.this.kk) {
                        com.bytedance.sdk.openadsdk.core.ig.ox.ox(dq.this.mn, "embeded_ad", "py_loading_success", (JSONObject) null);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    super.onReceivedError(webView, i, str, str2);
                    dq.this.kk = false;
                    if (dq.this.ox != null) {
                        dq.this.ox.dq(i, str, str2);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                    dq.this.kk = false;
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    if (dq.this.ia != null && webResourceRequest != null && webResourceRequest.getUrl() != null && dq.this.ia.equals(webResourceRequest.getUrl().toString())) {
                        dq.this.kk = false;
                    }
                    if (dq.this.ox != null) {
                        try {
                            dq.this.ox.dq(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                        } catch (Throwable unused) {
                        }
                    }
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (dq.this.ox != null) {
                            dq.this.ox.kk(str);
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable unused) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            };
            this.q = pVar;
            this.dq.setWebViewClient(pVar);
            this.dq.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.f3409d, this.p) { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.3
                @Override // com.bytedance.sdk.openadsdk.core.widget.dq.ox, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                    dq.this.no = i;
                    if (dq.this.iw != null) {
                        dq.this.iw.d(dq.this.no);
                    }
                }
            });
            this.dq.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.4
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                    if (dq.this.jy.containsKey(str)) {
                        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = (com.bytedance.sdk.openadsdk.core.o.d.ox) dq.this.jy.get(str);
                        if (oxVar != null) {
                            oxVar.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(dq.this.mn), false);
                            return;
                        }
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq(dq.this.s, str, dq.this.mn, "embeded_ad");
                    dq.dq(jy.dq(dq.this.mn));
                    dq.this.jy.put(str, dq);
                    dq.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(dq.this.mn), false);
                }
            });
        }

        private void q() {
            if (this.dq == null || this.ox != null) {
                return;
            }
            if (no.ia().c()) {
                com.bytedance.sdk.openadsdk.q.mn.dq(f3408f);
            }
            com.bytedance.sdk.openadsdk.core.cd.ox oxVar = new com.bytedance.sdk.openadsdk.core.cd.ox();
            com.bytedance.sdk.openadsdk.core.cd.p pVar = new com.bytedance.sdk.openadsdk.core.cd.p() { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.6
                @Override // com.bytedance.sdk.openadsdk.q.dq
                public void dq(int i, String str) {
                    if (l.ig(dq.this.mn)) {
                        dq.this.kk = false;
                        dq.this.d(3);
                        dq.this.ox(false);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.q.dq
                public void dq(JSONObject jSONObject) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.d(dq.this.mn, "embeded_ad", "playable_track", jSONObject);
                }
            };
            com.bytedance.sdk.openadsdk.core.cd.s sVar = new com.bytedance.sdk.openadsdk.core.cd.s(this.f3409d);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("cid", this.mn.fx());
                jSONObject.put("log_extra", this.mn.dn());
            } catch (Throwable th) {
                th.printStackTrace();
            }
            HashSet hashSet = new HashSet();
            hashSet.add("subscribe_app_ad");
            hashSet.add("adInfo");
            hashSet.add("webview_time_track");
            hashSet.add("download_app_ad");
            com.bytedance.sdk.openadsdk.q.ia ox = oxVar.dq(this.s.getApplicationContext(), this.dq, sVar, pVar, hashSet, ia.dq.LAND_PAGE).iw(this.ia).d(false).s(com.bytedance.sdk.openadsdk.core.mn.dq.mn()).dq(com.bytedance.sdk.openadsdk.core.mn.dq.dq()).s(jSONObject).d(com.bytedance.sdk.openadsdk.core.mn.dq.s()).dq("sdkEdition", com.bytedance.sdk.openadsdk.core.mn.dq.ox()).p(com.bytedance.sdk.openadsdk.core.mn.dq.p()).dq(l.mp(this.mn)).d(l.q(this.mn)).p(false).ox(false);
            this.ox = ox;
            try {
                com.bytedance.sdk.openadsdk.core.bl.mn d2 = wp.d();
                j jVar = this.mn;
                ox.dq(d2.dq(jVar, com.bytedance.sdk.openadsdk.core.ir.c.kk(jVar)));
            } catch (Exception unused) {
            }
            Set<String> o = this.ox.o();
            if (!TextUtils.isEmpty(l.d(this.mn))) {
                this.ox.ox(l.d(this.mn));
            }
            final WeakReference weakReference = new WeakReference(this.ox);
            if (this.f3409d == null || o == null || o.size() <= 0) {
                return;
            }
            Iterator<String> it = o.iterator();
            while (it.hasNext()) {
                this.f3409d.iw().dq(it.next(), (com.bytedance.sdk.component.dq.s<?, ?>) new com.bytedance.sdk.component.dq.s<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.playable.s.dq.7
                    @Override // com.bytedance.sdk.component.dq.s
                    public JSONObject dq(JSONObject jSONObject2, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
                        try {
                            com.bytedance.sdk.openadsdk.q.ia iaVar = (com.bytedance.sdk.openadsdk.q.ia) weakReference.get();
                            if (iaVar == null) {
                                return null;
                            }
                            return iaVar.p(dq(), jSONObject2);
                        } catch (Throwable unused2) {
                            return null;
                        }
                    }
                });
            }
        }

        public int d() {
            return this.no;
        }

        public void d(boolean z) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : this.jy.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().ia();
                }
            }
            if (!this.ig || z) {
                c cVar = this.f3409d;
                if (cVar != null) {
                    cVar.op();
                    SSWebView sSWebView = this.dq;
                    if (sSWebView != null) {
                        this.f3409d.iw(sSWebView.getVisibility() == 0);
                    }
                }
                com.bytedance.sdk.openadsdk.core.ig.p pVar = this.p;
                if (pVar != null) {
                    pVar.ox();
                }
                ox(true);
            }
            com.bytedance.sdk.openadsdk.core.widget.dq.p pVar2 = this.q;
            if (pVar2 != null) {
                pVar2.d(false);
            }
        }

        public d dq() {
            return !this.kk ? d.STATUS_ERROR : this.o;
        }

        public void dq(int i) {
            if (l.mn(this.mn) && !this.mp.getAndSet(true)) {
                HashMap hashMap = new HashMap();
                hashMap.put("remove_loading_page_type", Integer.valueOf(i));
                hashMap.put("playable_url", i.dq(this.mn));
                com.bytedance.sdk.openadsdk.core.ig.ox.kk(this.mn, "embeded_ad", "remove_loading_page", hashMap);
            }
        }

        public void dq(int i, int i2) {
            if (this.f3409d == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("downloadStatus", i);
                jSONObject.put("downloadProcessRate", i2);
                this.f3409d.d("showDownloadStatus", jSONObject);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public void dq(InterfaceC0181dq interfaceC0181dq) {
            SSWebView sSWebView = this.dq;
            if (sSWebView == null || this.f3409d == null) {
                return;
            }
            sSWebView.setVisibility(0);
            this.iw = interfaceC0181dq;
            this.f3409d.dq(interfaceC0181dq.ox());
            this.iw.dq(this.dq);
        }

        public void dq(boolean z) {
            if (dq() == d.STATUS_ERROR) {
                z = true;
            }
            com.bytedance.sdk.openadsdk.q.ia iaVar = this.ox;
            if (iaVar != null) {
                iaVar.dq(z);
            }
        }

        public void ia() {
            j jVar;
            Bitmap d2;
            if (!wp.d().lk() || (jVar = this.mn) == null || this.dq == null || !i.p(jVar) || (d2 = ce.d((com.bytedance.sdk.component.mp.dq) this.dq)) == null) {
                return;
            }
            ce.dq(wp.getContext(), this.mn, "embeded_ad", "playable_show_status", d2, false, 1);
        }

        public void iw() {
            com.bytedance.sdk.openadsdk.core.j.dq(this.s, this.dq);
            com.bytedance.sdk.openadsdk.core.j.dq(this.dq);
            SSWebView sSWebView = this.dq;
            if (sSWebView != null) {
                sSWebView.dq();
            }
            this.dq = null;
            c cVar = this.f3409d;
            if (cVar != null) {
                cVar.u();
            }
            com.bytedance.sdk.openadsdk.q.ia iaVar = this.ox;
            if (iaVar != null) {
                iaVar.u();
            }
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : this.jy.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().kk();
                }
            }
            com.bytedance.sdk.openadsdk.core.ig.p pVar = this.p;
            if (pVar != null) {
                pVar.s();
            }
        }

        public c kk() {
            return this.f3409d;
        }

        public boolean mn() {
            return this.ig;
        }

        public void ox() {
            c cVar = this.f3409d;
            if (cVar != null) {
                cVar.dq((com.bytedance.sdk.openadsdk.core.d.s) null);
                this.f3409d.dq((com.bytedance.sdk.openadsdk.core.fw.p) null);
                this.f3409d.p(false);
                this.f3409d.ox(false);
            }
            InterfaceC0181dq interfaceC0181dq = this.iw;
            if (interfaceC0181dq != null) {
                interfaceC0181dq.p();
                this.iw = null;
            }
            iw();
        }

        public void ox(boolean z) {
            SSWebView sSWebView;
            com.bytedance.sdk.openadsdk.q.ia iaVar = this.ox;
            if (iaVar == null || (sSWebView = this.dq) == null) {
                return;
            }
            if (!z) {
                iaVar.ox(false);
                this.ox.dq(true);
            } else if (sSWebView.getVisibility() == 0) {
                this.ox.ox(true);
            }
            com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = this.q;
            if (pVar != null) {
                if (z) {
                    pVar.d(false);
                } else {
                    pVar.ox();
                }
            }
        }

        public void p() {
            c cVar = this.f3409d;
            if (cVar != null) {
                cVar.ir();
                this.f3409d.iw(false);
            }
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : this.jy.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue();
                }
            }
            ox(false);
            com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = this.q;
            if (pVar != null) {
                pVar.ox();
            }
        }

        public void s() {
            com.bytedance.sdk.openadsdk.core.ig.p pVar = this.p;
            if (pVar != null) {
                pVar.p();
            }
        }
    }

    private s() {
    }

    public static s dq() {
        return dq;
    }

    public dq dq(Context context, j jVar) {
        if (i.p(jVar)) {
            return new dq(context, jVar);
        }
        return null;
    }
}
