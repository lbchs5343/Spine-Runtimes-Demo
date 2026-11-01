package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgmk {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8474a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8475b = new HashMap();

    public final zzgmk zza(Enum r2, Object obj) {
        this.f8474a.put(r2, obj);
        this.f8475b.put(obj, r2);
        return this;
    }

    public final zzgmm zzb() {
        return new zzgmm(Collections.unmodifiableMap(this.f8474a), Collections.unmodifiableMap(this.f8475b));
    }
}
