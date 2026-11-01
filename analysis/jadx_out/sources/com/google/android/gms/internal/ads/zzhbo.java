package com.google.android.gms.internal.ads;

import g.dub;
import g.eub;
import g.gli;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzhbo {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhbo f8699a = new zzhbo(0, new int[0], new Object[0], false);

    /* renamed from: b, reason: collision with root package name */
    public int f8700b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8701c;

    /* renamed from: d, reason: collision with root package name */
    public int f8702d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f8703e;

    /* renamed from: f, reason: collision with root package name */
    public Object[] f8704f;

    public zzhbo(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f8702d = i;
        this.f8703e = iArr;
        this.f8704f = objArr;
        this.f8701c = z;
    }

    public static zzhbo g() {
        return new zzhbo(0, new int[8], new Object[8], true);
    }

    public static zzhbo zzc() {
        return f8699a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhbo)) {
            return false;
        }
        zzhbo zzhboVar = (zzhbo) obj;
        int i = this.f8702d;
        if (i == zzhboVar.f8702d) {
            int[] iArr = this.f8703e;
            int[] iArr2 = zzhboVar.f8703e;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f8704f;
                    Object[] objArr2 = zzhboVar.f8704f;
                    int i3 = this.f8702d;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    public final void h(int i, Object obj) {
        if (!this.f8701c) {
            throw new UnsupportedOperationException();
        }
        i(this.f8702d + 1);
        int[] iArr = this.f8703e;
        int i2 = this.f8702d;
        iArr[i2] = i;
        this.f8704f[i2] = obj;
        this.f8702d = i2 + 1;
    }

    public final int hashCode() {
        int i = this.f8702d;
        int i2 = i + 527;
        int[] iArr = this.f8703e;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.f8704f;
        int i7 = this.f8702d;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final void i(int i) {
        int[] iArr = this.f8703e;
        if (i > iArr.length) {
            int i2 = this.f8702d;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f8703e = Arrays.copyOf(iArr, i);
            this.f8704f = Arrays.copyOf(this.f8704f, i);
        }
    }

    public final int zza() {
        int zzD;
        int zzE;
        int zzD2;
        int i = this.f8700b;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8702d; i3++) {
            int i4 = this.f8703e[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.f8704f[i3]).getClass();
                    zzD2 = zzgyc.zzD(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzgxp zzgxpVar = (zzgxp) this.f8704f[i3];
                    int zzD3 = zzgyc.zzD(i7);
                    int zzd = zzgxpVar.zzd();
                    i2 = zzgyc.zzD(zzd) + zzd + zzD3 + i2;
                } else if (i6 == 3) {
                    int zzD4 = zzgyc.zzD(i5 << 3);
                    zzD = zzD4 + zzD4;
                    zzE = ((zzhbo) this.f8704f[i3]).zza();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzgzl("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.f8704f[i3]).getClass();
                    zzD2 = zzgyc.zzD(i5 << 3) + 4;
                }
                i2 = zzD2 + i2;
            } else {
                int i8 = i5 << 3;
                long longValue = ((Long) this.f8704f[i3]).longValue();
                zzD = zzgyc.zzD(i8);
                zzE = zzgyc.zzE(longValue);
            }
            i2 = zzE + zzD + i2;
        }
        this.f8700b = i2;
        return i2;
    }

    public final int zzb() {
        int i = this.f8700b;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8702d; i3++) {
            int i4 = this.f8703e[i3] >>> 3;
            zzgxp zzgxpVar = (zzgxp) this.f8704f[i3];
            int zzD = zzgyc.zzD(8);
            int zzD2 = zzgyc.zzD(i4) + zzgyc.zzD(16);
            int zzD3 = zzgyc.zzD(24);
            int zzd = zzgxpVar.zzd();
            i2 += zzD + zzD + zzD2 + dub.f(zzd, zzd, zzD3);
        }
        this.f8700b = i2;
        return i2;
    }

    public final void zzh() {
        if (this.f8701c) {
            this.f8701c = false;
        }
    }

    public final void zzl(gli gliVar) throws IOException {
        if (this.f8702d != 0) {
            for (int i = 0; i < this.f8702d; i++) {
                int i2 = this.f8703e[i];
                Object obj = this.f8704f[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    ((eub) gliVar).f16166a.zzv(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    ((eub) gliVar).f16166a.zzj(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    ((eub) gliVar).f16166a.zzN(i4, (zzgxp) obj);
                } else if (i3 == 3) {
                    eub eubVar = (eub) gliVar;
                    eubVar.f16166a.zzs(i4, 3);
                    ((zzhbo) obj).zzl(gliVar);
                    eubVar.f16166a.zzs(i4, 4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzgzl("Protocol message tag had invalid wire type."));
                    }
                    ((eub) gliVar).f16166a.zzh(i4, ((Integer) obj).intValue());
                }
            }
        }
    }
}
