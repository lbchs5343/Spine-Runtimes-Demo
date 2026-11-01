package com.google.android.gms.internal.ads;

import g.bpw;
import g.cry;
import java.security.InvalidKeyException;

/* loaded from: classes3.dex */
public final class zzglv extends cry {
    public zzglv(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    @Override // g.cry
    public final int zza() {
        return 24;
    }

    @Override // g.cry
    public final int[] zzb(int[] iArr, int i) {
        int length = iArr.length;
        if (length != 6) {
            throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(length * 32)));
        }
        int[] iArr2 = new int[16];
        int[] e2 = bpw.e(this.f13407a, iArr);
        int[] iArr3 = bpw.f11983a;
        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
        System.arraycopy(e2, 0, iArr2, iArr3.length, 8);
        iArr2[12] = i;
        iArr2[13] = 0;
        iArr2[14] = iArr[4];
        iArr2[15] = iArr[5];
        return iArr2;
    }
}
