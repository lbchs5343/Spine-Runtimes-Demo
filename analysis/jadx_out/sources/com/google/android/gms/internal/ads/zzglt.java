package com.google.android.gms.internal.ads;

import g.cry;
import g.gsb;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzglt extends gsb {
    public zzglt(byte[] bArr) throws GeneralSecurityException {
        super(bArr);
    }

    @Override // g.gsb
    public final cry a(int i, byte[] bArr) {
        return new zzglr(bArr, i);
    }
}
