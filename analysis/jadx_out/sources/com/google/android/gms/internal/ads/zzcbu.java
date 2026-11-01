package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import g.ckd;

/* loaded from: classes3.dex */
public final class zzcbu {

    /* renamed from: a, reason: collision with root package name */
    public zzcbt f5153a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f5154b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcfk f5155c;

    /* renamed from: d, reason: collision with root package name */
    public final ViewGroup f5156d;

    public zzcbu(Context context, ViewGroup viewGroup, zzcfk zzcfkVar) {
        this.f5154b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f5156d = viewGroup;
        this.f5155c = zzcfkVar;
        this.f5153a = null;
    }

    public final zzcbt zza() {
        return this.f5153a;
    }

    public final Integer zzb() {
        zzcbt zzcbtVar = this.f5153a;
        if (zzcbtVar != null) {
            return zzcbtVar.zzl();
        }
        return null;
    }

    public final void zzc(int i, int i2, int i3, int i4) {
        ckd.aj("The underlay may only be modified from the UI thread.");
        zzcbt zzcbtVar = this.f5153a;
        if (zzcbtVar != null) {
            zzcbtVar.zzF(i, i2, i3, i4);
        }
    }

    public final void zzd(int i, int i2, int i3, int i4, int i5, boolean z, zzcce zzcceVar) {
        if (this.f5153a != null) {
            return;
        }
        zzcfk zzcfkVar = this.f5155c;
        zzbcu.zza(zzcfkVar.zzm().zza(), zzcfkVar.zzk(), "vpr2");
        zzcbt zzcbtVar = new zzcbt(this.f5154b, zzcfkVar, i5, z, zzcfkVar.zzm().zza(), zzcceVar);
        this.f5153a = zzcbtVar;
        this.f5156d.addView(zzcbtVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f5153a.zzF(i, i2, i3, i4);
        zzcfkVar.zzz(false);
    }

    public final void zze() {
        ckd.aj("onDestroy must be called from the UI thread.");
        zzcbt zzcbtVar = this.f5153a;
        if (zzcbtVar != null) {
            zzcbtVar.zzo();
            this.f5156d.removeView(this.f5153a);
            this.f5153a = null;
        }
    }

    public final void zzf() {
        ckd.aj("onPause must be called from the UI thread.");
        zzcbt zzcbtVar = this.f5153a;
        if (zzcbtVar != null) {
            zzcbtVar.zzu();
        }
    }

    public final void zzg(int i) {
        zzcbt zzcbtVar = this.f5153a;
        if (zzcbtVar != null) {
            zzcbtVar.zzC(i);
        }
    }
}
