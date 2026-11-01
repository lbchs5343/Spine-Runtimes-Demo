package com.google.android.gms.internal.ads;

import g.cry;
import g.gsb;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzglw extends gsb {
    public zzglw(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // g.gsb
    public final cry a(int i, byte[] bArr) {
        return new zzglv(bArr, i);
    }
}
