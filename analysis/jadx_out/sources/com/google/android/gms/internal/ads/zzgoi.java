package com.google.android.gms.internal.ads;

import g.adu;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public abstract class zzgoi {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8518a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f8519b;

    public /* synthetic */ zzgoi(Class cls, Class cls2) {
        this.f8518a = cls;
        this.f8519b = cls2;
    }

    public static zzgoi zzb(zzgog zzgogVar, Class cls, Class cls2) {
        return new adu(zzgogVar, cls, cls2);
    }

    public abstract zzgpb zza(zzggj zzggjVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.f8518a;
    }

    public final Class zzd() {
        return this.f8519b;
    }
}
