package com.google.android.gms.internal.ads;

import g.bnv;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public abstract class zzgmw {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8484a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f8485b;

    public /* synthetic */ zzgmw(Class cls, Class cls2) {
        this.f8484a = cls;
        this.f8485b = cls2;
    }

    public static zzgmw zzb(zzgmu zzgmuVar, Class cls, Class cls2) {
        return new bnv(zzgmuVar, cls, cls2);
    }

    public abstract zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.f8484a;
    }

    public final Class zzd() {
        return this.f8485b;
    }
}
