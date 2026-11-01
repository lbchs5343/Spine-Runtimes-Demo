package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzhc implements zzgd {

    /* renamed from: b, reason: collision with root package name */
    public final zzgd f8706b;

    /* renamed from: c, reason: collision with root package name */
    public long f8707c;

    /* renamed from: d, reason: collision with root package name */
    public Uri f8708d = Uri.EMPTY;

    /* renamed from: a, reason: collision with root package name */
    public Map f8705a = Collections.EMPTY_MAP;

    public zzhc(zzgd zzgdVar) {
        this.f8706b = zzgdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int zza = this.f8706b.zza(bArr, i, i2);
        if (zza != -1) {
            this.f8707c += zza;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws IOException {
        this.f8708d = zzgiVar.zza;
        this.f8705a = Collections.EMPTY_MAP;
        long zzb = this.f8706b.zzb(zzgiVar);
        Uri zzc = zzc();
        zzc.getClass();
        this.f8708d = zzc;
        this.f8705a = zze();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        return this.f8706b.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws IOException {
        this.f8706b.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        return this.f8706b.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzf(zzhd zzhdVar) {
        zzhdVar.getClass();
        this.f8706b.zzf(zzhdVar);
    }

    public final long zzg() {
        return this.f8707c;
    }

    public final Uri zzh() {
        return this.f8708d;
    }

    public final Map zzi() {
        return this.f8705a;
    }
}
