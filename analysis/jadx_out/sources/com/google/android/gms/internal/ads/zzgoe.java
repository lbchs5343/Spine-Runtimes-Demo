package com.google.android.gms.internal.ads;

import g.glk;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public abstract class zzgoe {

    /* renamed from: a, reason: collision with root package name */
    public final zzgwu f8516a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f8517b;

    public /* synthetic */ zzgoe(zzgwu zzgwuVar, Class cls) {
        this.f8516a = zzgwuVar;
        this.f8517b = cls;
    }

    public static zzgoe zzb(zzgoc zzgocVar, zzgwu zzgwuVar, Class cls) {
        return new glk(zzgocVar, zzgwuVar, cls);
    }

    public abstract zzggj zza(zzgpb zzgpbVar) throws GeneralSecurityException;

    public final zzgwu zzc() {
        return this.f8516a;
    }

    public final Class zzd() {
        return this.f8517b;
    }
}
