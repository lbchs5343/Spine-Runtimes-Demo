package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgx {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8663a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public Map f8664b;

    public final synchronized Map zza() {
        try {
            if (this.f8664b == null) {
                this.f8664b = Collections.unmodifiableMap(new HashMap(this.f8663a));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f8664b;
    }
}
