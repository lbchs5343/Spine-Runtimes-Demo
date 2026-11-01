package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgmm {

    /* renamed from: a, reason: collision with root package name */
    public final Map f8476a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f8477b;

    public /* synthetic */ zzgmm(Map map, Map map2) {
        this.f8476a = map;
        this.f8477b = map2;
    }

    public static zzgmk zza() {
        return new zzgmk();
    }

    public final Enum zzb(Object obj) throws GeneralSecurityException {
        Enum r0 = (Enum) this.f8477b.get(obj);
        if (r0 != null) {
            return r0;
        }
        throw new GeneralSecurityException("Unable to convert object enum: ".concat(String.valueOf(obj)));
    }

    public final Object zzc(Enum r3) throws GeneralSecurityException {
        Object obj = this.f8476a.get(r3);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: ".concat(String.valueOf(r3)));
    }
}
