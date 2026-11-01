package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzced implements zzkl {

    /* renamed from: d, reason: collision with root package name */
    public int f5224d;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5227g;

    /* renamed from: c, reason: collision with root package name */
    public final zzys f5223c = new zzys(true, 65536);

    /* renamed from: e, reason: collision with root package name */
    public long f5225e = 15000000;

    /* renamed from: f, reason: collision with root package name */
    public long f5226f = 30000000;

    /* renamed from: a, reason: collision with root package name */
    public long f5221a = 2500000;

    /* renamed from: b, reason: collision with root package name */
    public long f5222b = 5000000;

    @Override // com.google.android.gms.internal.ads.zzkl
    public final long zzb(zzoj zzojVar) {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzc(zzoj zzojVar) {
        this.f5224d = 0;
        this.f5227g = false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzd(zzoj zzojVar) {
        this.f5224d = 0;
        this.f5227g = false;
        this.f5223c.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zze(zzoj zzojVar) {
        this.f5224d = 0;
        this.f5227g = false;
        this.f5223c.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final void zzf(zzoj zzojVar, zzbv zzbvVar, zzur zzurVar, zzln[] zzlnVarArr, zzwr zzwrVar, zzyd[] zzydVarArr) {
        int i = 0;
        this.f5224d = 0;
        while (true) {
            int length = zzlnVarArr.length;
            if (i >= 2) {
                this.f5223c.zzf(this.f5224d);
                return;
            } else {
                if (zzydVarArr[i] != null) {
                    this.f5224d += zzlnVarArr[i].zzb() != 1 ? 131072000 : 13107200;
                }
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzg(zzoj zzojVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzh(zzkk zzkkVar) {
        long j = zzkkVar.zzb;
        boolean z = true;
        char c2 = j > this.f5226f ? (char) 0 : j < this.f5225e ? (char) 2 : (char) 1;
        int zza = this.f5223c.zza();
        int i = this.f5224d;
        if (c2 != 2 && (c2 != 1 || !this.f5227g || zza >= i)) {
            z = false;
        }
        this.f5227g = z;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final boolean zzi(zzkk zzkkVar) {
        long j = zzkkVar.zzd ? this.f5222b : this.f5221a;
        return j <= 0 || zzkkVar.zzb >= j;
    }

    @Override // com.google.android.gms.internal.ads.zzkl
    public final zzys zzj() {
        return this.f5223c;
    }

    public final synchronized void zzk(int i) {
        this.f5221a = i * 1000;
    }

    public final synchronized void zzl(int i) {
        this.f5222b = i * 1000;
    }

    public final synchronized void zzm(int i) {
        this.f5226f = i * 1000;
    }

    public final synchronized void zzn(int i) {
        this.f5225e = i * 1000;
    }
}
