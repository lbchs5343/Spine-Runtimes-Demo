package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import g.agd;
import g.bjq;
import g.bpp;
import g.ckd;
import g.edt;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdju extends zzbgb implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdku {
    public static final zzfzo zza = zzfzo.zzq("2011", "1009", "3010");

    /* renamed from: a, reason: collision with root package name */
    public zzdit f6100a;

    /* renamed from: d, reason: collision with root package name */
    public FrameLayout f6103d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6104e;

    /* renamed from: f, reason: collision with root package name */
    public zzbfv f6105f;

    /* renamed from: g, reason: collision with root package name */
    public FrameLayout f6106g;
    public final zzges h;
    public final String i;
    public zzayn j;
    public GestureDetector m;
    public View o;
    public HashMap k = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public bjq f6102c = null;
    public boolean n = false;

    /* renamed from: b, reason: collision with root package name */
    public final int f6101b = 243799000;

    public zzdju(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.f6103d = frameLayout;
        this.f6106g = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.i = str;
        zzcaw zzcawVar = ti.f20033a.i;
        zzcaw.zza(frameLayout, this);
        zzcaw.zzb(frameLayout, this);
        this.h = zzcaj.zze;
        this.j = new zzayn(this.f6103d.getContext(), this.f6103d);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdit zzditVar = this.f6100a;
        if (zzditVar == null || !zzditVar.zzV()) {
            return;
        }
        this.f6100a.zzv();
        this.f6100a.zzD(view, this.f6103d, zzl(), zzm(), false);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdit zzditVar = this.f6100a;
        if (zzditVar != null) {
            FrameLayout frameLayout = this.f6103d;
            zzditVar.zzB(frameLayout, zzl(), zzm(), zzdit.zzY(frameLayout));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdit zzditVar = this.f6100a;
        if (zzditVar != null) {
            FrameLayout frameLayout = this.f6103d;
            zzditVar.zzB(frameLayout, zzl(), zzm(), zzdit.zzY(frameLayout));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdit zzditVar = this.f6100a;
        if (zzditVar != null) {
            zzditVar.zzL(view, motionEvent, this.f6103d);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue() && this.m != null && this.f6100a.zza() != 0) {
                this.m.onTouchEvent(motionEvent);
            }
        }
        return false;
    }

    public final synchronized void p(String str) {
        DisplayMetrics displayMetrics;
        try {
            View frameLayout = new FrameLayout(this.f6106g.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.f6106g.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] decode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException unused) {
                        zzfxd zzfxdVar = agd.f10175a;
                    }
                }
            }
            this.f6106g.addView(frameLayout);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void q() {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlh)).booleanValue() || this.f6100a.zza() == 0) {
            return;
        }
        this.m = new GestureDetector(this.f6103d.getContext(), new zzdka(this.f6100a, this));
    }

    public final synchronized void r() {
        this.h.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjt
            @Override // java.lang.Runnable
            public final void run() {
                zzdju zzdjuVar = zzdju.this;
                if (zzdjuVar.o == null) {
                    View view = new View(zzdjuVar.f6103d.getContext());
                    zzdjuVar.o = view;
                    view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                }
                if (zzdjuVar.f6103d != zzdjuVar.o.getParent()) {
                    zzdjuVar.f6103d.addView(zzdjuVar.o);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized bjq zzb(String str) {
        return new bpp(zzg(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zzc() {
        try {
            if (this.n) {
                return;
            }
            zzdit zzditVar = this.f6100a;
            if (zzditVar != null) {
                zzditVar.zzT(this);
                this.f6100a = null;
            }
            this.k.clear();
            this.f6103d.removeAllViews();
            this.f6106g.removeAllViews();
            this.k = null;
            this.f6103d = null;
            this.f6106g = null;
            this.o = null;
            this.j = null;
            this.n = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final void zzd(bjq bjqVar) {
        onTouch(this.f6103d, (MotionEvent) bpp.b(bjqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zzdv(String str, bjq bjqVar) {
        zzq(str, (View) bpp.b(bjqVar), true);
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zzdw(bjq bjqVar) {
        this.f6100a.zzN((View) bpp.b(bjqVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zzdx(zzbfv zzbfvVar) {
        if (!this.n) {
            this.f6104e = true;
            this.f6105f = zzbfvVar;
            zzdit zzditVar = this.f6100a;
            if (zzditVar != null) {
                zzditVar.zzc().zzb(zzbfvVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zzdy(bjq bjqVar) {
        if (this.n) {
            return;
        }
        this.f6102c = bjqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zzdz(bjq bjqVar) {
        if (this.n) {
            return;
        }
        Object b2 = bpp.b(bjqVar);
        if (!(b2 instanceof zzdit)) {
            agd.b("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        zzdit zzditVar = this.f6100a;
        if (zzditVar != null) {
            zzditVar.zzT(this);
        }
        r();
        zzdit zzditVar2 = (zzdit) b2;
        this.f6100a = zzditVar2;
        zzditVar2.zzS(this);
        this.f6100a.zzK(this.f6103d);
        this.f6100a.zzu(this.f6106g);
        if (this.f6104e) {
            this.f6100a.zzc().zzb(this.f6105f);
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdX)).booleanValue() && !TextUtils.isEmpty(this.f6100a.zzg())) {
            p(this.f6100a.zzg());
        }
        q();
    }

    @Override // com.google.android.gms.internal.ads.zzbgc
    public final synchronized void zze(bjq bjqVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final /* synthetic */ View zzf() {
        return this.f6103d;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized View zzg(String str) {
        WeakReference weakReference;
        if (!this.n && (weakReference = (WeakReference) this.k.get(str)) != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final FrameLayout zzh() {
        return this.f6106g;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final zzayn zzi() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final bjq zzj() {
        return this.f6102c;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized String zzk() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized Map zzl() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized Map zzm() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized Map zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized JSONObject zzo() {
        zzdit zzditVar = this.f6100a;
        if (zzditVar == null) {
            return null;
        }
        return zzditVar.zzi(this.f6103d, zzl(), zzm());
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized JSONObject zzp() {
        zzdit zzditVar = this.f6100a;
        if (zzditVar == null) {
            return null;
        }
        return zzditVar.zzj(this.f6103d, zzl(), zzm());
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized void zzq(String str, View view, boolean z) {
        if (!this.n) {
            if (view == null) {
                this.k.remove(str);
                return;
            }
            this.k.put(str, new WeakReference(view));
            if (!"1098".equals(str) && !"3011".equals(str)) {
                if (ckd.ae(this.f6101b)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    public final FrameLayout zzr() {
        return this.f6103d;
    }
}
