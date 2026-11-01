package com.google.android.gms.internal.ads;

import g.ckm;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public abstract class zzgom {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8520a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f8521b;

    public /* synthetic */ zzgom(Class cls, Class cls2) {
        this.f8520a = cls;
        this.f8521b = cls2;
    }

    public static zzgom zzb(zzgok zzgokVar, Class cls, Class cls2) {
        return new ckm(zzgokVar, cls, cls2);
    }

    public abstract Object zza(zzgfw zzgfwVar) throws GeneralSecurityException;

    public final Class zzc() {
        return this.f8520a;
    }

    public final Class zzd() {
        return this.f8521b;
    }
}
