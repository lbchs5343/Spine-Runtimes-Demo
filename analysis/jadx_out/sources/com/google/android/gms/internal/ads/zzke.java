package com.google.android.gms.internal.ads;

import g.gzx;

/* loaded from: classes3.dex */
public final class zzke {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8780a;
    public gzx zza;
    public int zzb;
    public boolean zzc;
    public int zzd;

    public zzke(gzx gzxVar) {
        this.zza = gzxVar;
    }

    public final void zza(int i) {
        this.f8780a = 1 == ((this.f8780a ? 1 : 0) | i);
        this.zzb += i;
    }

    public final void zzb(gzx gzxVar) {
        this.f8780a |= this.zza != gzxVar;
        this.zza = gzxVar;
    }

    public final void zzc(int i) {
        if (this.zzc && this.zzd != 5) {
            zzdb.zzd(i == 5);
            return;
        }
        this.f8780a = true;
        this.zzc = true;
        this.zzd = i;
    }
}
