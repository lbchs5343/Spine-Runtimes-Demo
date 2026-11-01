package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzacg implements zzacs {

    /* renamed from: a, reason: collision with root package name */
    public long f4076a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f4077b = new byte[65536];

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f4078c = new byte[4096];

    /* renamed from: d, reason: collision with root package name */
    public int f4079d;

    /* renamed from: e, reason: collision with root package name */
    public final zzn f4080e;

    /* renamed from: f, reason: collision with root package name */
    public final long f4081f;

    /* renamed from: g, reason: collision with root package name */
    public int f4082g;

    static {
        zzax.zzb("media3.extractor");
    }

    public zzacg(zzn zznVar, long j, long j2) {
        this.f4080e = zznVar;
        this.f4076a = j;
        this.f4081f = j2;
    }

    public final int h(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int zza = this.f4080e.zza(bArr, i + i3, i2 - i3);
        if (zza != -1) {
            return i3 + zza;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    public final void i(int i) {
        int i2 = this.f4079d + i;
        int length = this.f4077b.length;
        if (i2 > length) {
            this.f4077b = Arrays.copyOf(this.f4077b, Math.max(65536 + i2, Math.min(length + length, i2 + 524288)));
        }
    }

    public final void j(int i) {
        int i2 = this.f4082g - i;
        this.f4082g = i2;
        this.f4079d = 0;
        byte[] bArr = this.f4077b;
        byte[] bArr2 = i2 < bArr.length + (-524288) ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f4077b = bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzacs, com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        zzacg zzacgVar;
        int i3 = this.f4082g;
        int i4 = 0;
        if (i3 != 0) {
            int min = Math.min(i3, i2);
            System.arraycopy(this.f4077b, 0, bArr, i, min);
            j(min);
            i4 = min;
        }
        if (i4 == 0) {
            zzacgVar = this;
            i4 = zzacgVar.h(bArr, i, i2, 0, true);
        } else {
            zzacgVar = this;
        }
        if (i4 != -1) {
            zzacgVar.f4076a += i4;
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final int zzb(byte[] bArr, int i, int i2) throws IOException {
        zzacg zzacgVar;
        int min;
        i(i2);
        int i3 = this.f4082g;
        int i4 = this.f4079d;
        int i5 = i3 - i4;
        if (i5 == 0) {
            zzacgVar = this;
            min = zzacgVar.h(this.f4077b, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            zzacgVar.f4082g += min;
        } else {
            zzacgVar = this;
            min = Math.min(i2, i5);
        }
        System.arraycopy(zzacgVar.f4077b, zzacgVar.f4079d, bArr, i, min);
        zzacgVar.f4079d += min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final int zzc(int i) throws IOException {
        zzacg zzacgVar;
        int min = Math.min(this.f4082g, 1);
        j(min);
        if (min == 0) {
            zzacgVar = this;
            min = zzacgVar.h(this.f4078c, 0, Math.min(1, 4096), 0, true);
        } else {
            zzacgVar = this;
        }
        if (min != -1) {
            zzacgVar.f4076a += min;
        }
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final long zzd() {
        return this.f4081f;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final long zze() {
        return this.f4076a + this.f4079d;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final long zzf() {
        return this.f4076a;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final void zzg(int i) throws IOException {
        zzl(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final void zzh(byte[] bArr, int i, int i2) throws IOException {
        zzm(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final void zzi(byte[] bArr, int i, int i2) throws IOException {
        zzn(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final void zzj() {
        this.f4079d = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final void zzk(int i) throws IOException {
        zzo(i, false);
    }

    public final boolean zzl(int i, boolean z) throws IOException {
        i(i);
        int i2 = this.f4082g - this.f4079d;
        while (i2 < i) {
            int i3 = i;
            boolean z2 = z;
            i2 = h(this.f4077b, this.f4079d, i3, i2, z2);
            if (i2 == -1) {
                return false;
            }
            this.f4082g = this.f4079d + i2;
            i = i3;
            z = z2;
        }
        this.f4079d += i;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final boolean zzm(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!zzl(i2, z)) {
            return false;
        }
        System.arraycopy(this.f4077b, this.f4079d - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacs
    public final boolean zzn(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int min;
        int i3 = this.f4082g;
        if (i3 == 0) {
            min = 0;
        } else {
            min = Math.min(i3, i2);
            System.arraycopy(this.f4077b, 0, bArr, i, min);
            j(min);
        }
        int i4 = min;
        while (i4 < i2 && i4 != -1) {
            i4 = h(bArr, i, i2, i4, z);
        }
        if (i4 != -1) {
            this.f4076a += i4;
        }
        return i4 != -1;
    }

    public final boolean zzo(int i, boolean z) throws IOException {
        int min = Math.min(this.f4082g, i);
        j(min);
        int i2 = min;
        while (i2 < i && i2 != -1) {
            i2 = h(this.f4078c, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        if (i2 != -1) {
            this.f4076a += i2;
        }
        return i2 != -1;
    }
}
