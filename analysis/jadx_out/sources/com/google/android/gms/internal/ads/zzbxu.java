package com.google.android.gms.internal.ads;

import g.abz;
import g.fas;
import g.fqz;
import g.frt;

/* loaded from: classes3.dex */
public final class zzbxu extends zzbxe {

    /* renamed from: a, reason: collision with root package name */
    public fas f5045a;

    /* renamed from: b, reason: collision with root package name */
    public fqz f5046b;

    public final void zzb(fas fasVar) {
        this.f5045a = fasVar;
    }

    public final void zzc(fqz fqzVar) {
        this.f5046b = fqzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzg() {
        fas fasVar = this.f5045a;
        if (fasVar != null) {
            frt frtVar = (frt) fasVar;
            frtVar.f17309b.onAdClosed(frtVar.f17308a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzh(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzi(abz abzVar) {
        if (this.f5045a != null) {
            abzVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzj() {
        fas fasVar = this.f5045a;
        if (fasVar != null) {
            frt frtVar = (frt) fasVar;
            frtVar.f17309b.onAdOpened(frtVar.f17308a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxf
    public final void zzk(zzbwz zzbwzVar) {
        fqz fqzVar = this.f5046b;
        if (fqzVar != null) {
            fqzVar.onUserEarnedReward(new zzbxm(zzbwzVar));
        }
    }
}
