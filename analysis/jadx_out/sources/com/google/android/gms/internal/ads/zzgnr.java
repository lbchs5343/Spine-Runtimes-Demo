package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgnr {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgnr f8505a = new zzgnr();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8506b = new HashMap();

    public static zzgnr zza() {
        return f8505a;
    }

    public final synchronized void zzb(zzgnq zzgnqVar, Class cls) throws GeneralSecurityException {
        try {
            zzgnq zzgnqVar2 = (zzgnq) this.f8506b.get(cls);
            if (zzgnqVar2 != null && !zzgnqVar2.equals(zzgnqVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            this.f8506b.put(cls, zzgnqVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
