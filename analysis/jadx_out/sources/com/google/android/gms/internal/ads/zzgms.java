package com.google.android.gms.internal.ads;

import g.boi;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public abstract class zzgms {

    /* renamed from: a, reason: collision with root package name */
    public final zzgwu f8482a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f8483b;

    public /* synthetic */ zzgms(zzgwu zzgwuVar, Class cls) {
        this.f8482a = zzgwuVar;
        this.f8483b = cls;
    }

    public static zzgms zzb(zzgmq zzgmqVar, zzgwu zzgwuVar, Class cls) {
        return new boi(zzgmqVar, zzgwuVar, cls);
    }

    public abstract zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) throws GeneralSecurityException;

    public final zzgwu zzc() {
        return this.f8482a;
    }

    public final Class zzd() {
        return this.f8483b;
    }
}
