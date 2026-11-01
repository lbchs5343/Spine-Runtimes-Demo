package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collection;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzfna extends zzfmw {

    /* renamed from: a, reason: collision with root package name */
    public zzfoh f8044a;

    /* renamed from: c, reason: collision with root package name */
    public final zzfmy f8046c;

    /* renamed from: g, reason: collision with root package name */
    public final String f8050g;

    /* renamed from: e, reason: collision with root package name */
    public final zzfnv f8048e = new zzfnv();

    /* renamed from: b, reason: collision with root package name */
    public boolean f8045b = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8047d = false;

    /* renamed from: f, reason: collision with root package name */
    public zzfpi f8049f = new zzfpi(null);

    public zzfna(zzfmx zzfmxVar, zzfmy zzfmyVar, String str) {
        this.f8046c = zzfmyVar;
        this.f8050g = str;
        if (zzfmyVar.zzd() == zzfmz.HTML || zzfmyVar.zzd() == zzfmz.JAVASCRIPT) {
            this.f8044a = new zzfoi(str, zzfmyVar.zza());
        } else {
            this.f8044a = new zzfol(str, zzfmyVar.zzi(), null);
        }
        this.f8044a.zzo();
        zzfnr.zza().zzd(this);
        this.f8044a.zzf(zzfmxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfmw
    public final void zzb(View view, zzfnd zzfndVar, String str) {
        if (this.f8047d) {
            return;
        }
        this.f8048e.zzb(view, zzfndVar, "Ad overlay");
    }

    @Override // com.google.android.gms.internal.ads.zzfmw
    public final void zzc() {
        if (this.f8047d) {
            return;
        }
        this.f8049f.clear();
        if (!this.f8047d) {
            this.f8048e.zzc();
        }
        this.f8047d = true;
        this.f8044a.zze();
        zzfnr.zza().zze(this);
        this.f8044a.zzc();
        this.f8044a = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfmw
    public final void zzd(View view) {
        if (this.f8047d || zzf() == view) {
            return;
        }
        this.f8049f = new zzfpi(view);
        this.f8044a.zzb();
        Collection<zzfna> zzc = zzfnr.zza().zzc();
        if (zzc == null || zzc.isEmpty()) {
            return;
        }
        for (zzfna zzfnaVar : zzc) {
            if (zzfnaVar != this && zzfnaVar.zzf() == view) {
                zzfnaVar.f8049f.clear();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmw
    public final void zze() {
        if (this.f8045b) {
            return;
        }
        this.f8045b = true;
        zzfnr.zza().zzf(this);
        this.f8044a.zzl(zzfnz.zzb().zza());
        this.f8044a.zzg(zzfnp.zza().zzb());
        this.f8044a.zzi(this, this.f8046c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View zzf() {
        return (View) this.f8049f.get();
    }

    public final zzfoh zzg() {
        return this.f8044a;
    }

    public final String zzh() {
        return this.f8050g;
    }

    public final List zzi() {
        return this.f8048e.zza();
    }

    public final boolean zzj() {
        return this.f8045b && !this.f8047d;
    }
}
