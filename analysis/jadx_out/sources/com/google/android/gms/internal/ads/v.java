package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzbbs;
import g.acw;
import g.agd;
import g.aku;
import g.akx;
import g.aqj;
import g.bdj;
import g.bff;
import g.cbv;
import g.cr;
import g.cwg;
import g.dcy;
import g.edt;
import g.esy;
import g.etg;
import g.evp;
import g.fal;
import g.fjn;
import g.fwk;
import g.gfb;
import g.gfo;
import g.gvy;
import g.he;
import g.mx;
import g.ti;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.util.Features;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class v extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcfk {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3986a = 0;
    public zzbfk aa;

    /* renamed from: ab, reason: collision with root package name */
    public final akx f3987ab;
    public int ac;
    public zzche ad;
    public final zzchd ae;
    public zzbcz af;
    public final String ag;
    public Boolean ah;
    public final WindowManager ai;
    public boolean aj;
    public boolean ak;
    public final float al;
    public final zzavc am;
    public zzcfs an;
    public boolean ao;
    public int ap;
    public zzcgm aq;
    public int ar;
    public cwg as;
    public int at;
    public int au;
    public zzeeu av;
    public boolean aw;
    public fjn ax;
    public int ay;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f3988b;

    /* renamed from: c, reason: collision with root package name */
    public int f3989c;

    /* renamed from: d, reason: collision with root package name */
    public final cr f3990d;

    /* renamed from: e, reason: collision with root package name */
    public zzeew f3991e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3992f;

    /* renamed from: g, reason: collision with root package name */
    public HashMap f3993g;
    public final zzbda h;
    public final gfo i;
    public boolean j;
    public boolean k;
    public final zzbbl l;
    public cwg m;
    public zzbcz n;
    public zzbfm o;
    public zzfet p;
    public boolean q;
    public boolean r;
    public final zzffs s;
    public boolean t;
    public final zzbcz u;
    public zzfew v;
    public boolean w;
    public zzazz x;
    public final String y;
    public final zzbdu z;

    public v(zzchd zzchdVar, zzche zzcheVar, String str, boolean z, zzavc zzavcVar, zzbdu zzbduVar, akx akxVar, fjn fjnVar, gfo gfoVar, zzbbl zzbblVar, zzfet zzfetVar, zzfew zzfewVar, zzffs zzffsVar) {
        super(zzchdVar);
        zzfew zzfewVar2;
        boolean z2 = false;
        this.t = false;
        this.aw = false;
        this.j = true;
        this.ag = "";
        this.f3989c = -1;
        this.ar = -1;
        this.ac = -1;
        this.at = -1;
        this.ae = zzchdVar;
        this.ad = zzcheVar;
        this.y = str;
        this.k = z;
        this.am = zzavcVar;
        this.s = zzffsVar;
        this.z = zzbduVar;
        this.f3987ab = akxVar;
        this.ax = fjnVar;
        this.i = gfoVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.ai = windowManager;
        esy esyVar = ti.f20033a.z;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f3988b = displayMetrics;
        this.al = displayMetrics.density;
        this.l = zzbblVar;
        this.p = zzfetVar;
        this.v = zzfewVar;
        this.f3990d = new cr(zzchdVar.zza(), this, this);
        this.ak = false;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e2) {
            agd.f("Unable to enable Javascript.", e2);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        zzbce zzbceVar = zzbcn.zzlm;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        ti tiVar = ti.f20033a;
        settings.setUserAgentString(tiVar.z.at(zzchdVar, akxVar.afmaVersion));
        Context context = getContext();
        acw.p(context, new fal(7, settings, context, z2));
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        bb();
        addJavascriptInterface(new zzcgq(this, new zzcgp(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbda zzbdaVar = this.h;
        if (zzbdaVar != null) {
            zzbdc zza = zzbdaVar.zza();
            zzbcs zzg = tiVar.f20034ab.zzg();
            if (zzg != null) {
                zzg.zzf(zza);
            }
        }
        zzbda zzbdaVar2 = new zzbda(new zzbdc(true, "make_wv", this.y));
        this.h = zzbdaVar2;
        Context context2 = null;
        zzbdaVar2.zza().zzc(null);
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzbW)).booleanValue() && (zzfewVar2 = this.v) != null && zzfewVar2.zzb != null) {
            zzbdaVar2.zza().zzd("gqi", this.v.zzb);
        }
        zzbdaVar2.zza();
        zzbcz zzf = zzbdc.zzf();
        this.u = zzf;
        zzbdaVar2.zzb("native:view_create", zzf);
        this.n = null;
        this.af = null;
        if (fwk.f17519b == null) {
            fwk.f17519b = new fwk();
        }
        fwk fwkVar = fwk.f17519b;
        fwkVar.getClass();
        agd.e("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(zzchdVar);
        if (!defaultUserAgent.equals(fwkVar.f17520c)) {
            AtomicBoolean atomicBoolean = evp.f16244c;
            try {
                context2 = zzchdVar.createPackageContext("com.google.android.gms", 3);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (context2 == null) {
                zzchdVar.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(zzchdVar)).apply();
            }
            fwkVar.f17520c = defaultUserAgent;
        }
        agd.e("User agent is updated.");
        tiVar.f20034ab.zzt();
    }

    public final synchronized void ba(String str) {
        if (zzaE()) {
            agd.b("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    public final synchronized void bb() {
        zzfet zzfetVar = this.p;
        if (zzfetVar != null && zzfetVar.zzam) {
            agd.c("Disabling hardware acceleration on an overlay.");
            bk();
            return;
        }
        if (!this.k && !this.ad.zzi()) {
            agd.c("Enabling hardware acceleration on an AdView.");
            bc();
            return;
        }
        agd.c("Enabling hardware acceleration on an overlay.");
        bc();
    }

    public final synchronized void bc() {
        try {
            if (this.ao) {
                setLayerType(0, null);
            }
            this.ao = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void bd(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", true != z ? "0" : "1");
        zzd("onAdVisibilityChanged", hashMap);
    }

    public final void be(String str) {
        if (bh() == null) {
            synchronized (this) {
                Boolean zzl = ti.f20033a.f20034ab.zzl();
                this.ah = zzl;
                if (zzl == null) {
                    try {
                        evaluateJavascript("(function(){})()", null);
                        bl(Boolean.TRUE);
                    } catch (IllegalStateException unused) {
                        bl(Boolean.FALSE);
                    }
                }
            }
        }
        if (bh().booleanValue()) {
            bo(str);
        } else {
            ba("javascript:".concat(str));
        }
    }

    public final synchronized void bf() {
        if (this.q) {
            return;
        }
        this.q = true;
        ti.f20033a.f20034ab.zzr();
    }

    public final /* synthetic */ void bg(String str, ValueCallback valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    public final synchronized Boolean bh() {
        return this.ah;
    }

    public final /* synthetic */ void bi(String str) {
        super.loadUrl(str);
    }

    public final synchronized void bj() {
        final String str = "about:blank";
        try {
            esy.f16117a.post(new Runnable(str) { // from class: com.google.android.gms.internal.ads.zzcge
                public final /* synthetic */ String zzb = "about:blank";

                @Override // java.lang.Runnable
                public final void run() {
                    v.this.bp();
                }
            });
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzw(th, "AdWebViewImpl.loadUrlUnsafe");
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    public final synchronized void bk() {
        try {
            if (!this.ao) {
                setLayerType(1, null);
            }
            this.ao = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void bl(Boolean bool) {
        synchronized (this) {
            this.ah = bool;
        }
        ti.f20033a.f20034ab.zzy(bool);
    }

    public final boolean bm() {
        int i;
        int i2;
        if (this.an.zzS() || this.an.zzT()) {
            mx mxVar = cbv.f12612a.f12615d;
            DisplayMetrics displayMetrics = this.f3988b;
            int round = Math.round(displayMetrics.widthPixels / displayMetrics.density);
            int round2 = Math.round(displayMetrics.heightPixels / displayMetrics.density);
            Activity zza = this.ae.zza();
            if (zza == null || zza.getWindow() == null) {
                i = round;
                i2 = round2;
            } else {
                esy esyVar = ti.f20033a.z;
                int[] ae = esy.ae(zza);
                i = Math.round(ae[0] / displayMetrics.density);
                i2 = Math.round(ae[1] / displayMetrics.density);
            }
            int i3 = this.ar;
            if (i3 != round || this.f3989c != round2 || this.ac != i || this.at != i2) {
                boolean z = (i3 == round && this.f3989c == round2) ? false : true;
                this.ar = round;
                this.f3989c = round2;
                this.ac = i;
                this.at = i2;
                new zzbsk(this, "").zzj(round, round2, i, i2, displayMetrics.density, this.ai.getDefaultDisplay().getRotation());
                return z;
            }
        }
        return false;
    }

    public final synchronized void bn() {
        try {
            HashMap hashMap = this.f3993g;
            if (hashMap != null) {
                Iterator it = hashMap.values().iterator();
                while (it.hasNext()) {
                    ((zzcdr) it.next()).release();
                }
            }
            this.f3993g = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void bo(String str) {
        if (zzaE()) {
            agd.b("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    public final /* synthetic */ void bp() {
        super.loadUrl("about:blank");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0041 A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:3:0x0001, B:6:0x0017, B:9:0x0046, B:11:0x004a, B:12:0x0057, B:17:0x0070, B:19:0x008f, B:21:0x0097, B:23:0x009d, B:26:0x00a7, B:29:0x00b6, B:32:0x0024, B:34:0x0028, B:39:0x0041, B:40:0x0044, B:41:0x0033, B:43:0x0039, B:44:0x0006, B:46:0x0014), top: B:2:0x0001 }] */
    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void destroy() {
        View decorView;
        ViewTreeObserver viewTreeObserver;
        try {
            zzbda zzbdaVar = this.h;
            if (zzbdaVar != null) {
                zzbdc zza = zzbdaVar.zza();
                zzbcs zzg = ti.f20033a.f20034ab.zzg();
                if (zzg != null) {
                    zzg.zzf(zza);
                }
            }
            cr crVar = this.f3990d;
            crVar.f13355b = false;
            Activity activity = (Activity) crVar.f13356c;
            if (activity != null && crVar.f13359f) {
                v vVar = (v) crVar.f13358e;
                Window window = activity.getWindow();
                if (window != null && (decorView = window.getDecorView()) != null) {
                    viewTreeObserver = decorView.getViewTreeObserver();
                    if (viewTreeObserver != null) {
                        viewTreeObserver.removeOnGlobalLayoutListener(vVar);
                    }
                    crVar.f13359f = false;
                }
                viewTreeObserver = null;
                if (viewTreeObserver != null) {
                }
                crVar.f13359f = false;
            }
            cwg cwgVar = this.m;
            if (cwgVar != null) {
                cwgVar.zzb();
                this.m.zzm();
                this.m = null;
            }
            this.f3991e = null;
            this.av = null;
            this.an.zzh();
            this.x = null;
            this.ax = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.w) {
                return;
            }
            ti.f20033a.x.zzd(this);
            bn();
            this.w = true;
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzku)).booleanValue()) {
                agd.e("Destroying the WebView immediately...");
                zzX();
                return;
            }
            Activity zza2 = this.ae.zza();
            if (zza2 != null && zza2.isDestroyed()) {
                agd.e("Destroying the WebView immediately...");
                zzX();
            } else {
                agd.e("Initiating WebView self destruct sequence in 3...");
                agd.e("Loading blank page in WebView, 2...");
                bj();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        if (zzaE()) {
            agd.g("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkv)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
            super.evaluateJavascript(str, valueCallback);
        } else {
            zzcaj.zze.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgd
                @Override // java.lang.Runnable
                public final void run() {
                    v.this.bg(str, valueCallback);
                }
            });
        }
    }

    public final void finalize() {
        try {
            synchronized (this) {
                try {
                    if (!this.w) {
                        this.an.zzh();
                        ti.f20033a.x.zzd(this);
                        bn();
                        bf();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    public final synchronized void loadData(String str, String str2, String str3) {
        if (zzaE()) {
            agd.b("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        try {
            try {
                if (zzaE()) {
                    agd.b("#004 The webview is destroyed. Ignoring action.");
                } else {
                    super.loadDataWithBaseURL(str, str2, str3, str4, str5);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    public final synchronized void loadUrl(final String str) {
        if (zzaE()) {
            agd.b("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgg
                @Override // java.lang.Runnable
                public final void run() {
                    v.this.bi(str);
                }
            });
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzw(th, "AdWebViewImpl.loadUrl");
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, g.evo
    public final void onAdClicked() {
        zzcfs zzcfsVar = this.an;
        if (zzcfsVar != null) {
            zzcfsVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            boolean z = true;
            if (!zzaE()) {
                cr crVar = this.f3990d;
                crVar.f13354a = true;
                if (crVar.f13355b) {
                    crVar.g();
                }
            }
            if (this.ak) {
                onResume();
                this.ak = false;
            }
            boolean z2 = this.aj;
            zzcfs zzcfsVar = this.an;
            if (zzcfsVar == null || !zzcfsVar.zzT()) {
                z = z2;
            } else {
                if (!this.r) {
                    this.an.zza();
                    this.an.zzb();
                    this.r = true;
                }
                bm();
            }
            bd(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030 A[Catch: all -> 0x0036, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:5:0x0008, B:8:0x0013, B:10:0x0017, B:15:0x0030, B:16:0x0033, B:17:0x0022, B:19:0x0028, B:20:0x0038, B:22:0x003f, B:24:0x0043, B:26:0x0049, B:28:0x004f, B:30:0x0059, B:31:0x0065), top: B:2:0x0001 }] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onDetachedFromWindow() {
        zzcfs zzcfsVar;
        View decorView;
        ViewTreeObserver viewTreeObserver;
        synchronized (this) {
            try {
                if (!zzaE()) {
                    cr crVar = this.f3990d;
                    crVar.f13354a = false;
                    Activity activity = (Activity) crVar.f13356c;
                    if (activity != null && crVar.f13359f) {
                        v vVar = (v) crVar.f13358e;
                        Window window = activity.getWindow();
                        if (window != null && (decorView = window.getDecorView()) != null) {
                            viewTreeObserver = decorView.getViewTreeObserver();
                            if (viewTreeObserver != null) {
                                viewTreeObserver.removeOnGlobalLayoutListener(vVar);
                            }
                            crVar.f13359f = false;
                        }
                        viewTreeObserver = null;
                        if (viewTreeObserver != null) {
                        }
                        crVar.f13359f = false;
                    }
                }
                super.onDetachedFromWindow();
                if (this.r && (zzcfsVar = this.an) != null && zzcfsVar.zzT() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                    this.an.zza();
                    this.an.zzb();
                    this.r = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        bd(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkJ)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            esy esyVar = ti.f20033a.z;
            esy.ad(getContext(), intent);
        } catch (ActivityNotFoundException e2) {
            agd.c("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
            ti.f20033a.f20034ab.zzw(e2, "AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)));
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (zzaE()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean bm = bm();
        cwg zzL = zzL();
        if (zzL != null && bm && zzL.k) {
            zzL.k = false;
            zzL.j.zzaa();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c0 A[Catch: all -> 0x000f, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x0012, B:12:0x0018, B:14:0x001c, B:17:0x0026, B:19:0x002e, B:22:0x0033, B:24:0x003b, B:26:0x004d, B:29:0x0052, B:31:0x0059, B:34:0x0063, B:37:0x0068, B:40:0x007a, B:41:0x0093, B:45:0x0082, B:48:0x0087, B:52:0x00a0, B:54:0x00a8, B:56:0x00ba, B:59:0x00bf, B:61:0x00db, B:62:0x00e4, B:65:0x00e0, B:66:0x00e9, B:68:0x00f1, B:71:0x00fc, B:78:0x0122, B:80:0x0129, B:83:0x0130, B:85:0x0142, B:87:0x0150, B:90:0x015d, B:94:0x0162, B:96:0x01a8, B:97:0x01ac, B:99:0x01b3, B:104:0x01c0, B:106:0x01c6, B:107:0x01c9, B:109:0x01cd, B:110:0x01d6, B:116:0x01e1), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0142 A[Catch: all -> 0x000f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x0012, B:12:0x0018, B:14:0x001c, B:17:0x0026, B:19:0x002e, B:22:0x0033, B:24:0x003b, B:26:0x004d, B:29:0x0052, B:31:0x0059, B:34:0x0063, B:37:0x0068, B:40:0x007a, B:41:0x0093, B:45:0x0082, B:48:0x0087, B:52:0x00a0, B:54:0x00a8, B:56:0x00ba, B:59:0x00bf, B:61:0x00db, B:62:0x00e4, B:65:0x00e0, B:66:0x00e9, B:68:0x00f1, B:71:0x00fc, B:78:0x0122, B:80:0x0129, B:83:0x0130, B:85:0x0142, B:87:0x0150, B:90:0x015d, B:94:0x0162, B:96:0x01a8, B:97:0x01ac, B:99:0x01b3, B:104:0x01c0, B:106:0x01c6, B:107:0x01c9, B:109:0x01cd, B:110:0x01d6, B:116:0x01e1), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0162 A[Catch: all -> 0x000f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x0012, B:12:0x0018, B:14:0x001c, B:17:0x0026, B:19:0x002e, B:22:0x0033, B:24:0x003b, B:26:0x004d, B:29:0x0052, B:31:0x0059, B:34:0x0063, B:37:0x0068, B:40:0x007a, B:41:0x0093, B:45:0x0082, B:48:0x0087, B:52:0x00a0, B:54:0x00a8, B:56:0x00ba, B:59:0x00bf, B:61:0x00db, B:62:0x00e4, B:65:0x00e0, B:66:0x00e9, B:68:0x00f1, B:71:0x00fc, B:78:0x0122, B:80:0x0129, B:83:0x0130, B:85:0x0142, B:87:0x0150, B:90:0x015d, B:94:0x0162, B:96:0x01a8, B:97:0x01ac, B:99:0x01b3, B:104:0x01c0, B:106:0x01c6, B:107:0x01c9, B:109:0x01cd, B:110:0x01d6, B:116:0x01e1), top: B:3:0x0003 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6 = 0;
        if (zzaE()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.k && !this.ad.zzf()) {
            if (this.ad.zzh()) {
                super.onMeasure(i, i2);
                return;
            }
            if (this.ad.zzj()) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdU)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzcgm zzq = zzq();
                float zze = zzq != null ? zzq.zze() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (zze == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    super.onMeasure(i, i2);
                    return;
                }
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                float f2 = size2 * zze;
                int i7 = (int) (size / zze);
                if (size2 == 0) {
                    if (i7 != 0) {
                        i5 = (int) (i7 * zze);
                        i6 = size;
                        i4 = i7;
                        setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                        return;
                    }
                    size2 = 0;
                }
                int i8 = (int) f2;
                if (size != 0) {
                    i6 = size;
                } else if (i8 != 0) {
                    i7 = (int) (i8 / zze);
                    i4 = size2;
                    i5 = i8;
                    i6 = i5;
                    setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                    return;
                }
                i4 = size2;
                i5 = i8;
                setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                return;
            }
            if (this.ad.zzg()) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdZ)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzag("/contentHeight", new gfb(this));
                be("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                float f3 = this.f3988b.density;
                int size3 = View.MeasureSpec.getSize(i);
                int i9 = this.au;
                setMeasuredDimension(size3, i9 != -1 ? (int) (i9 * f3) : View.MeasureSpec.getSize(i2));
                return;
            }
            if (this.ad.zzi()) {
                DisplayMetrics displayMetrics = this.f3988b;
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i);
            int size4 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size5 = View.MeasureSpec.getSize(i2);
            int i10 = he.UNDEFINED_ITEM_ID;
            if (mode != Integer.MIN_VALUE && mode != 1073741824) {
                i3 = he.UNDEFINED_ITEM_ID;
                if (mode2 != Integer.MIN_VALUE || mode2 == 1073741824) {
                    i10 = size5;
                }
                zzche zzcheVar = this.ad;
                z = zzcheVar.zzb <= i3 || zzcheVar.zza > i10;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfr)).booleanValue()) {
                    zzche zzcheVar2 = this.ad;
                    float f4 = zzcheVar2.zzb;
                    float f5 = this.al;
                    z &= f4 / f5 <= ((float) i3) / f5 && ((float) zzcheVar2.zza) / f5 <= ((float) i10) / f5;
                }
                if (z) {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    if (!this.aw) {
                        this.l.zzc(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBLS);
                        this.aw = true;
                    }
                    zzche zzcheVar3 = this.ad;
                    setMeasuredDimension(zzcheVar3.zzb, zzcheVar3.zza);
                    return;
                }
                zzche zzcheVar4 = this.ad;
                float f6 = zzcheVar4.zzb;
                float f7 = this.al;
                agd.b("Not enough space to show ad. Needs " + ((int) (f6 / f7)) + "x" + ((int) (zzcheVar4.zza / f7)) + " dp, but only has " + ((int) (size4 / f7)) + "x" + ((int) (size5 / f7)) + " dp.");
                if (getVisibility() != 8) {
                    setVisibility(4);
                }
                setMeasuredDimension(0, 0);
                if (this.t) {
                    return;
                }
                this.l.zzc(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBNM);
                this.t = true;
                return;
            }
            i3 = size4;
            if (mode2 != Integer.MIN_VALUE) {
            }
            i10 = size5;
            zzche zzcheVar5 = this.ad;
            if (zzcheVar5.zzb <= i3) {
            }
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfr)).booleanValue()) {
            }
            if (z) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    public final void onPause() {
        if (zzaE()) {
            return;
        }
        try {
            super.onPause();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzml)).booleanValue() && bff.u(Features.MUTE_AUDIO)) {
                agd.c("Muting webview");
                int i = bdj.f11318a;
                if (!gvy.f18849b.c()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                ((WebViewProviderBoundaryInterface) bdj.c(this).f16224f).setAudioMuted(true);
            }
        } catch (Exception e2) {
            agd.f("Could not pause webview.", e2);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmo)).booleanValue()) {
                ti.f20033a.f20034ab.zzw(e2, "AdWebViewImpl.onPause");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    public final void onResume() {
        if (zzaE()) {
            return;
        }
        try {
            super.onResume();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzml)).booleanValue() && bff.u(Features.MUTE_AUDIO)) {
                agd.c("Unmuting webview");
                int i = bdj.f11318a;
                if (!gvy.f18849b.c()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                ((WebViewProviderBoundaryInterface) bdj.c(this).f16224f).setAudioMuted(false);
            }
        } catch (Exception e2) {
            agd.f("Could not resume webview.", e2);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmo)).booleanValue()) {
                ti.f20033a.f20034ab.zzw(e2, "AdWebViewImpl.onResume");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdC)).booleanValue() && this.an.zzQ();
        if ((!this.an.zzT() || this.an.zzR()) && !z) {
            zzavc zzavcVar = this.am;
            if (zzavcVar != null) {
                zzavcVar.zzd(motionEvent);
            }
            zzbdu zzbduVar = this.z;
            if (zzbduVar != null) {
                zzbduVar.zzb(motionEvent);
            }
        } else {
            synchronized (this) {
                try {
                    zzbfm zzbfmVar = this.o;
                    if (zzbfmVar != null) {
                        zzbfmVar.zzd(motionEvent);
                    }
                } finally {
                }
            }
        }
        if (zzaE()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcfk
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcfs) {
            this.an = (zzcfs) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaE()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e2) {
            agd.f("Could not stop loading webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final synchronized void zzA(int i) {
        this.ap = i;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzB(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final synchronized void zzC(zzcgm zzcgmVar) {
        if (this.aq != null) {
            agd.d("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.aq = zzcgmVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcfb
    public final zzfet zzD() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final Context zzE() {
        return this.ae.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgz
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final WebView zzG() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final WebViewClient zzH() {
        return this.an;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgx
    public final zzavc zzI() {
        return this.am;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized zzazz zzJ() {
        return this.x;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized zzbfm zzK() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized cwg zzL() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized cwg zzM() {
        return this.as;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final /* synthetic */ zzchc zzN() {
        return this.an;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgw
    public final synchronized zzche zzO() {
        return this.ad;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized zzeeu zzP() {
        return this.av;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized zzeew zzQ() {
        return this.f3991e;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgn
    public final zzfew zzR() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzffs zzS() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final dcy zzT() {
        zzbdu zzbduVar = this.z;
        return zzbduVar == null ? zzgei.zzh(null) : zzbduVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized String zzU() {
        return this.y;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final List zzV() {
        return new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzW(zzfet zzfetVar, zzfew zzfewVar) {
        this.p = zzfetVar;
        this.v = zzfewVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzX() {
        agd.e("Destroying WebView!");
        bf();
        esy.f16117a.post(new aku(2, this));
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzY() {
        zzbcu.zza(this.h.zza(), this.u, "aeh2");
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f3987ab.afmaVersion);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzZ(int i) {
        zzbcz zzbczVar = this.u;
        zzbda zzbdaVar = this.h;
        if (i == 0) {
            zzbcu.zza(zzbdaVar.zza(), zzbczVar, "aebb2");
        }
        zzbcu.zza(zzbdaVar.zza(), zzbczVar, "aeh2");
        zzbdaVar.zza();
        zzbdaVar.zza().zzd("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.f3987ab.afmaVersion);
        zzd("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zza(String str) {
        be(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaA(String str, aqj aqjVar) {
        zzcfs zzcfsVar = this.an;
        if (zzcfsVar != null) {
            zzcfsVar.zzP(str, aqjVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized boolean zzaB() {
        return this.f3992f;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized boolean zzaC() {
        return this.ay > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaD(final boolean z, final int i) {
        destroy();
        zzbbk zzbbkVar = new zzbbk() { // from class: com.google.android.gms.internal.ads.zzcgf
            @Override // com.google.android.gms.internal.ads.zzbbk
            public final void zza(zzbbs.zzt.zza zzaVar) {
                int i2 = v.f3986a;
                zzbbs.zzbl.zza zzb = zzbbs.zzbl.zzb();
                boolean zzf = zzb.zzf();
                boolean z2 = z;
                if (zzf != z2) {
                    zzb.zzd(z2);
                }
                zzb.zze(i);
                zzaVar.zzab(zzb.zzbr());
            }
        };
        zzbbl zzbblVar = this.l;
        zzbblVar.zzb(zzbbkVar);
        zzbblVar.zzc(AVMDLDataLoader.KeyIsStoRingBufferSizeKB);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized boolean zzaE() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized boolean zzaF() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final boolean zzaG() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized boolean zzaH() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaJ(etg etgVar, boolean z, boolean z2) {
        this.an.zzu(etgVar, z, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaK(String str, String str2, int i) {
        this.an.zzv(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaL(boolean z, int i, boolean z2) {
        this.an.zzw(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaM(boolean z, int i, String str, String str2, boolean z2) {
        this.an.zzy(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcgu
    public final void zzaN(boolean z, int i, String str, boolean z2, boolean z3) {
        this.an.zzz(z, i, str, z2, z3);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaa() {
        if (this.af == null) {
            zzbda zzbdaVar = this.h;
            zzbcu.zza(zzbdaVar.zza(), this.u, "aes2");
            zzbdaVar.zza();
            zzbcz zzf = zzbdc.zzf();
            this.af = zzf;
            zzbdaVar.zzb("native:view_show", zzf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.f3987ab.afmaVersion);
        zzd("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzab() {
        float f2;
        HashMap hashMap = new HashMap(3);
        ti tiVar = ti.f20033a;
        hashMap.put("app_muted", String.valueOf(tiVar.f20036c.c()));
        hashMap.put("app_volume", String.valueOf(tiVar.f20036c.e()));
        AudioManager audioManager = (AudioManager) getContext().getSystemService(MediaFormat.KEY_AUDIO);
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            if (streamMaxVolume != 0) {
                f2 = streamVolume / streamMaxVolume;
                hashMap.put("device_volume", String.valueOf(f2));
                zzd("volume", hashMap);
            }
        }
        f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        hashMap.put("device_volume", String.valueOf(f2));
        zzd("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzac(boolean z) {
        this.an.zzi(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzad() {
        cr crVar = this.f3990d;
        crVar.f13355b = true;
        if (crVar.f13354a) {
            crVar.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzae(String str, String str2, String str3) {
        Throwable th;
        String str4;
        try {
            try {
                if (zzaE()) {
                    agd.b("#004 The webview is destroyed. Ignoring action.");
                    return;
                }
                String str5 = (String) edt.f15376a.f15379d.zza(zzbcn.zzY);
                JSONObject jSONObject = new JSONObject();
                try {
                    try {
                        jSONObject.put("version", str5);
                        jSONObject.put("sdk", "Google Mobile Ads");
                        jSONObject.put("sdkVersion", "12.4.51-000");
                        str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (JSONException unused) {
                    zzfxd zzfxdVar = agd.f10175a;
                    str4 = null;
                }
                super.loadDataWithBaseURL(str, zzcgv.zzb(str2, str4), "text/html", "UTF-8", null);
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaf() {
        if (this.n == null) {
            zzbda zzbdaVar = this.h;
            zzbdaVar.zza();
            zzbcz zzf = zzbdc.zzf();
            this.n = zzf;
            zzbdaVar.zzb("native:view_load", zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzag(String str, zzbjr zzbjrVar) {
        zzcfs zzcfsVar = this.an;
        if (zzcfsVar != null) {
            zzcfsVar.zzA(str, zzbjrVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzah() {
        agd.e("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzai(cwg cwgVar) {
        this.m = cwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzaj(zzche zzcheVar) {
        this.ad = zzcheVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzak(zzazz zzazzVar) {
        this.x = zzazzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzal(boolean z) {
        this.j = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzam() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzan(Context context) {
        zzchd zzchdVar = this.ae;
        zzchdVar.setBaseContext(context);
        this.f3990d.f13356c = zzchdVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzao(boolean z) {
        cwg cwgVar = this.m;
        if (cwgVar != null) {
            cwgVar.ad(this.an.zzS(), z);
        } else {
            this.f3992f = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzap(zzbfk zzbfkVar) {
        this.aa = zzbfkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzaq(boolean z) {
        try {
            boolean z2 = this.k;
            this.k = z;
            bb();
            if (z != z2) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzZ)).booleanValue()) {
                    if (!this.ad.zzi()) {
                    }
                }
                new zzbsk(this, "").zzl(true != z ? "default" : "expanded");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzar(zzbfm zzbfmVar) {
        this.o = zzbfmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzas(zzeeu zzeeuVar) {
        this.av = zzeeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzat(zzeew zzeewVar) {
        this.f3991e = zzeewVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzau(int i) {
        cwg cwgVar = this.m;
        if (cwgVar != null) {
            cwgVar.ab(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzav(boolean z) {
        this.ak = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzaw(cwg cwgVar) {
        this.as = cwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzax(boolean z) {
        cwg cwgVar;
        int i = this.ay + (true != z ? -1 : 1);
        this.ay = i;
        if (i > 0 || (cwgVar = this.m) == null) {
            return;
        }
        cwgVar.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzay(boolean z) {
        if (z) {
            try {
                setBackgroundColor(0);
            } catch (Throwable th) {
                throw th;
            }
        }
        cwg cwgVar = this.m;
        if (cwgVar != null) {
            if (z) {
                cwgVar.m.setBackgroundColor(0);
            } else {
                cwgVar.m.setBackgroundColor(-16777216);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzaz(String str, zzbjr zzbjrVar) {
        zzcfs zzcfsVar = this.an;
        if (zzcfsVar != null) {
            zzcfsVar.zzO(str, zzbjrVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzb(String str, String str2) {
        be(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final void zzd(String str, Map map) {
        try {
            zze(str, cbv.f12612a.f12615d.q(map));
        } catch (JSONException unused) {
            agd.b("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdG() {
        zzcfs zzcfsVar = this.an;
        if (zzcfsVar != null) {
            zzcfsVar.zzdG();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final void zzdf() {
        zzcfs zzcfsVar = this.an;
        if (zzcfsVar != null) {
            zzcfsVar.zzdf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, g.fjn
    public final synchronized void zzdg() {
        fjn fjnVar = this.ax;
        if (fjnVar != null) {
            fjnVar.zzdg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, g.fjn
    public final synchronized void zzdh() {
        fjn fjnVar = this.ax;
        if (fjnVar != null) {
            fjnVar.zzdh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final synchronized String zzdi() {
        return this.ag;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        boolean z;
        synchronized (this) {
            z = zzaylVar.zzj;
            this.aj = z;
        }
        bd(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbmm
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        StringBuilder o = tn.o("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        agd.c("Dispatching AFMA event: ".concat(o.toString()));
        be(o.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final synchronized int zzf() {
        return this.ap;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final int zzg() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgr, com.google.android.gms.internal.ads.zzccf
    public final Activity zzi() {
        return this.ae.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final gfo zzj() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final zzbcz zzk() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.zzbmy
    public final void zzl(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final zzbda zzm() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzcgy, com.google.android.gms.internal.ads.zzccf
    public final akx zzn() {
        return this.f3987ab;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final zzcbu zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final synchronized zzcdr zzp(String str) {
        HashMap hashMap = this.f3993g;
        if (hashMap == null) {
            return null;
        }
        return (zzcdr) hashMap.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final synchronized zzcgm zzq() {
        return this.aq;
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final synchronized String zzr() {
        zzfew zzfewVar = this.v;
        if (zzfewVar == null) {
            return null;
        }
        return zzfewVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk, com.google.android.gms.internal.ads.zzccf
    public final synchronized void zzt(String str, zzcdr zzcdrVar) {
        try {
            if (this.f3993g == null) {
                this.f3993g = new HashMap();
            }
            this.f3993g.put(str, zzcdrVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzu() {
        cwg zzL = zzL();
        if (zzL != null) {
            zzL.m.f10825b = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzv(boolean z, long j) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("success", true != z ? "0" : "1");
        hashMap.put(MediationConstant.EXTRA_DURATION, Long.toString(j));
        zzd("onCacheAccessComplete", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final synchronized void zzw() {
        zzbfk zzbfkVar = this.aa;
        if (zzbfkVar != null) {
            final zzdnd zzdndVar = (zzdnd) zzbfkVar;
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnb
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdnd.this.zzd();
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzccf
    public final void zzz(boolean z) {
        this.an.zzD(false);
    }
}
