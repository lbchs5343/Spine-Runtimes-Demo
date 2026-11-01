package com.google.android.gms.internal.ads;

import g.gsr;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzgpy implements zzgov {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgpy f8576a = new zzgpy();

    @Override // com.google.android.gms.internal.ads.zzgov
    public final Class zza() {
        return zzgpv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final Class zzb() {
        return zzgpv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final /* synthetic */ Object zzc(zzgou zzgouVar) throws GeneralSecurityException {
        if (zzgouVar.zzc() == null) {
            throw new GeneralSecurityException("no primary in primitive set");
        }
        Iterator it = zzgouVar.zze().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) it.next()).iterator();
            while (it2.hasNext()) {
            }
        }
        return new gsr();
    }
}
