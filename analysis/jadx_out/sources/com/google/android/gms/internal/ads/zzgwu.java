package com.google.android.gms.internal.ads;

import g.tn;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzgwu {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8661a;

    public zzgwu(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        this.f8661a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i);
    }

    public static zzgwu zzb(byte[] bArr) {
        if (bArr != null) {
            return new zzgwu(bArr, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgwu) {
            return Arrays.equals(((zzgwu) obj).f8661a, this.f8661a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f8661a);
    }

    public final String toString() {
        byte[] bArr = this.f8661a;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b2 : bArr) {
            sb.append("0123456789abcdef".charAt((b2 & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b2 & 15));
        }
        return tn.ad("Bytes(", sb.toString(), ")");
    }

    public final int zza() {
        return this.f8661a.length;
    }

    public final byte[] zzc() {
        byte[] bArr = this.f8661a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }
}
