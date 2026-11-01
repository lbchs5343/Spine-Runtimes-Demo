package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzbk {

    /* renamed from: a, reason: collision with root package name */
    public final zzx f4845a = new zzx();

    public final zzbk zza(int i) {
        this.f4845a.zza(i);
        return this;
    }

    public final zzbk zzb(zzbl zzblVar) {
        zzz zzzVar = zzblVar.f4866a;
        for (int i = 0; i < zzzVar.zzb(); i++) {
            this.f4845a.zza(zzzVar.zza(i));
        }
        return this;
    }

    public final zzbk zzc(int... iArr) {
        for (int i = 0; i < 20; i++) {
            this.f4845a.zza(iArr[i]);
        }
        return this;
    }

    public final zzbk zzd(int i, boolean z) {
        if (z) {
            this.f4845a.zza(i);
        }
        return this;
    }

    public final zzbl zze() {
        return new zzbl(this.f4845a.zzb());
    }
}
