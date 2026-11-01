package com.bytedance.sdk.openadsdk.core.component.reward.endcard;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.dq.iw;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.d.d;
import com.bytedance.sdk.openadsdk.core.component.reward.endcard.layout.AbstractEndCardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.p.kk;
import com.bytedance.sdk.openadsdk.core.component.reward.view.PlayableEndcardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLpBottomView;
import com.bytedance.sdk.openadsdk.core.ig.p;
import com.bytedance.sdk.openadsdk.core.ig.s;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.q.ia;
import com.bytedance.sdk.openadsdk.q.mn;
import com.bytedance.sdk.openadsdk.widget.PlayableLoadingView;
import g.awf;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq implements e.dq, p.d {
    private static final mn.dq uh = new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.4
        @Override // com.bytedance.sdk.openadsdk.q.mn.dq
        public void dq(String str, String str2, Throwable th) {
            ig.d(str, str2, th);
        }
    };
    long bl;
    private d.dq by;

    /* renamed from: c, reason: collision with root package name */
    private ia f2604c;
    private final com.bytedance.sdk.openadsdk.core.playable.ox ce;
    private com.bytedance.sdk.openadsdk.core.d.d ds;

    /* renamed from: e, reason: collision with root package name */
    protected final AtomicBoolean f2605e;
    private boolean er;
    private final dq gx;
    protected final AtomicBoolean h;
    private final com.bytedance.sdk.openadsdk.core.fw.p ha;
    private com.bytedance.sdk.openadsdk.core.ugeno.p.ox ir;
    private final LinearLayout j;
    final e ji;
    protected final AtomicBoolean kx;
    private final com.bytedance.sdk.openadsdk.core.playable.mn l;
    private final AtomicBoolean n;
    private PlayableEndcardFrameLayout nh;
    private boolean ob;
    private FrameLayout op;
    private com.bytedance.sdk.openadsdk.core.multipro.d.dq t;
    private s u;
    private DownloadListener v;
    private RewardLpBottomView vf;
    private String vw;
    private d.InterfaceC0143d wn;
    private final com.bytedance.sdk.openadsdk.core.fw.s xz;
    private com.bytedance.sdk.openadsdk.core.fw.d yy;

    public interface dq {
        void dq(WebView webView, int i);

        void dq(WebView webView, String str);

        void dq(WebView webView, String str, Bitmap bitmap);
    }

    public ox(TTBaseVideoActivity tTBaseVideoActivity, j jVar, String str, int i, int i2, boolean z, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        super(tTBaseVideoActivity, jVar, str, i, i2, z);
        this.f2605e = new AtomicBoolean(false);
        this.kx = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.ji = new e(Looper.getMainLooper(), this);
        this.ob = true;
        this.bl = 0L;
        this.gx = new dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.1
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.dq
            public void dq(WebView webView, int i3) {
                ox.this.ha.dq(i3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.dq
            public void dq(WebView webView, String str2) {
                if (ox.this.dq.yy() instanceof kk) {
                    return;
                }
                ox.this.ji.removeMessages(101);
                if (ox.this.f2605e.getAndSet(true)) {
                    return;
                }
                if (i.s(ox.this.f2598d) || ox.this.er) {
                    if (ox.this.le()) {
                        ox.this.dq(0);
                    } else if (ox.this.by != null) {
                        ox.this.by.dq();
                    }
                }
                ox.this.ha.d();
                ox oxVar = ox.this;
                com.bytedance.sdk.openadsdk.core.ig.ox.ox(oxVar.f2598d, oxVar.ox, "py_loading_success", (JSONObject) null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.dq
            public void dq(WebView webView, String str2, Bitmap bitmap) {
                if (i.s(ox.this.f2598d)) {
                    if (ox.this.f2598d.rc() == 1 || gh.no(ox.this.f2598d)) {
                        ox.this.ji.sendEmptyMessageDelayed(101, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
                    }
                    if (ox.this.kx.getAndSet(true)) {
                        return;
                    }
                    ox.this.bl = System.currentTimeMillis();
                    ox.this.wn.dq();
                }
            }
        };
        this.xz = new com.bytedance.sdk.openadsdk.core.fw.s() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.5
            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void d() {
                if (uh.no(ox.this.f2598d)) {
                    ox.this.dq.p(3);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void dq() {
                ox.this.ia.kk(true);
                if (gh.no(ox.this.f2598d)) {
                    ox.this.wn.d();
                }
                ox.this.dq.ox(0);
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void dq(int i3, String str2) {
                if (l.ig(ox.this.f2598d)) {
                    ox oxVar = ox.this;
                    oxVar.f2599f = false;
                    oxVar.fw.set(false);
                    ox.this.ob();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.s
            public void ox() {
                if (!gh.dq(ox.this.f2598d) || gh.no(ox.this.f2598d)) {
                    return;
                }
                ox.this.dq.dq(1);
            }
        };
        this.yy = new com.bytedance.sdk.openadsdk.core.fw.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.6
            @Override // com.bytedance.sdk.openadsdk.core.fw.d
            public void dq(boolean z2, int i3, String str2) {
                if (z2) {
                    ox.this.f2599f = true;
                }
            }
        };
        this.ha = new com.bytedance.sdk.openadsdk.core.fw.p() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.3
            @Override // com.bytedance.sdk.openadsdk.core.fw.p
            public void d() {
                if (ox.this.dq.isFinishing()) {
                    return;
                }
                if ((i.s(ox.this.f2598d) || ox.this.er) && l.ia(ox.this.f2598d)) {
                    ox oxVar = ox.this;
                    oxVar.ji.sendMessage(oxVar.d(0));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.p
            public void dq() {
                if (!ox.this.dq.isFinishing() && l.kk(ox.this.f2598d)) {
                    ox.this.ji.removeMessages(102);
                    ox oxVar = ox.this;
                    oxVar.ji.sendMessage(oxVar.d(1));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.fw.p
            public void dq(int i3) {
                if (!l.mn(ox.this.f2598d) || ox.this.dq.isFinishing()) {
                    return;
                }
                ox.this.ce.dq(i3);
            }
        };
        this.mn = abstractEndCardFrameLayout.getPlayableWebView();
        this.op = (FrameLayout) this.dq.findViewById(2114387924);
        this.nh = (PlayableEndcardFrameLayout) this.dq.findViewById(2114387678);
        this.vf = (RewardLpBottomView) this.dq.findViewById(2114387829);
        this.j = (LinearLayout) this.dq.findViewById(2114387725);
        this.ce = new com.bytedance.sdk.openadsdk.core.playable.ox((PlayableLoadingView) this.dq.findViewById(2114387927), jVar);
        this.l = new com.bytedance.sdk.openadsdk.core.playable.mn(this.ox, tTBaseVideoActivity, jVar, i.s(this.f2598d) ? 2 : 1, tTBaseVideoActivity.yy().u(), abstractEndCardFrameLayout.getVideoArea());
        dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Message d(int i) {
        Message obtain = Message.obtain();
        obtain.what = 102;
        obtain.arg1 = i;
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(DownloadListener downloadListener, com.bytedance.sdk.openadsdk.core.d.d dVar) {
        if (this.mn == null) {
            return;
        }
        this.v = null;
        this.ds = null;
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.dq, this.ia, this.f2598d.fx(), this.ig) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.9
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (ox.this.f2604c != null && str != null && !str.contains("about:blank")) {
                    ox.this.f2604c.ia(str);
                }
                super.onPageFinished(webView, str);
                ox.this.gx.dq(webView, str);
                if (ox.this.vf != null) {
                    ox.this.vf.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                ox.this.h.set(true);
                ox.this.gx.dq(webView, str, bitmap);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                ox.this.fw.set(false);
                ox.this.cd = this.ia;
                ox oxVar = ox.this;
                oxVar.mp = i;
                oxVar.q = str;
                if (oxVar.f2604c != null) {
                    ox.this.f2604c.dq(i, str, str2);
                }
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                int errorCode;
                CharSequence description;
                if (webResourceRequest.isForMainFrame()) {
                    ox.this.fw.set(false);
                    ox.this.cd = this.ia;
                }
                ox oxVar = ox.this;
                errorCode = webResourceError.getErrorCode();
                oxVar.mp = errorCode;
                ox oxVar2 = ox.this;
                description = webResourceError.getDescription();
                oxVar2.q = String.valueOf(description);
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(21)
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (ox.this.f2604c != null) {
                    try {
                        ox.this.f2604c.dq(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    } catch (Throwable unused) {
                    }
                }
                if (ox.this.o.equals(String.valueOf(webResourceRequest.getUrl()))) {
                    if (webResourceRequest.isForMainFrame()) {
                        ox.this.fw.set(false);
                        ox.this.cd = this.ia;
                    }
                    if (webResourceResponse != null) {
                        ox.this.mp = webResourceResponse.getStatusCode();
                        ox.this.q = "onReceivedHttpError";
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            @TargetApi(21)
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    String uri = webResourceRequest.getUrl().toString();
                    j jVar = ox.this.f2598d;
                    if (jVar != null && !TextUtils.isEmpty(jVar.rp())) {
                        ox.this.s++;
                        return super.shouldInterceptRequest(webView, uri);
                    }
                    return super.shouldInterceptRequest(webView, uri);
                } catch (Throwable th) {
                    ig.d("PlayableEndCard", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                return super.shouldInterceptRequest(webView, str);
            }
        };
        this.no = pVar;
        this.mn.setWebViewClient(pVar);
        dq(this.mn);
        this.mn.setBackgroundColor(-16777216);
        this.mn.setDisplayZoomControls(false);
        this.mn.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.ia, this.ig) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.10
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.ox, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                ox.this.gx.dq(webView, i);
            }
        });
        this.mn.setDownloadListener(downloadListener);
        this.ce.dq(dVar);
        dq(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z, Map<String, Object> map, View view) {
        SSWebView sSWebView = this.mn;
        if (sSWebView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.p d2 = new com.bytedance.sdk.openadsdk.core.ig.p(this.f2598d, sSWebView).d(true);
        this.ig = d2;
        d2.dq(this);
        this.ig.dq(true);
        this.ig.dq(z ? "reward_endcard" : "fullscreen_endcard");
        c cVar = new c(this.dq);
        this.ia = cVar;
        cVar.d(this.mn).dq(this.f2598d).d(this.f2598d.fx()).ox(this.f2598d.dn()).ox(z ? 7 : 5).dq(this.k).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.f2598d)).dq(this.mn).d(jy.dq(this.f2598d)).dq(this.ox).dq(map).dq(this.wp).dq(view).dq(this.xz);
        if (!i.s(this.f2598d)) {
            this.ia.ia(true);
        }
        this.ia.dq(this.yy);
        this.ia.dq(this.ha);
        j();
        nh();
        c();
    }

    private void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        RewardLpBottomView rewardLpBottomView;
        if (!i.kk(this.f2598d) || (rewardLpBottomView = this.vf) == null) {
            return;
        }
        rewardLpBottomView.setDownLoadClickListener(dVar);
    }

    private void dq(final Map<String, Object> map, final View view) {
        s sVar = new s(this.f2598d);
        this.u = sVar;
        sVar.dq(true);
        this.u.dq();
        this.op.setVisibility(0);
        TTBaseVideoActivity tTBaseVideoActivity = this.dq;
        FrameLayout frameLayout = this.op;
        s sVar2 = this.u;
        j jVar = this.f2598d;
        String str = this.ox;
        com.bytedance.sdk.openadsdk.core.ugeno.p.ox oxVar = new com.bytedance.sdk.openadsdk.core.ugeno.p.ox(tTBaseVideoActivity, frameLayout, sVar2, jVar, str, com.bytedance.sdk.openadsdk.core.ir.c.dq(str), this.t);
        this.ir = oxVar;
        oxVar.dq();
        this.ir.dq(new com.bytedance.sdk.openadsdk.core.ugeno.s.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.7
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(int i) {
                ox.this.ir = null;
                com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ox.this.op != null) {
                            ox.this.op.setVisibility(8);
                        }
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        ox oxVar2 = ox.this;
                        oxVar2.jy = false;
                        oxVar2.d(oxVar2.p, map, view);
                        ox oxVar3 = ox.this;
                        oxVar3.d(oxVar3.v, ox.this.ds);
                        ox.this.ji();
                    }
                });
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(View view2) {
                ox.this.wn();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia(boolean z) {
        this.dq.p(z);
        c cVar = this.ia;
        if (cVar != null) {
            cVar.q(z);
        }
    }

    private void j() {
        RewardLpBottomView rewardLpBottomView;
        if (!i.kk(this.f2598d)) {
            this.vf = null;
            return;
        }
        if (gh.p(this.f2598d)) {
            this.vf = null;
            return;
        }
        if (!gh.s(this.f2598d)) {
            this.vf = null;
        } else {
            if (this.nh == null || (rewardLpBottomView = this.vf) == null) {
                return;
            }
            rewardLpBottomView.dq(this.f2598d, this.ox);
            this.nh.dq(new PlayableEndcardFrameLayout.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.8
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.PlayableEndcardFrameLayout.dq
                public void dq() {
                    if (ox.this.vf != null) {
                        ox.this.vf.d();
                    }
                    TTBaseVideoActivity tTBaseVideoActivity = ox.this.dq;
                    if (tTBaseVideoActivity != null) {
                        tTBaseVideoActivity.o(1);
                    }
                }
            });
        }
    }

    private void l() {
        if (this.dq.uh() == null) {
            return;
        }
        long fw = !this.dq.uh().dq() ? this.dq.uh().fw() : 0L;
        boolean q = this.dq.uh().q();
        if (!(this.dq.yy() instanceof kk)) {
            ia iaVar = this.f2604c;
            q = iaVar != null && iaVar.mn();
        }
        this.l.dq(fw, q);
    }

    private void nh() {
        this.o = i.dq(this.f2598d);
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
            return;
        }
        this.o += "?height=" + this.i + "&width=" + this.r + "&aspect_ratio=" + es;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ob() {
        this.ji.sendMessage(d(3));
        d.dq dqVar = this.by;
        if (dqVar != null) {
            dqVar.dq();
        }
        this.dq.ox(0);
    }

    private void vf() {
        j jVar;
        Bitmap d2;
        if (Looper.getMainLooper() == Looper.myLooper() && wp.d().lk() && (jVar = this.f2598d) != null && this.mn != null && l.dq(jVar) && (d2 = ce.d((com.bytedance.sdk.component.mp.dq) this.mn)) != null) {
            ce.dq(wp.getContext(), this.f2598d, this.ox, "playable_show_status", d2, false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wn() {
        this.f2599f = true;
        this.h.set(true);
        this.ji.sendMessage(d(4));
        TTBaseVideoActivity tTBaseVideoActivity = this.dq;
        if (tTBaseVideoActivity != null) {
            tTBaseVideoActivity.mp(8);
        }
        d.InterfaceC0143d interfaceC0143d = this.wn;
        if (interfaceC0143d != null) {
            interfaceC0143d.dq();
        }
    }

    public void bl() {
        dq(true);
        ia iaVar = this.f2604c;
        if (iaVar != null) {
            iaVar.ox(true);
        }
        ox(true);
        dq(false, true);
        com.bytedance.sdk.openadsdk.core.widget.dq.p pVar = this.no;
        if (pVar != null) {
            pVar.d(false);
        }
    }

    public void c() {
        if (this.mn == null || this.f2604c != null) {
            return;
        }
        if (no.ia().c()) {
            mn.dq(uh);
        }
        com.bytedance.sdk.openadsdk.core.cd.ox oxVar = new com.bytedance.sdk.openadsdk.core.cd.ox();
        p pVar = new p(this.f2598d, this.ox, this.xz);
        com.bytedance.sdk.openadsdk.core.cd.s sVar = new com.bytedance.sdk.openadsdk.core.cd.s(this.ia);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.f2598d.fx());
            jSONObject.put("log_extra", this.f2598d.dn());
        } catch (Throwable unused) {
        }
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        this.f2604c = oxVar.dq(wp.getContext(), this.mn, sVar, pVar, hashSet, ia.dq.LAND_PAGE).iw(this.o).s(com.bytedance.sdk.openadsdk.core.mn.dq.mn()).dq(com.bytedance.sdk.openadsdk.core.mn.dq.dq()).s(jSONObject).dq("sdkEdition", com.bytedance.sdk.openadsdk.core.mn.dq.ox()).d(com.bytedance.sdk.openadsdk.core.mn.dq.s()).p(com.bytedance.sdk.openadsdk.core.mn.dq.p()).dq(l.mp(this.f2598d)).d(l.q(this.f2598d)).p(false).dq(false);
        if (!TextUtils.isEmpty(l.d(this.f2598d))) {
            this.f2604c.ox(l.d(this.f2598d));
        }
        Set<String> o = this.f2604c.o();
        if (this.ia == null || o == null || o.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.f2604c);
        Iterator<String> it = o.iterator();
        while (it.hasNext()) {
            this.ia.iw().dq(it.next(), (com.bytedance.sdk.component.dq.s<?, ?>) new com.bytedance.sdk.component.dq.s<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.2
                @Override // com.bytedance.sdk.component.dq.s
                public JSONObject dq(JSONObject jSONObject2, iw iwVar) throws Exception {
                    try {
                        ia iaVar = (ia) weakReference.get();
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

    public void ce() {
        if (l.mn(this.f2598d)) {
            this.ce.ox();
            this.ce.dq(this.f2598d, this.ox);
            if (l.kk(this.f2598d)) {
                this.ji.sendMessageDelayed(d(2), ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
            }
            iw();
        } else {
            dq(0);
            this.ce.d();
            this.dq.vw();
        }
        s(true);
    }

    public void d(int i, int i2) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("skip_remain_time", i);
            if (this.p) {
                jSONObject.put("reward_remain_time", i2);
            }
            this.ia.dq("reward_button_status", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void d(boolean z) {
        ia iaVar = this.f2604c;
        if (iaVar != null) {
            iaVar.dq(z);
        }
        this.l.dq(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(int i) {
        super.dq(i);
        if (!this.ce.p()) {
            bl();
        }
        s(true);
        l();
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        if (i == 101) {
            ob();
            return;
        }
        if (i != 102) {
            return;
        }
        if (!this.n.getAndSet(true)) {
            this.ce.dq(this.ox, message.arg1, pa.q(this.f2598d) != null ? i.dq(this.f2598d) : null);
            this.ce.d(this.f2598d, this.ox);
        }
        this.ji.removeMessages(102);
        this.wn.ox().dq(true);
        this.dq.vw();
        this.ce.d();
        int i2 = message.arg1;
        if (i2 == 2) {
            d.dq dqVar = this.by;
            if (dqVar != null) {
                dqVar.dq();
                return;
            }
            return;
        }
        if (i2 == 0 || i2 == 1) {
            bl();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(DownloadListener downloadListener, com.bytedance.sdk.openadsdk.core.d.d dVar) {
        this.v = downloadListener;
        this.ds = dVar;
        d(downloadListener, dVar);
    }

    public void dq(d.InterfaceC0143d interfaceC0143d) {
        this.wn = interfaceC0143d;
    }

    public void dq(d.dq dqVar) {
        this.by = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar) {
        this.t = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ig.p.d
    public void dq(String str) {
        if (TextUtils.isEmpty(this.vw)) {
            this.vw = str;
        }
        if (TextUtils.equals(this.vw, str)) {
            return;
        }
        this.vw = str;
        this.dq.o(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.ig.mn mnVar = this.kk;
        if (mnVar != null) {
            mnVar.o();
        }
        if (map != null && i.s(this.f2598d)) {
            map.put(MediationConstant.EXTRA_DURATION, Long.valueOf(n()));
        }
        vf();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void dq(boolean z, Map<String, Object> map, View view) {
        if (!com.bytedance.sdk.openadsdk.core.ir.c.r(this.f2598d) || this.op == null) {
            d(z, map, view);
        } else {
            dq(map, view);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void e() {
        super.e();
        this.l.ox();
        com.bytedance.sdk.openadsdk.core.ugeno.p.ox oxVar = this.ir;
        if (oxVar != null) {
            oxVar.ox();
        }
    }

    public void er() {
        this.ce.d();
    }

    public boolean h() {
        return this.f2605e.get();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void ig() {
        super.ig();
        if (this.f2604c != null && ce.p(this.mn)) {
            this.f2604c.ox(true);
        }
        com.bytedance.sdk.openadsdk.core.ugeno.p.ox oxVar = this.ir;
        if (oxVar != null) {
            oxVar.ox();
        }
        s sVar = this.u;
        if (sVar != null) {
            sVar.ox();
        }
    }

    public c ir() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void iw() {
        SSWebView sSWebView = this.mn;
        if (sSWebView != null && sSWebView.getVisibility() == 0) {
            this.wn.ox().dq(true);
        }
        super.iw();
        this.l.dq();
        s(false);
        ia iaVar = this.f2604c;
        if (iaVar != null) {
            iaVar.ox(false);
        }
        dq(true, false);
    }

    public void iw(boolean z) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        try {
            this.ia.mn(z);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isReward", z);
            this.ia.dq("isVerifyReward", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void ji() {
        SSWebView sSWebView;
        if (this.jy || (sSWebView = this.mn) == null) {
            return;
        }
        sSWebView.dq(this.o);
        this.jy = true;
        ia iaVar = this.f2604c;
        if (iaVar != null) {
            iaVar.mn(this.o);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void jy() {
        super.jy();
        ia iaVar = this.f2604c;
        if (iaVar != null) {
            iaVar.u();
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.ig;
        if (pVar != null) {
            pVar.dq((p.d) null);
        }
        this.l.p();
        com.bytedance.sdk.openadsdk.core.ugeno.p.ox oxVar = this.ir;
        if (oxVar != null) {
            oxVar.p();
        }
        s sVar = this.u;
        if (sVar != null) {
            sVar.p();
        }
    }

    public void mn(boolean z) {
        if (this.ia == null || this.dq.isFinishing()) {
            return;
        }
        this.er = z;
        this.ia.no(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void mp() {
        super.mp();
        ia iaVar = this.f2604c;
        if (iaVar != null) {
            iaVar.ox(false);
        }
        com.bytedance.sdk.openadsdk.core.ugeno.p.ox oxVar = this.ir;
        if (oxVar != null) {
            oxVar.d();
        }
    }

    public long n() {
        return System.currentTimeMillis() - this.bl;
    }

    public boolean op() {
        c cVar = this.ia;
        if (cVar != null) {
            return cVar.mp();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void p(boolean z) {
        super.p(z);
        if (!z) {
            this.l.d();
        }
        com.bytedance.sdk.openadsdk.core.ugeno.p.ox oxVar = this.ir;
        if (oxVar != null) {
            oxVar.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public void q() {
        super.q();
        s sVar = this.u;
        if (sVar != null) {
            sVar.dq(0);
        }
    }

    public void s(boolean z) {
        LinearLayout linearLayout = this.j;
        if (linearLayout == null) {
            return;
        }
        if (!z) {
            ce.dq((View) linearLayout, 8);
            ia(true);
        } else if (this.ob) {
            jy.dq(this.f2598d, (ViewGroup) linearLayout, (Context) this.dq, this.ox, true, new com.bytedance.sdk.openadsdk.core.d.iw() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.endcard.ox.11
                @Override // com.bytedance.sdk.openadsdk.core.d.iw
                public void d() {
                    ox.this.ob = false;
                    ox.this.ia(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.d.iw
                public void dq() {
                    ox.this.ia(true);
                }
            }, false);
        } else {
            ce.dq((View) linearLayout, 0);
            ia(false);
        }
    }

    public boolean u() {
        return !this.h.get();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.endcard.dq
    public String wp() {
        return "playable";
    }
}
