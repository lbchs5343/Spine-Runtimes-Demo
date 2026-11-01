package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import g.agd;
import g.bjq;
import g.bpp;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdjs extends zzbgh implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdku {

    /* renamed from: c, reason: collision with root package name */
    public zzdit f6096c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakReference f6097d;

    /* renamed from: f, reason: collision with root package name */
    public final zzayn f6099f;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f6098e = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6094a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f6095b = new HashMap();

    public zzdjs(View view, HashMap hashMap, HashMap hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzcaw zzcawVar = ti.f20033a.i;
        zzcaw.zza(view, this);
        zzcaw.zzb(view, this);
        this.f6097d = new WeakReference(view);
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            View view2 = (View) entry.getValue();
            if (view2 != null) {
                this.f6098e.put(str, new WeakReference(view2));
                if (!"1098".equals(str) && !"3011".equals(str)) {
                    view2.setOnTouchListener(this);
                    view2.setClickable(true);
                    view2.setOnClickListener(this);
                }
            }
        }
        this.f6095b.putAll(this.f6098e);
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            View view3 = (View) entry2.getValue();
            if (view3 != null) {
                this.f6094a.put((String) entry2.getKey(), new WeakReference(view3));
                view3.setOnTouchListener(this);
                view3.setClickable(false);
            }
        }
        this.f6095b.putAll(this.f6094a);
        this.f6099f = new zzayn(view.getContext(), view);
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdit zzditVar = this.f6096c;
        if (zzditVar != null) {
            zzditVar.zzD(view, zzf(), zzl(), zzm(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdit zzditVar = this.f6096c;
        if (zzditVar != null) {
            zzditVar.zzB(zzf(), zzl(), zzm(), zzdit.zzY(zzf()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdit zzditVar = this.f6096c;
        if (zzditVar != null) {
            zzditVar.zzB(zzf(), zzl(), zzm(), zzdit.zzY(zzf()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdit zzditVar = this.f6096c;
        if (zzditVar != null) {
            zzditVar.zzL(view, motionEvent, zzf());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final synchronized void zzb(bjq bjqVar) {
        try {
            if (this.f6096c != null) {
                Object b2 = bpp.b(bjqVar);
                if (!(b2 instanceof View)) {
                    agd.b("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.f6096c.zzN((View) b2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final synchronized void zzc(bjq bjqVar) {
        Object b2 = bpp.b(bjqVar);
        if (!(b2 instanceof zzdit)) {
            agd.b("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        zzdit zzditVar = this.f6096c;
        if (zzditVar != null) {
            zzditVar.zzT(this);
        }
        zzdit zzditVar2 = (zzdit) b2;
        if (!zzditVar2.zzU()) {
            agd.d("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
            return;
        }
        this.f6096c = zzditVar2;
        zzditVar2.zzS(this);
        this.f6096c.zzK(zzf());
    }

    @Override // com.google.android.gms.internal.ads.zzbgi
    public final synchronized void zzd() {
        zzdit zzditVar = this.f6096c;
        if (zzditVar != null) {
            zzditVar.zzT(this);
            this.f6096c = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final View zzf() {
        return (View) this.f6097d.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized View zzg(String str) {
        WeakReference weakReference = (WeakReference) this.f6095b.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final FrameLayout zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final zzayn zzi() {
        return this.f6099f;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized bjq zzj() {
        return null;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized String zzk() {
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized Map zzl() {
        return this.f6095b;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized Map zzm() {
        return this.f6098e;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized Map zzn() {
        return this.f6094a;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized JSONObject zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized JSONObject zzp() {
        zzdit zzditVar = this.f6096c;
        if (zzditVar == null) {
            return null;
        }
        return zzditVar.zzj(zzf(), zzl(), zzm());
    }

    @Override // com.google.android.gms.internal.ads.zzdku
    public final synchronized void zzq(String str, View view, boolean z) {
        this.f6095b.put(str, new WeakReference(view));
        if (!"1098".equals(str) && !"3011".equals(str)) {
            this.f6098e.put(str, new WeakReference(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }
}
