package com.google.android.gms.internal.ads;

import g.cqw;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public final class zzgoz {

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f8548a = new cqw(13);

    public static byte[] zzb(int i) {
        byte[] bArr = new byte[i];
        ((SecureRandom) f8548a.get()).nextBytes(bArr);
        return bArr;
    }
}
