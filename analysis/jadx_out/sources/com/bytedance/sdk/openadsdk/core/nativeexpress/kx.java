package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.u;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.q.ia;
import g.awf;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kx extends com.bytedance.sdk.component.adexpress.s.dq implements ig, mp {
    private com.bytedance.sdk.openadsdk.q.ia cd;

    /* renamed from: f, reason: collision with root package name */
    private int f3241f;
    private com.bytedance.sdk.openadsdk.core.ir.dq fw;
    private mn gh;
    private long i;
    private String ia;
    private com.bytedance.sdk.openadsdk.core.ig.p ig;
    private j.dq jy;
    private j kk;
    private Context mn;
    private final Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> mp;
    private String no;
    private com.bytedance.sdk.openadsdk.iw.dq o;
    private c q;
    private com.bytedance.sdk.component.adexpress.d.kk r;

    public kx(Context context, com.bytedance.sdk.component.adexpress.d.mp mpVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.openadsdk.iw.dq dqVar, j jVar, com.bytedance.sdk.component.adexpress.d.kk kkVar) {
        super(context, mpVar, themeStatusBroadcastReceiver);
        this.mp = awf.ab();
        this.f3241f = 8;
        this.i = -1L;
        this.mn = context;
        this.ia = mpVar.p();
        this.kk = jVar;
        this.o = dqVar;
        this.dq = mpVar.ox();
        String dq = dq(jVar);
        this.no = dq;
        this.r = kkVar;
        dq(u.d(dq));
        themeStatusBroadcastReceiver.dq(this);
        mp();
        ig();
        q();
        jy();
    }

    private void cd() {
        if (this.q == null || ((ViewGroup) this.ox.getParent()) == null) {
            return;
        }
        c cVar = this.q;
        cVar.dq(new h(this.ox, cVar, this.kk));
    }

    private void d(boolean z) {
        if (this.q == null || this.ox == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", z);
            this.q.dq("expressAdShow", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static String dq(j jVar) {
        return com.bytedance.sdk.component.adexpress.dq.d.d.ox((jVar == null || !jVar.ou()) ? null : "v3");
    }

    private void dq(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.mn).dq(false).dq(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            sSWebView.dq(true);
            sSWebView.mn();
            com.bytedance.sdk.openadsdk.core.ir.r.dq(sSWebView, op.f3334d, j.p(this.kk));
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
            com.bytedance.sdk.component.utils.ig.p("WebViewRender", e2.toString());
        }
    }

    public static void dq(Map<String, Object> map, j jVar, NativeExpressView nativeExpressView) {
        try {
            map.put("dynamic_show_type", Integer.valueOf(nativeExpressView.getDynamicShowType()));
            int renderEngineCacheType = nativeExpressView.getRenderEngineCacheType();
            if (jVar != null && jVar.tv() != null && !TextUtils.isEmpty(jVar.tv().no())) {
                map.put("engine_version", jVar.tv().no());
            }
            map.put("engine_type", Integer.valueOf(renderEngineCacheType));
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private boolean fw() {
        return !TextUtils.isEmpty(this.ia) && this.ia.equals("splash_ad");
    }

    private void ox(int i) {
        com.bytedance.sdk.openadsdk.q.ia iaVar = this.cd;
        if (iaVar == null) {
            return;
        }
        if (i == 0) {
            iaVar.ox(true);
            this.cd.dq(false);
        } else {
            iaVar.ox(false);
            this.cd.dq(true);
        }
    }

    private void p(int i) {
        try {
            if (!op.dq() || i != 0) {
                this.i = System.currentTimeMillis();
                return;
            }
            long x = com.bytedance.sdk.openadsdk.core.wp.d().x();
            if (this.i != -1 && System.currentTimeMillis() - this.i > x) {
                SSWebView dq = dq();
                WebView webView = dq.getWebView();
                dq.removeView(webView);
                dq.addView(webView);
            }
            this.i = -1L;
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.mp
    public c W_() {
        return this.q;
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.dq
    public void b_(int i) {
        if (this.q == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.q.dq("themeChange", jSONObject);
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq, com.bytedance.sdk.openadsdk.core.nativeexpress.ig
    public void d(int i) {
        ox(i);
        p(i);
        if (i == this.f3241f) {
            return;
        }
        this.f3241f = i;
        d(i == 0);
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public SSWebView dq() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void dq(float f2, float f3) {
        float f4 = this.mn.getResources().getDisplayMetrics().density;
        float f5 = Resources.getSystem().getDisplayMetrics().density;
        super.dq(ce.d(f4, ce.dq(f5, f2)), ce.d(f4, ce.dq(f5, f3)));
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void dq(boolean z, int i) {
        super.dq(z, i);
        com.bytedance.sdk.openadsdk.iw.dq dqVar = this.o;
        if (dqVar != null) {
            dqVar.dq(z, i);
            this.o.d(false);
        }
    }

    public mn f() {
        return this.gh;
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq, com.bytedance.sdk.openadsdk.core.nativeexpress.ig
    public void ia() {
        super.ia();
        if (this.q == null) {
            return;
        }
        cd();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.q.dq("expressShow", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void ig() {
        if (this.ox == null) {
            return;
        }
        c cVar = new c(this.mn);
        this.q = cVar;
        cVar.d(this.ox).dq(this.kk).d(this.kk.fx()).ox(this.kk.dn()).dq(this.ia).ox(com.bytedance.sdk.openadsdk.core.ir.c.dq(this.ia)).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.kk)).dq(this).mn(this.dq).dq(this.ox).dq(this.o);
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void iw() {
        c cVar = this.q;
        if (cVar == null) {
            return;
        }
        cVar.dq("expressWebviewRecycle", (JSONObject) null);
    }

    public void jy() {
        if (this.ox == null || this.cd != null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.cd.ox oxVar = new com.bytedance.sdk.openadsdk.core.cd.ox();
        com.bytedance.sdk.openadsdk.core.cd.p pVar = new com.bytedance.sdk.openadsdk.core.cd.p();
        com.bytedance.sdk.openadsdk.core.cd.s sVar = new com.bytedance.sdk.openadsdk.core.cd.s(this.q);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.kk.fx());
            jSONObject.put("log_extra", this.kk.dn());
        } catch (Throwable unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        this.cd = oxVar.dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), this.ox, sVar, pVar, hashSet, "embeded_ad".equals(this.ia) ? ia.dq.FEED : ia.dq.OTHER).iw(this.no).s(com.bytedance.sdk.openadsdk.core.mn.dq.mn()).dq(com.bytedance.sdk.openadsdk.core.mn.dq.dq()).s(jSONObject).dq("sdkEdition", com.bytedance.sdk.openadsdk.core.mn.dq.ox()).d(com.bytedance.sdk.openadsdk.core.mn.dq.s()).p(com.bytedance.sdk.openadsdk.core.mn.dq.p()).dq(l.mp(this.kk)).d(l.q(this.kk)).p(false);
        mn mnVar = new mn(this.mn, this.q, this.kk, this.ig, fw(), this.cd, no());
        this.gh = mnVar;
        this.ox.setWebViewClient(mnVar);
        com.bytedance.sdk.component.adexpress.d.kk kkVar = this.r;
        if (kkVar instanceof kk) {
            ((kk) kkVar).dq(this.cd);
        }
        if (!TextUtils.isEmpty(l.d(this.kk))) {
            this.cd.ox(l.d(this.kk));
        }
        Set<String> o = this.cd.o();
        if (this.q == null || o == null || o.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.cd);
        Iterator<String> it = o.iterator();
        while (it.hasNext()) {
            this.q.iw().dq(it.next(), (com.bytedance.sdk.component.dq.s<?, ?>) new com.bytedance.sdk.component.dq.s<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kx.2
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

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void kk() {
        com.bytedance.sdk.openadsdk.core.ir.dq p = com.bytedance.sdk.openadsdk.core.no.ia().p();
        this.fw = p;
        p.dq(this);
    }

    public void mp() {
        if ("feed_video_middle_page".equals(this.ia)) {
            j jVar = this.kk;
            if (jVar == null || jVar.g() == null) {
                return;
            }
            this.s = com.bytedance.sdk.component.adexpress.dq.d.d.d(this.kk.g().d());
            this.jy = this.kk.g();
            return;
        }
        j jVar2 = this.kk;
        if (jVar2 == null || jVar2.tv() == null) {
            return;
        }
        this.s = com.bytedance.sdk.component.adexpress.dq.d.d.dq(this.kk.tv().d());
        this.jy = this.kk.tv();
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void o() {
        super.o();
        com.bytedance.sdk.openadsdk.core.ir.dq dqVar = this.fw;
        if (dqVar != null) {
            dqVar.d(this);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq, com.bytedance.sdk.component.adexpress.d.p
    public int ox() {
        return this.kk.dr();
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void p() {
        if (this.iw.get()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ig;
        if (pVar != null) {
            pVar.s();
        }
        SSWebView sSWebView = this.ox;
        if (sSWebView != null) {
            sSWebView.no();
            this.ox.setOnShakeListener(null);
        }
        c cVar = this.q;
        if (cVar != null) {
            cVar.s();
        }
        super.p();
        this.mp.clear();
        this.q = null;
        com.bytedance.sdk.openadsdk.q.ia iaVar = this.cd;
        if (iaVar == null) {
            return;
        }
        iaVar.u();
    }

    public void q() {
        SSWebView sSWebView = this.ox;
        if (sSWebView == null) {
            return;
        }
        sSWebView.setBackgroundColor(0);
        this.ox.setBackgroundResource(R.color.transparent);
        dq(this.ox);
        if (dq() != null) {
            this.ig = new com.bytedance.sdk.openadsdk.core.ig.p(this.kk, dq()).d(false);
        }
        this.ig.dq(this.o);
        this.ox.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.q, this.ig));
        this.ox.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kx.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                if (!kx.this.mp.containsKey(str)) {
                    com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq(kx.this.mn, str, kx.this.kk, kx.this.ia);
                    kx.this.mp.put(str, dq);
                    dq.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(kx.this.kk), false);
                } else {
                    com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = (com.bytedance.sdk.openadsdk.core.o.d.ox) kx.this.mp.get(str);
                    if (oxVar != null) {
                        oxVar.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(kx.this.kk), false);
                    }
                }
            }
        });
        if ("rewarded_video".equals(this.ia) || "fullscreen_interstitial_ad".equals(this.ia)) {
            ce.dq((com.bytedance.sdk.component.mp.dq) this.ox);
        }
        com.bytedance.sdk.component.adexpress.s.s.dq().dq(this.ox, this.q);
    }

    @Override // com.bytedance.sdk.component.adexpress.s.dq
    public void s() {
        if (dq() == null || dq().getWebView() == null) {
            return;
        }
        try {
            dq().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }
}
