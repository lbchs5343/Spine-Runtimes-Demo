package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public final class zzcab {

    /* renamed from: a, reason: collision with root package name */
    public BigInteger f5126a = BigInteger.ONE;

    /* renamed from: b, reason: collision with root package name */
    public String f5127b = "0";

    public final synchronized String zza() {
        String bigInteger;
        bigInteger = this.f5126a.toString();
        this.f5126a = this.f5126a.add(BigInteger.ONE);
        this.f5127b = bigInteger;
        return bigInteger;
    }

    public final synchronized String zzb() {
        return this.f5127b;
    }
}
