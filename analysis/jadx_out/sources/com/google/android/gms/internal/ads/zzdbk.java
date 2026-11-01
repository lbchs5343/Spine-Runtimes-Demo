package com.google.android.gms.internal.ads;

import g.edt;

/* loaded from: classes3.dex */
public final class zzdbk implements zzczj {

    /* renamed from: a, reason: collision with root package name */
    public int f5848a;

    /* renamed from: b, reason: collision with root package name */
    public int f5849b;

    public zzdbk() {
        zzbce zzbceVar = zzbcn.zzbn;
        edt edtVar = edt.f15376a;
        this.f5848a = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        this.f5849b = ((Integer) edtVar.f15379d.zza(zzbcn.zzmz)).intValue();
    }

    public final synchronized int zzc() {
        return this.f5848a;
    }

    public final synchronized int zzd() {
        return this.f5849b;
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final synchronized void zzdo(zzfff zzfffVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbo)).booleanValue()) {
            try {
                zzfew zzfewVar = zzfffVar.zzb.zzb;
                this.f5848a = zzfewVar.zzc;
                this.f5849b = zzfewVar.zzd;
            } catch (NullPointerException unused) {
            }
        }
    }
}
