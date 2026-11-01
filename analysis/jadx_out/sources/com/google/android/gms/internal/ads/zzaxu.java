package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzaxu {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4600a = new HashMap();

    public final AtomicReference zza(String str) {
        synchronized (this) {
            try {
                if (!this.f4600a.containsKey(str)) {
                    this.f4600a.put(str, new AtomicReference());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return (AtomicReference) this.f4600a.get(str);
    }
}
