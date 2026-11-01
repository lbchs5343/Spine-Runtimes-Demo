package com.bytedance.sdk.component.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SSWebView extends FrameLayout implements com.bytedance.sdk.component.mp.dq {
    private ox bl;
    private i cd;

    /* renamed from: d, reason: collision with root package name */
    private String f2198d;
    private com.bytedance.sdk.component.widget.d.dq dq;

    /* renamed from: e, reason: collision with root package name */
    private JSONObject f2199e;

    /* renamed from: f, reason: collision with root package name */
    private int f2200f;
    private d fw;
    private AtomicBoolean gh;
    private List<String> h;
    private AtomicBoolean i;
    private long ia;
    private float ig;
    private float iw;
    private com.bytedance.sdk.component.widget.dq ji;
    private int jy;
    private JSONObject k;
    private long kk;
    private long kx;
    private AtomicInteger le;
    private long mn;
    private float mp;
    private WebView no;
    private boolean o;
    private JSONObject ox;
    private boolean p;
    private float q;
    private AtomicBoolean r;
    private float s;
    private JSONObject wp;

    public interface d {
        void dq(int i);
    }

    public static class dq extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT < 26) {
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
            }
            if (webView == null) {
                return true;
            }
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.destroy();
            return true;
        }
    }

    public interface ox {
        void dq(boolean z);
    }

    public SSWebView(final Context context) {
        super(ox(context));
        this.s = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.iw = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.mn = 0L;
        this.ia = 0L;
        this.kk = 0L;
        this.o = false;
        this.ig = 20.0f;
        this.q = 50.0f;
        this.gh = new AtomicBoolean();
        this.r = new AtomicBoolean();
        this.i = new AtomicBoolean(true);
        this.le = new AtomicInteger();
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.1
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    SSWebView sSWebView = SSWebView.this;
                    sSWebView.no = sSWebView.dq(SSWebView.ox(context));
                    SSWebView.this.ig();
                } catch (Throwable unused) {
                }
                SSWebView.this.p(SSWebView.ox(context));
                SSWebView.this.kx = System.currentTimeMillis() - currentTimeMillis;
            }
        });
    }

    private void d(int i, boolean z) {
        i iVar = this.cd;
        if (iVar == null) {
            this.cd = new i(getContext(), i, z);
        } else {
            iVar.dq(z);
        }
        this.cd.dq(this.ig);
        this.cd.ox(this.mp);
        this.cd.d(this.q);
        this.cd.dq(this.k);
        this.cd.ox(this.wp);
        this.cd.d(this.f2199e);
        this.cd.dq(this.jy);
        this.cd.d(this.f2200f);
        this.cd.dq(new i.dq() { // from class: com.bytedance.sdk.component.widget.SSWebView.48
            @Override // com.bytedance.sdk.component.utils.i.dq
            public void dq(int i2) {
                if (i2 == 1) {
                    SSWebView.this.dq(1);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    SSWebView.this.dq(2);
                }
            }
        });
        this.cd.ox();
    }

    private static boolean d(View view) {
        try {
            Class<?> loadClass = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (loadClass != null) {
                if (loadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> loadClass2 = view.getClass().getClassLoader().loadClass("androidx.viewpager.widget.ViewPager");
            if (loadClass2 != null) {
                return loadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    private void dq(MotionEvent motionEvent) {
        if (!this.p || this.dq == null) {
            return;
        }
        if ((this.f2198d == null && this.ox == null) || motionEvent == null) {
            return;
        }
        try {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.s = motionEvent.getRawX();
                this.iw = motionEvent.getRawY();
                this.mn = System.currentTimeMillis();
                this.ox = new JSONObject();
                WebView webView = this.no;
                if (webView != null) {
                    webView.setTag(2064056319, Long.valueOf(this.mn));
                    return;
                }
                return;
            }
            if (action == 1 || action == 3) {
                this.ox.put("start_x", String.valueOf(this.s));
                this.ox.put("start_y", String.valueOf(this.iw));
                this.ox.put("offset_x", String.valueOf(motionEvent.getRawX() - this.s));
                this.ox.put("offset_y", String.valueOf(motionEvent.getRawY() - this.iw));
                this.ox.put(abn.EXTRA_URL, String.valueOf(getUrl()));
                this.ox.put(TTDownloadField.TT_TAG, "");
                long currentTimeMillis = System.currentTimeMillis();
                this.ia = currentTimeMillis;
                WebView webView2 = this.no;
                if (webView2 != null) {
                    webView2.setTag(2064056318, Long.valueOf(currentTimeMillis));
                }
                this.ox.put("down_time", this.mn);
                this.ox.put("up_time", this.ia);
                if (com.bytedance.sdk.component.widget.dq.dq.dq().d() != null) {
                    long j = this.kk;
                    long j2 = this.mn;
                    if (j != j2) {
                        this.kk = j2;
                        com.bytedance.sdk.component.widget.dq.dq.dq();
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void dq(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            ia.d().post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ig() {
        if (this.no != null) {
            removeAllViews();
            setBackground(null);
            try {
                this.no.setId(2064056317);
            } catch (Throwable unused) {
            }
            addView(this.no, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    private void mp() {
        try {
            this.no.removeJavascriptInterface("searchBoxJavaBridge_");
            this.no.removeJavascriptInterface("accessibility");
            this.no.removeJavascriptInterface("accessibilityTraversal");
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Context ox(Context context) {
        return Build.VERSION.SDK_INT < 23 ? context.createConfigurationContext(new Configuration()) : context;
    }

    private static boolean ox(View view) {
        try {
            Class<?> loadClass = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (loadClass != null) {
                if (loadClass.isInstance(view)) {
                    return true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            Class<?> loadClass2 = view.getClass().getClassLoader().loadClass("androidx.core.view.ScrollingView");
            if (loadClass2 != null) {
                return loadClass2.isInstance(view);
            }
            return false;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Context context) {
        s(context);
        q();
        mp();
    }

    private void q() {
        try {
            WebSettings settings = this.no.getSettings();
            if (settings != null) {
                settings.setSavePassword(false);
            }
        } catch (Throwable unused) {
        }
    }

    private static void s(Context context) {
    }

    public static void setDataDirectorySuffix(final String str) {
        if (Build.VERSION.SDK_INT >= 28) {
            dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.6
                @Override // java.lang.Runnable
                public void run() {
                    WebView.setDataDirectorySuffix(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setJavaScriptEnabled(String str) {
        WebSettings settings;
        try {
            if (!TextUtils.isEmpty(str) && (settings = this.no.getSettings()) != null) {
                if (Uri.parse(str).getScheme().equals("file")) {
                    settings.setJavaScriptEnabled(false);
                } else {
                    settings.setJavaScriptEnabled(true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void aa_() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.26
            @Override // java.lang.Runnable
            @SuppressLint({"[ByDesign3.3]AvoidContentOrFileExecuteJS"})
            public void run() {
                WebView webView = SSWebView.this.no;
                if (webView != null) {
                    try {
                        WebSettings settings = webView.getSettings();
                        webView.removeAllViews();
                        webView.stopLoading();
                        webView.setWebChromeClient(null);
                        webView.setWebViewClient(null);
                        webView.setDownloadListener(null);
                        settings.setJavaScriptEnabled(true);
                        settings.setAppCacheEnabled(false);
                        settings.setSupportZoom(false);
                        settings.setUseWideViewPort(true);
                        settings.setJavaScriptCanOpenWindowsAutomatically(true);
                        settings.setDomStorageEnabled(true);
                        settings.setBuiltInZoomControls(false);
                        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
                        settings.setLoadWithOverviewMode(false);
                        settings.setUserAgentString("android_client");
                        settings.setDefaultTextEncodingName("UTF-8");
                        settings.setDefaultFontSize(16);
                        if (SSWebView.this.h != null) {
                            Iterator it = SSWebView.this.h.iterator();
                            while (it.hasNext()) {
                                webView.removeJavascriptInterface((String) it.next());
                            }
                            SSWebView.this.h = null;
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public void ab_() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.3
            @Override // java.lang.Runnable
            public void run() {
                if (SSWebView.this.no != null) {
                    SSWebView.this.no.onResume();
                }
            }
        });
    }

    @Override // android.view.View
    public void computeScroll() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.11
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.computeScroll();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void d(final String str) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.21
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.removeJavascriptInterface(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ox oxVar = this.bl;
        if (oxVar != null) {
            oxVar.dq(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewParent dq(View view) {
        ViewParent parent = view.getParent();
        if ((parent instanceof AbsListView) || (parent instanceof ScrollView) || (parent instanceof HorizontalScrollView) || !(parent instanceof View)) {
            return parent;
        }
        View view2 = (View) parent;
        return (d(view2) || ox(view2)) ? parent : dq(view2);
    }

    public WebView dq(Context context) {
        return new WebView(context);
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void dq() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.20
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.destroy();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void dq(int i) {
        d dVar = this.fw;
        if (dVar != null) {
            dVar.dq(i);
        }
    }

    public void dq(int i, boolean z) {
        this.i.set(z);
        this.le.set(i);
        this.r.set(true);
        if (this.gh.get()) {
            d(i, z);
        }
    }

    @Override // com.bytedance.sdk.component.mp.dq
    @SuppressLint({"JavascriptInterface"})
    public void dq(final Object obj, final String str) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.14
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (SSWebView.this.h == null) {
                        SSWebView.this.h = new ArrayList();
                    }
                    SSWebView.this.no.addJavascriptInterface(obj, str);
                    SSWebView.this.h.add(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void dq(final String str) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.49
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.setJavaScriptEnabled(str);
                    SSWebView.this.no.loadUrl(str);
                    if (SSWebView.this.ji != null) {
                        SSWebView.this.ji.dq(str);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void dq(final String str, final ValueCallback<String> valueCallback) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.19
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.evaluateJavascript(str, valueCallback);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void dq(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.clearCache(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public int getContentHeight() {
        try {
            WebView webView = this.no;
            if (webView != null) {
                return webView.getContentHeight();
            }
            return 1;
        } catch (Throwable unused) {
            return 1;
        }
    }

    public com.bytedance.sdk.component.widget.d.dq getMaterialMeta() {
        return this.dq;
    }

    public int getProgress() {
        try {
            WebView webView = this.no;
            if (webView != null) {
                return webView.getProgress();
            }
            return 100;
        } catch (Throwable unused) {
            return 100;
        }
    }

    @Override // android.view.View
    public String getTag() {
        return this.f2198d;
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public String getUrl() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            try {
                WebView webView = this.no;
                if (webView != null) {
                    return webView.getUrl();
                }
            } catch (Throwable unused) {
            }
        }
        com.bytedance.sdk.component.widget.dq dqVar = this.ji;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public String getUserAgentString() {
        try {
            WebView webView = this.no;
            return webView != null ? webView.getSettings().getUserAgentString() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public View getView() {
        return this;
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public WebView getWebView() {
        return this.no;
    }

    public long getWebViewCreateDuration() {
        return this.kx;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void ia() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.18
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.onPause();
                    if (SSWebView.this.bl != null) {
                        SSWebView.this.bl.dq(false);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void kk() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.40
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.clearView();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void mn() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.clearHistory();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void no() {
        this.r.set(false);
        i iVar = this.cd;
        if (iVar != null) {
            iVar.p();
        }
    }

    public void o() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.41
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.pauseTimers();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.gh.set(true);
        if (this.r.get()) {
            d(this.le.get(), this.i.get());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.gh.set(false);
        i iVar = this.cd;
        if (iVar != null) {
            iVar.d();
        }
    }

    @Override // android.view.ViewGroup
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent dq2;
        try {
            dq(motionEvent);
            boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
            if ((motionEvent.getActionMasked() == 2 || motionEvent.getActionMasked() == 0) && this.o && (dq2 = dq((View) this)) != null) {
                dq2.requestDisallowInterceptTouchEvent(true);
            }
            return onInterceptTouchEvent;
        } catch (Throwable unused) {
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        i iVar = this.cd;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    public boolean ox() {
        i iVar = this.cd;
        if (iVar == null) {
            return false;
        }
        return iVar.s();
    }

    public boolean p() {
        try {
            WebView webView = this.no;
            if (webView != null) {
                return webView.canGoBack();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.view.ViewGroup, com.bytedance.sdk.component.mp.dq
    public void removeAllViews() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.42
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.removeAllViews();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void s() {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.goBack();
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setAllowFileAccess(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.39
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setAllowFileAccess(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setAllowFileAccessFromFileURLs(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.44
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setAllowFileAccessFromFileURLs(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setAllowUniversalAccessFromFileURLs(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.45
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setAllowUniversalAccessFromFileURLs(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View
    public void setAlpha(final float f2) {
        super.setAlpha(f2);
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.38
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setAlpha(f2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setAppCacheEnabled(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.22
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setAppCacheEnabled(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View
    public void setBackgroundColor(final int i) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setBackgroundColor(i);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setBlockNetworkImage(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.43
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setBlockNetworkImage(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setBuiltInZoomControls(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.28
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setBuiltInZoomControls(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setCacheMode(final int i) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.17
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setCacheMode(i);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setCalculationMethod(int i) {
        this.jy = i;
    }

    public void setCalculationTwistMethod(int i) {
        this.f2200f = i;
    }

    public void setDatabaseEnabled(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.35
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setDatabaseEnabled(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setDeepShakeValue(float f2) {
        this.mp = f2;
    }

    public void setDefaultFontSize(final int i) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.33
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setDefaultFontSize(i);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setDefaultTextEncodingName(final String str) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.32
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setDefaultTextEncodingName(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setDisplayZoomControls(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.16
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setDisplayZoomControls(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setDomStorageEnabled(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.27
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setDomStorageEnabled(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setDownloadListener(final DownloadListener downloadListener) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setDownloadListener(downloadListener);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setIsPreventTouchEvent(boolean z) {
        this.o = z;
    }

    public void setJavaScriptCanOpenWindowsAutomatically(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.25
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setJavaScriptCanOpenWindowsAutomatically(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setJavaScriptEnabled(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setJavaScriptEnabled(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setLandingPage(boolean z) {
        this.p = z;
    }

    @Override // android.view.View, com.bytedance.sdk.component.mp.dq
    public void setLayerType(final int i, final Paint paint) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.12
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setLayerType(i, paint);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setLayoutAlgorithm(final WebSettings.LayoutAlgorithm layoutAlgorithm) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.29
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setLayoutAlgorithm(layoutAlgorithm);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setLoadWithOverviewMode(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.30
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setLoadWithOverviewMode(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setMaterialMeta(com.bytedance.sdk.component.widget.d.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setMediaPlaybackRequiresUserGesture(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.47
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setMediaPlaybackRequiresUserGesture(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setMixedContentMode(final int i) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.34
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setMixedContentMode(i);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setNetworkAvailable(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.37
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setNetworkAvailable(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setOnShakeListener(d dVar) {
        this.fw = dVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(final int i) {
        super.setOverScrollMode(i);
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setOverScrollMode(i);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setRecycler(boolean z) {
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setSavePassword(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.46
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setSavePassword(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setShakeInteractConf(JSONObject jSONObject) {
        this.wp = jSONObject;
    }

    public void setShakeValue(float f2) {
        this.ig = f2;
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setSupportZoom(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.23
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setSupportZoom(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setTag(String str) {
        this.f2198d = str;
    }

    public void setTouchStateListener(ox oxVar) {
        this.bl = oxVar;
    }

    public void setTwistConfig(JSONObject jSONObject) {
        this.k = jSONObject;
    }

    public void setTwistInteractConf(JSONObject jSONObject) {
        this.f2199e = jSONObject;
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setUseWideViewPort(final boolean z) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.24
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setUseWideViewPort(z);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setUserAgentString(final String str) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.31
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.getSettings().setUserAgentString(str);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // android.view.View
    public void setVisibility(final int i) {
        super.setVisibility(i);
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.36
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setVisibility(i);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setWebChromeClient(final WebChromeClient webChromeClient) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SSWebView.this.no.setWebChromeClient(webChromeClient);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.mp.dq
    public void setWebViewClient(final WebViewClient webViewClient) {
        dq(new Runnable() { // from class: com.bytedance.sdk.component.widget.SSWebView.7
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WebViewClient webViewClient2 = webViewClient;
                    if (webViewClient2 instanceof ox) {
                        SSWebView.this.setTouchStateListener((ox) webViewClient2);
                    } else {
                        SSWebView.this.setTouchStateListener(null);
                    }
                    if (webViewClient2 == 0) {
                        webViewClient2 = new dq();
                    }
                    SSWebView.this.ji = new com.bytedance.sdk.component.widget.dq(webViewClient2);
                    SSWebView.this.no.setWebViewClient(SSWebView.this.ji);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void setWriggleValue(float f2) {
        this.q = f2;
    }
}
