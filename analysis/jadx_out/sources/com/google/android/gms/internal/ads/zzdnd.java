package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import g.agd;
import g.bjq;
import g.bpp;
import g.cbz;
import g.ckd;
import g.czo;
import g.ti;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdnd extends zzbmd implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbfk {

    /* renamed from: a, reason: collision with root package name */
    public zzdit f6224a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6225b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6226c = false;

    /* renamed from: d, reason: collision with root package name */
    public View f6227d;

    /* renamed from: e, reason: collision with root package name */
    public cbz f6228e;

    public zzdnd(zzdit zzditVar, zzdiy zzdiyVar) {
        this.f6227d = zzdiyVar.zzf();
        this.f6228e = zzdiyVar.zzj();
        this.f6224a = zzditVar;
        if (zzdiyVar.zzs() != null) {
            zzdiyVar.zzs().zzap(this);
        }
    }

    public final void f() {
        View view;
        zzdit zzditVar = this.f6224a;
        if (zzditVar == null || (view = this.f6227d) == null) {
            return;
        }
        Map map = Collections.EMPTY_MAP;
        zzditVar.zzB(view, map, map, zzdit.zzY(view));
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        f();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        f();
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final cbz zzb() throws RemoteException {
        ckd.aj("#008 Must be called on the main UI thread.");
        if (!this.f6225b) {
            return this.f6228e;
        }
        agd.d("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final zzbfv zzc() {
        ckd.aj("#008 Must be called on the main UI thread.");
        if (this.f6225b) {
            agd.d("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzdit zzditVar = this.f6224a;
        if (zzditVar == null || zzditVar.zzc() == null) {
            return null;
        }
        return zzditVar.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzd() throws RemoteException {
        ckd.aj("#008 Must be called on the main UI thread.");
        View view = this.f6227d;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f6227d);
            }
        }
        zzdit zzditVar = this.f6224a;
        if (zzditVar != null) {
            zzditVar.zzb();
        }
        this.f6224a = null;
        this.f6227d = null;
        this.f6228e = null;
        this.f6225b = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zze(bjq bjqVar) throws RemoteException {
        ckd.aj("#008 Must be called on the main UI thread.");
        zzf(bjqVar, new czo());
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzf(bjq bjqVar, zzbmh zzbmhVar) throws RemoteException {
        ckd.aj("#008 Must be called on the main UI thread.");
        if (this.f6225b) {
            agd.d("Instream ad can not be shown after destroy().");
            try {
                zzbmhVar.zze(2);
                return;
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
                return;
            }
        }
        View view = this.f6227d;
        if (view == null || this.f6228e == null) {
            agd.d("Instream internal error: ".concat(view == null ? "can not get video view." : "can not get video controller."));
            try {
                zzbmhVar.zze(0);
                return;
            } catch (RemoteException e3) {
                agd.g("#007 Could not call remote method.", e3);
                return;
            }
        }
        if (this.f6226c) {
            agd.d("Instream ad should not be used again.");
            try {
                zzbmhVar.zze(1);
                return;
            } catch (RemoteException e4) {
                agd.g("#007 Could not call remote method.", e4);
                return;
            }
        }
        this.f6226c = true;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f6227d);
            }
        }
        ((ViewGroup) bpp.b(bjqVar)).addView(this.f6227d, new ViewGroup.LayoutParams(-1, -1));
        zzcaw zzcawVar = ti.f20033a.i;
        zzcaw.zza(this.f6227d, this);
        zzcaw.zzb(this.f6227d, this);
        f();
        try {
            zzbmhVar.zzf();
        } catch (RemoteException e5) {
            agd.g("#007 Could not call remote method.", e5);
        }
    }
}
