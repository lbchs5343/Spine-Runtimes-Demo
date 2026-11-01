package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgnb {

    /* renamed from: a, reason: collision with root package name */
    public HashMap f8491a = new HashMap();

    public final zzgnd zza() {
        if (this.f8491a == null) {
            throw new IllegalStateException("cannot call build() twice");
        }
        zzgnd zzgndVar = new zzgnd(Collections.unmodifiableMap(this.f8491a));
        this.f8491a = null;
        return zzgndVar;
    }
}
