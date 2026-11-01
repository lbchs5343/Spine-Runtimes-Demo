package com.google.android.gms.internal.ads;

import g.eno;

/* loaded from: classes3.dex */
public final class zzche {

    /* renamed from: a, reason: collision with root package name */
    public final int f5272a;
    public final int zza;
    public final int zzb;

    public zzche(int i, int i2, int i3) {
        this.f5272a = i;
        this.zzb = i2;
        this.zza = i3;
    }

    public static zzche zza() {
        return new zzche(0, 0, 0);
    }

    public static zzche zzb(int i, int i2) {
        return new zzche(1, i, i2);
    }

    public static zzche zzc(eno enoVar) {
        return enoVar.zzd ? new zzche(3, 0, 0) : enoVar.zzi ? new zzche(2, 0, 0) : enoVar.zzh ? new zzche(0, 0, 0) : new zzche(1, enoVar.zzf, enoVar.zzc);
    }

    public static zzche zzd() {
        return new zzche(5, 0, 0);
    }

    public static zzche zze() {
        return new zzche(4, 0, 0);
    }

    public final boolean zzf() {
        return this.f5272a == 0;
    }

    public final boolean zzg() {
        return this.f5272a == 2;
    }

    public final boolean zzh() {
        return this.f5272a == 5;
    }

    public final boolean zzi() {
        return this.f5272a == 3;
    }

    public final boolean zzj() {
        return this.f5272a == 4;
    }
}
