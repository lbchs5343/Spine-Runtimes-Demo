package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class zzfq {

    /* renamed from: a, reason: collision with root package name */
    public int f8147a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8148b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8149c;

    /* renamed from: d, reason: collision with root package name */
    public int f8150d;

    public zzfq(byte[] bArr, int i, int i2) {
        this.f8148b = bArr;
        this.f8150d = i;
        this.f8149c = i2;
        e();
    }

    public final void e() {
        int i;
        int i2 = this.f8150d;
        boolean z = false;
        if (i2 >= 0 && (i2 < (i = this.f8149c) || (i2 == i && this.f8147a == 0))) {
            z = true;
        }
        zzdb.zzf(z);
    }

    public final boolean f(int i) {
        if (i < 2 || i >= this.f8149c) {
            return false;
        }
        byte[] bArr = this.f8148b;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i + (-1)] == 0;
    }

    public final int zza(int i) {
        int i2;
        byte[] bArr;
        this.f8147a += i;
        int i3 = 0;
        while (true) {
            i2 = this.f8147a;
            bArr = this.f8148b;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f8147a = i4;
            int i5 = this.f8150d;
            i3 |= (bArr[i5] & 255) << i4;
            if (true != f(i5 + 1)) {
                r3 = 1;
            }
            this.f8150d = i5 + r3;
        }
        int i6 = this.f8150d;
        int i7 = i3 | ((bArr[i6] & 255) >> (8 - i2));
        int i8 = 32 - i;
        if (i2 == 8) {
            this.f8147a = 0;
            this.f8150d = i6 + (true != f(i6 + 1) ? 1 : 2);
        }
        int i9 = ((-1) >>> i8) & i7;
        e();
        return i9;
    }

    public final int zzb() {
        int i = 0;
        while (!zzh()) {
            i++;
        }
        int zza = ((1 << i) - 1) + (i > 0 ? zza(i) : 0);
        return ((zza + 1) / 2) * (zza % 2 == 0 ? -1 : 1);
    }

    public final int zzc() {
        int i = 0;
        while (!zzh()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? zza(i) : 0);
    }

    public final void zzd() {
        int i = this.f8147a;
        if (i > 0) {
            zzf(8 - i);
        }
    }

    public final void zze() {
        int i = this.f8147a + 1;
        this.f8147a = i;
        if (i == 8) {
            this.f8147a = 0;
            int i2 = this.f8150d;
            this.f8150d = i2 + (true == f(i2 + 1) ? 2 : 1);
        }
        e();
    }

    public final void zzf(int i) {
        int i2 = this.f8150d;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f8150d = i4;
        int i5 = (i - (i3 * 8)) + this.f8147a;
        this.f8147a = i5;
        if (i5 > 7) {
            this.f8150d = i4 + 1;
            this.f8147a = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 > this.f8150d) {
                e();
                return;
            } else if (f(i2)) {
                this.f8150d++;
                i2 += 2;
            }
        }
    }

    public final boolean zzg(int i) {
        int i2;
        int i3 = this.f8150d;
        int i4 = i / 8;
        int i5 = i3 + i4;
        int i6 = (this.f8147a + i) - (i4 * 8);
        if (i6 > 7) {
            i5++;
            i6 -= 8;
        }
        while (true) {
            i3++;
            i2 = this.f8149c;
            if (i3 > i5 || i5 >= i2) {
                break;
            }
            if (f(i3)) {
                i5++;
                i3 += 2;
            }
        }
        if (i5 >= i2) {
            return i5 == i2 && i6 == 0;
        }
        return true;
    }

    public final boolean zzh() {
        int i = this.f8148b[this.f8150d] & (TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME >> this.f8147a);
        zze();
        return i != 0;
    }
}
