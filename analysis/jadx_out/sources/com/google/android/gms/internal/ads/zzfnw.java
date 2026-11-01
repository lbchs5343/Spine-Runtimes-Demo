package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzfnw {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfnw f8084a = new zzfnw();

    /* renamed from: b, reason: collision with root package name */
    public Context f8085b;

    public static zzfnw zzb() {
        return f8084a;
    }

    public final Context zza() {
        return this.f8085b;
    }

    public final void zzc(Context context) {
        this.f8085b = context != null ? context.getApplicationContext() : null;
    }
}
