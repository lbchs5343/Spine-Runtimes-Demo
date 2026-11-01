package com.google.android.gms.internal.ads;

import android.content.Context;
import g.abz;

/* loaded from: classes3.dex */
public final class zzfjx implements zzddq, zzcxc, zzddu {

    /* renamed from: a, reason: collision with root package name */
    public final zzfkl f7932a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfka f7933b;

    public zzfjx(Context context, zzfkl zzfklVar) {
        this.f7932a = zzfklVar;
        this.f7933b = zzfjz.zza(context, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzddu
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzddu
    public final void zzb() {
        if (((Boolean) zzbeg.zzd.zze()).booleanValue()) {
            zzfka zzfkaVar = this.f7933b;
            zzfkaVar.zzg(true);
            this.f7932a.zza(zzfkaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void zzl() {
        if (((Boolean) zzbeg.zzd.zze()).booleanValue()) {
            this.f7933b.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxc
    public final void zzq(abz abzVar) {
        if (((Boolean) zzbeg.zzd.zze()).booleanValue()) {
            String ezzVar = abzVar.zza().toString();
            zzfka zzfkaVar = this.f7933b;
            zzfkaVar.zzc(ezzVar);
            zzfkaVar.zzg(false);
            this.f7932a.zza(zzfkaVar);
        }
    }
}
