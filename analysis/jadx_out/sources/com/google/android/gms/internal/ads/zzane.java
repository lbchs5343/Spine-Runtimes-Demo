package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzane {

    /* renamed from: a, reason: collision with root package name */
    public final int f4377a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4378b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4379c;
    public byte[] zza;
    public int zzb;

    public zzane(int i, int i2) {
        this.f4377a = i;
        byte[] bArr = new byte[131];
        this.zza = bArr;
        bArr[2] = 1;
    }

    public final void zza(byte[] bArr, int i, int i2) {
        if (this.f4378b) {
            int i3 = i2 - i;
            byte[] bArr2 = this.zza;
            int length = bArr2.length;
            int i4 = this.zzb + i3;
            if (length < i4) {
                this.zza = Arrays.copyOf(bArr2, i4 + i4);
            }
            System.arraycopy(bArr, i, this.zza, this.zzb, i3);
            this.zzb += i3;
        }
    }

    public final void zzb() {
        this.f4378b = false;
        this.f4379c = false;
    }

    public final void zzc(int i) {
        zzdb.zzf(!this.f4378b);
        boolean z = i == this.f4377a;
        this.f4378b = z;
        if (z) {
            this.zzb = 3;
            this.f4379c = false;
        }
    }

    public final boolean zzd(int i) {
        if (!this.f4378b) {
            return false;
        }
        this.zzb -= i;
        this.f4378b = false;
        this.f4379c = true;
        return true;
    }

    public final boolean zze() {
        return this.f4379c;
    }
}
