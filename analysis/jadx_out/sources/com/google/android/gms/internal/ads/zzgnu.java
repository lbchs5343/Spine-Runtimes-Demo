package com.google.android.gms.internal.ads;

import g.acg;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzgnu {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgnu f8507a = new zzgnu();

    /* renamed from: b, reason: collision with root package name */
    public static final acg f8508b = new acg();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f8509c = new AtomicReference();

    public static zzgnu zzb() {
        return f8507a;
    }

    public final zzgnf zza() {
        zzgnf zzgnfVar = (zzgnf) this.f8509c.get();
        return zzgnfVar == null ? f8508b : zzgnfVar;
    }
}
