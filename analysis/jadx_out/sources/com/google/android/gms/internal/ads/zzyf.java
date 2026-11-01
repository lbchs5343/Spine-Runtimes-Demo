package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzyf {

    /* renamed from: a, reason: collision with root package name */
    public final int[][][] f8950a;

    /* renamed from: b, reason: collision with root package name */
    public final zzwr f8951b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f8952c;

    /* renamed from: d, reason: collision with root package name */
    public final zzwr[] f8953d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f8954e;

    public zzyf(int[] iArr, zzwr[] zzwrVarArr, int[] iArr2, int[][][] iArr3, zzwr zzwrVar) {
        this.f8952c = iArr;
        this.f8953d = zzwrVarArr;
        this.f8950a = iArr3;
        this.f8954e = iArr2;
        this.f8951b = zzwrVar;
    }

    public final int zza(int i, int i2, boolean z) {
        int[][][] iArr;
        zzwr[] zzwrVarArr = this.f8953d;
        int i3 = zzwrVarArr[i].zzb(i2).zza;
        int[] iArr2 = new int[i3];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            iArr = this.f8950a;
            if (i5 >= i3) {
                break;
            }
            if ((iArr[i][i2][i5] & 7) == 4) {
                iArr2[i6] = i5;
                i6++;
            }
            i5++;
        }
        int[] copyOf = Arrays.copyOf(iArr2, i6);
        String str = null;
        boolean z2 = false;
        int i7 = 0;
        int i8 = 16;
        while (i4 < copyOf.length) {
            String str2 = zzwrVarArr[i].zzb(i2).zzb(copyOf[i4]).zzo;
            int i9 = i7 + 1;
            if (i7 == 0) {
                str = str2;
            } else {
                z2 |= !Objects.equals(str, str2);
            }
            i8 = Math.min(i8, iArr[i][i2][i4] & 24);
            i4++;
            i7 = i9;
        }
        return z2 ? Math.min(i8, this.f8954e[i]) : i8;
    }

    public final int zzb(int i, int i2, int i3) {
        return this.f8950a[i][i2][i3];
    }

    public final int zzc(int i) {
        return this.f8952c[i];
    }

    public final zzwr zzd(int i) {
        return this.f8953d[i];
    }

    public final zzwr zze() {
        return this.f8951b;
    }
}
