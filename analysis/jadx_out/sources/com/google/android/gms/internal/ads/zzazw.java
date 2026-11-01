package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class zzazw extends zzazn {

    /* renamed from: d, reason: collision with root package name */
    public final int f4655d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4656e;

    /* renamed from: f, reason: collision with root package name */
    public MessageDigest f4657f;

    public zzazw(int i) {
        int i2 = i >> 3;
        this.f4655d = (i & 7) > 0 ? i2 + 1 : i2;
        this.f4656e = i;
    }

    public final byte[] zzb(String str) {
        synchronized (this.f4648b) {
            try {
                MessageDigest c2 = c();
                this.f4657f = c2;
                if (c2 == null) {
                    return new byte[0];
                }
                c2.reset();
                this.f4657f.update(str.getBytes(Charset.forName("UTF-8")));
                byte[] digest = this.f4657f.digest();
                int length = digest.length;
                int i = this.f4655d;
                if (length > i) {
                    length = i;
                }
                byte[] bArr = new byte[length];
                System.arraycopy(digest, 0, bArr, 0, length);
                if ((this.f4656e & 7) > 0) {
                    long j = 0;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 > 0) {
                            j <<= 8;
                        }
                        j += bArr[i2] & 255;
                    }
                    long j2 = j >>> (8 - (this.f4656e & 7));
                    int i3 = this.f4655d;
                    while (true) {
                        i3--;
                        if (i3 < 0) {
                            break;
                        }
                        bArr[i3] = (byte) (255 & j2);
                        j2 >>>= 8;
                    }
                }
                return bArr;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
