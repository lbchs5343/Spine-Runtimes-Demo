package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzady {

    /* renamed from: a, reason: collision with root package name */
    public long f4123a;

    /* renamed from: b, reason: collision with root package name */
    public int f4124b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f4125c = new byte[10];

    /* renamed from: d, reason: collision with root package name */
    public int f4126d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4127e;

    /* renamed from: f, reason: collision with root package name */
    public int f4128f;

    /* renamed from: g, reason: collision with root package name */
    public int f4129g;

    public final void zza(zzadx zzadxVar, zzadw zzadwVar) {
        if (this.f4128f > 0) {
            zzadxVar.zzs(this.f4123a, this.f4124b, this.f4126d, this.f4129g, zzadwVar);
            this.f4128f = 0;
        }
    }

    public final void zzb() {
        this.f4127e = false;
        this.f4128f = 0;
    }

    public final void zzc(zzadx zzadxVar, long j, int i, int i2, int i3, zzadw zzadwVar) {
        zzdb.zzg(this.f4129g <= i2 + i3, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.f4127e) {
            int i4 = this.f4128f;
            int i5 = i4 + 1;
            this.f4128f = i5;
            if (i4 == 0) {
                this.f4123a = j;
                this.f4124b = i;
                this.f4126d = 0;
            }
            this.f4126d += i2;
            this.f4129g = i3;
            if (i5 >= 16) {
                zza(zzadxVar, zzadwVar);
            }
        }
    }

    public final void zzd(zzacs zzacsVar) throws IOException {
        if (this.f4127e) {
            return;
        }
        byte[] bArr = this.f4125c;
        zzacsVar.zzh(bArr, 0, 10);
        zzacsVar.zzj();
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            this.f4127e = true;
        }
    }
}
