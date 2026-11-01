package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Random;

/* loaded from: classes3.dex */
public final class zzwj {

    /* renamed from: a, reason: collision with root package name */
    public final Random f8921a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f8922b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f8923c;

    public zzwj(int i) {
        this(new Random());
    }

    public zzwj(Random random) {
        this(new int[0], random);
    }

    public zzwj(int[] iArr, Random random) {
        this.f8922b = iArr;
        this.f8921a = random;
        this.f8923c = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.f8923c[iArr[i]] = i;
        }
    }

    public final int zza() {
        int[] iArr = this.f8922b;
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    public final int zzb() {
        int[] iArr = this.f8922b;
        int length = iArr.length;
        if (length > 0) {
            return iArr[length - 1];
        }
        return -1;
    }

    public final int zzc() {
        return this.f8922b.length;
    }

    public final int zzd(int i) {
        int i2 = this.f8923c[i] + 1;
        int[] iArr = this.f8922b;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return -1;
    }

    public final int zze(int i) {
        int i2 = this.f8923c[i] - 1;
        if (i2 >= 0) {
            return this.f8922b[i2];
        }
        return -1;
    }

    public final zzwj zzf() {
        return new zzwj(new Random(this.f8921a.nextLong()));
    }

    public final zzwj zzg(int i, int i2) {
        int[] iArr;
        Random random;
        int[] iArr2 = new int[i2];
        int[] iArr3 = new int[i2];
        int i3 = 0;
        while (true) {
            iArr = this.f8922b;
            random = this.f8921a;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = random.nextInt(iArr.length + 1);
            int i4 = i3 + 1;
            int nextInt = random.nextInt(i4);
            iArr3[i3] = iArr3[nextInt];
            iArr3[nextInt] = i3;
            i3 = i4;
        }
        Arrays.sort(iArr2);
        int[] iArr4 = new int[iArr.length + i2];
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < iArr.length + i2; i7++) {
            if (i5 >= i2 || i6 != iArr2[i5]) {
                int i8 = i6 + 1;
                int i9 = iArr[i6];
                iArr4[i7] = i9;
                if (i9 >= 0) {
                    iArr4[i7] = i9 + i2;
                }
                i6 = i8;
            } else {
                iArr4[i7] = iArr3[i5];
                i5++;
            }
        }
        return new zzwj(iArr4, new Random(random.nextLong()));
    }

    public final zzwj zzh(int i, int i2) {
        int[] iArr = this.f8922b;
        int[] iArr2 = new int[iArr.length - i2];
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            int i5 = iArr[i4];
            if (i5 < 0 || i5 >= i2) {
                int i6 = i4 - i3;
                if (i5 >= 0) {
                    i5 -= i2;
                }
                iArr2[i6] = i5;
            } else {
                i3++;
            }
        }
        return new zzwj(iArr2, new Random(this.f8921a.nextLong()));
    }
}
