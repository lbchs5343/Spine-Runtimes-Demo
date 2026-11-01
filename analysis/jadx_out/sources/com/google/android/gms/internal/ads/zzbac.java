package com.google.android.gms.internal.ads;

import g.abz;
import g.fas;
import g.frt;

/* loaded from: classes3.dex */
public final class zzbac extends zzbal {

    /* renamed from: a, reason: collision with root package name */
    public fas f4669a;

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzc() {
        fas fasVar = this.f4669a;
        if (fasVar != null) {
            frt frtVar = (frt) fasVar;
            frtVar.f17309b.onAdClosed(frtVar.f17308a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzd(abz abzVar) {
        if (this.f4669a != null) {
            abzVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzf() {
        fas fasVar = this.f4669a;
        if (fasVar != null) {
            frt frtVar = (frt) fasVar;
            frtVar.f17309b.onAdOpened(frtVar.f17308a);
        }
    }

    public final void zzg(fas fasVar) {
        this.f4669a = fasVar;
    }
}
