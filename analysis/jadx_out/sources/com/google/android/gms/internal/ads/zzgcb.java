package com.google.android.gms.internal.ads;

import g.ata;
import g.azh;
import g.bwk;
import g.esw;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class zzgcb {

    /* renamed from: a, reason: collision with root package name */
    public static final bwk f8251a;

    static {
        new ata("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new ata("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new azh("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new azh("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f8251a = new bwk(new esw("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public static zzgcb zzi() {
        return f8251a;
    }

    public abstract int b(int i);

    public CharSequence c(CharSequence charSequence) {
        throw null;
    }

    public abstract int d(byte[] bArr, CharSequence charSequence);

    public abstract void e(StringBuilder sb, byte[] bArr, int i);

    public abstract int f(int i);

    public abstract zzgcb zzf();

    public final String zzj(byte[] bArr, int i, int i2) {
        zzfwq.zzj(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(b(i2));
        try {
            e(sb, bArr, i2);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public final byte[] zzk(CharSequence charSequence) {
        try {
            CharSequence c2 = c(charSequence);
            int f2 = f(c2.length());
            byte[] bArr = new byte[f2];
            int d2 = d(bArr, c2);
            if (d2 == f2) {
                return bArr;
            }
            byte[] bArr2 = new byte[d2];
            System.arraycopy(bArr, 0, bArr2, 0, d2);
            return bArr2;
        } catch (zzgbz e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
