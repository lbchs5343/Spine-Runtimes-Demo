package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.R;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.r;
import com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.h;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.f;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kx;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.q.ia;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class PlayableFeedWebView extends SSWebView implements kk {

    /* renamed from: d, reason: collision with root package name */
    private c f3553d;
    private final Context dq;

    /* renamed from: f, reason: collision with root package name */
    private f f3554f;
    private double fw;
    private com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq ia;
    private final Runnable ig;
    private boolean iw;
    private f jy;
    private boolean kk;
    private TouchWebView mn;
    private com.bytedance.sdk.openadsdk.q.ia mp;
    private final Runnable no;
    private int o;
    private final j ox;
    private com.bytedance.sdk.openadsdk.core.i.d p;
    private com.bytedance.sdk.component.adexpress.d.no q;
    private final ViewGroup s;

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
                ig.d("xeasy", "shouldInterceptRequest error1", th);
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(final WebView webView, String str) {
            try {
                com.bytedance.sdk.component.adexpress.dq.d.dq dq = com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq.dq(webView, this.dq, str, new dq.InterfaceC0175dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.dq.1
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

    public PlayableFeedWebView(com.bytedance.sdk.openadsdk.core.i.d dVar, ViewGroup viewGroup) {
        super(dVar.getContext());
        this.iw = false;
        this.kk = false;
        this.o = 8;
        this.no = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.1
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.d(0);
            }
        };
        this.ig = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.2
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.d(8);
            }
        };
        this.q = new com.bytedance.sdk.component.adexpress.d.no() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.3
            @Override // com.bytedance.sdk.component.adexpress.d.no
            public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar) {
                PlayableFeedWebView.this.ia.d(view, i, oxVar);
            }

            @Override // com.bytedance.sdk.component.adexpress.d.no
            public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, int i2) {
            }

            @Override // com.bytedance.sdk.component.adexpress.d.no
            public void dq(q qVar) {
            }
        };
        this.p = dVar;
        this.dq = dVar.getContext();
        this.ox = dVar.dq();
        this.s = viewGroup;
        setVisibility(4);
        setTag("easy_pfwv");
    }

    private void f() {
        c cVar = new c(this.dq);
        this.f3553d = cVar;
        cVar.d(this).dq(this.ox).d(this.ox.fx()).ox(this.ox.dn()).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.ox)).dq((kk) this).mn(com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false, this.ox)).dq(this.q).dq((SSWebView) this);
    }

    private void fw() {
        setBackgroundColor(0);
        setBackgroundResource(R.color.transparent);
        iw(this);
        if (this.ox != null) {
            Context context = this.dq;
            c cVar = this.f3553d;
            j jVar = this.ox;
            setWebViewClient(new dq(context, cVar, jVar, jVar.fx()));
        }
        com.bytedance.sdk.component.adexpress.s.s.dq().dq(this, this.f3553d);
        setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.f3553d));
    }

    private void iw(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.dq).dq(false).dq(sSWebView);
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            r.dq(sSWebView, op.f3334d, j.p(this.ox));
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
            ig.p("xeasy", e2.toString());
        }
    }

    private void jy() {
        com.bytedance.sdk.openadsdk.core.cd.ox oxVar = new com.bytedance.sdk.openadsdk.core.cd.ox();
        com.bytedance.sdk.openadsdk.core.cd.s sVar = new com.bytedance.sdk.openadsdk.core.cd.s(this.f3553d);
        com.bytedance.sdk.openadsdk.core.cd.p pVar = new com.bytedance.sdk.openadsdk.core.cd.p();
        HashSet hashSet = new HashSet();
        hashSet.add("subscribe_app_ad");
        hashSet.add("adInfo");
        hashSet.add("webview_time_track");
        hashSet.add("download_app_ad");
        com.bytedance.sdk.openadsdk.q.ia p = oxVar.dq(wp.getContext(), this, sVar, pVar, hashSet, ia.dq.OTHER).iw(getUrl()).s(com.bytedance.sdk.openadsdk.core.mn.dq.mn()).dq(com.bytedance.sdk.openadsdk.core.mn.dq.dq()).dq("sdkEdition", com.bytedance.sdk.openadsdk.core.mn.dq.ox()).d(com.bytedance.sdk.openadsdk.core.mn.dq.s()).p(com.bytedance.sdk.openadsdk.core.mn.dq.p()).p(false);
        this.mp = p;
        Set<String> o = p.o();
        if (this.f3553d == null || o == null || o.size() <= 0) {
            return;
        }
        final WeakReference weakReference = new WeakReference(this.mp);
        Iterator<String> it = o.iterator();
        while (it.hasNext()) {
            this.f3553d.iw().dq(it.next(), (com.bytedance.sdk.component.dq.s<?, ?>) new com.bytedance.sdk.component.dq.s<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.4
                @Override // com.bytedance.sdk.component.dq.s
                public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
                    try {
                        com.bytedance.sdk.openadsdk.q.ia iaVar = (com.bytedance.sdk.openadsdk.q.ia) weakReference.get();
                        if (iaVar == null) {
                            return null;
                        }
                        return iaVar.p(dq(), jSONObject);
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        dq(Integer.MIN_VALUE, Integer.MIN_VALUE, this.s.getWidth(), this.s.getHeight());
        f();
        jy();
        fw();
        dq(kx.s(this.ox).dq(this.s.getWidth() <= this.s.getHeight()));
        setExpressVideoListener(this.ia);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void X_() {
        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq dqVar = this.ia;
        if (dqVar != null) {
            dqVar.dq((View) this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void Y_() {
        if (this.p != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("error_code", 1);
            } catch (JSONException e2) {
                ig.d("xeasy", e2.getMessage());
            }
            this.p.dq(false, jSONObject);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void Z_() {
        com.bytedance.sdk.openadsdk.core.i.d dVar = this.p;
        if (dVar != null) {
            dVar.ox();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void d() {
        if (this.f3553d == null || ((ViewGroup) getParent()) == null) {
            return;
        }
        setOnShakeListener(new h(this, this.f3553d, this.ox));
        if (this.p != null) {
            this.p.dq(true, getMaxRectJson());
        }
        d(getVisibility());
    }

    public void d(int i) {
        if (i == this.o) {
            return;
        }
        this.o = i;
        if (this.f3553d == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adVisible", i == 0);
            this.f3553d.dq("expressAdShow", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void d(boolean z) {
        c cVar = this.f3553d;
        if (cVar != null) {
            cVar.jy(z);
        }
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView
    public WebView dq(Context context) {
        TouchWebView touchWebView = new TouchWebView(context);
        this.mn = touchWebView;
        return touchWebView;
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, com.bytedance.sdk.component.mp.dq
    public void dq() {
        this.ia = null;
        no();
        setOnShakeListener(null);
        c cVar = this.f3553d;
        if (cVar != null) {
            cVar.s();
            this.f3553d.dq((SSWebView.d) null);
        }
        this.f3553d = null;
        super.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void dq(final int i, final int i2, final int i3, final int i4) {
        com.bytedance.sdk.openadsdk.h.mn.dq((Runnable) new com.bytedance.sdk.component.o.kk("changeFrame") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.6
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
                int i5 = i;
                if (i5 == Integer.MIN_VALUE && i2 == Integer.MIN_VALUE) {
                    layoutParams.gravity = 17;
                }
                if (i5 != Integer.MIN_VALUE) {
                    PlayableFeedWebView.this.setTranslationX(i5);
                }
                int i6 = i2;
                if (i6 != Integer.MIN_VALUE) {
                    PlayableFeedWebView.this.setTranslationY(i6);
                }
                PlayableFeedWebView.this.setLayoutParams(layoutParams);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void dq(f fVar, double d2) {
        this.jy = fVar;
        this.fw = d2;
        TouchWebView touchWebView = this.mn;
        if (touchWebView != null) {
            touchWebView.dq(this.ox, fVar);
        }
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, com.bytedance.sdk.component.mp.dq
    public void dq(String str) {
        super.dq(str);
    }

    public JSONObject getActualRectJson() {
        return f.dq(this.f3554f);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public JSONObject getContainerInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            int left = this.s.getLeft();
            int top = this.s.getTop();
            jSONArray.put(0, ce.p(getContext(), left));
            jSONArray.put(1, ce.p(getContext(), top));
            jSONObject.put("point", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            int measuredWidth = this.s.getMeasuredWidth();
            int measuredHeight = this.s.getMeasuredHeight();
            jSONArray2.put(0, ce.p(getContext(), measuredWidth));
            jSONArray2.put(1, ce.p(getContext(), measuredHeight));
            jSONObject.put("size", jSONArray2);
            return jSONObject;
        } catch (Exception e2) {
            ig.p("xeasy", e2.getMessage());
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public JSONObject getCreativeVideoViewInfo() {
        return new JSONObject();
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public JSONObject getEstimatedInteractionAreaInfo() {
        com.bytedance.sdk.openadsdk.core.i.d dVar = this.p;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public double getExceedAreaRate() {
        return this.fw;
    }

    public c getJsObject() {
        return this.f3553d;
    }

    public JSONObject getMaxRectJson() {
        return f.dq(this.jy);
    }

    public void ig() {
        this.kk = true;
        c cVar = this.f3553d;
        if (cVar != null) {
            cVar.er();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public boolean iw() {
        return this.kk;
    }

    public void mp() {
        if (this.iw) {
            return;
        }
        this.iw = true;
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView.5
            @Override // java.lang.Runnable
            public void run() {
                PlayableFeedWebView.this.update();
            }
        }, 100L);
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        d(i == 0);
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        d(z);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        removeCallbacks(this.ig);
        removeCallbacks(this.no);
        if (i == 0) {
            postDelayed(this.no, 50L);
        } else {
            postDelayed(this.ig, 50L);
        }
    }

    public void q() {
        d(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk
    public void setEasyPlayInteractionAreaInfo(f fVar) {
        this.f3554f = fVar;
    }

    public void setEasyPlayableListener(com.bytedance.sdk.openadsdk.core.ugeno.component.interact.dq dqVar) {
        this.ia = dqVar;
    }

    public void setExpressVideoListener(com.bytedance.sdk.openadsdk.core.nativeexpress.o oVar) {
        c cVar = this.f3553d;
        if (cVar != null) {
            cVar.dq(oVar);
        }
    }
}
