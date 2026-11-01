package com.google.android.gms.internal.ads;

import g.hk;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgmz extends zzgfw {

    /* renamed from: a, reason: collision with root package name */
    public final zzgow f8489a;

    public zzgmz(zzgow zzgowVar, zzggn zzggnVar) throws GeneralSecurityException {
        int i = hk.f19376b[zzgowVar.zzb().ordinal()];
        this.f8489a = zzgowVar;
    }

    public final zzgow zza(zzggn zzggnVar) throws GeneralSecurityException {
        int[] iArr = hk.f19376b;
        zzgow zzgowVar = this.f8489a;
        int i = iArr[zzgowVar.zzb().ordinal()];
        return zzgowVar;
    }

    public final Integer zzb() {
        return this.f8489a.zzf();
    }
}
