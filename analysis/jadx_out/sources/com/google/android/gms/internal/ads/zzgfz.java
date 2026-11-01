package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgfz {
    public static final zzggj zza(zzggj zzggjVar) throws GeneralSecurityException {
        if (zzggjVar != null) {
            return zzggjVar;
        }
        try {
            return zzggp.zza(((zzgox) zzgnz.zzc().zze(null, zzgox.class)).zzc().zzaV());
        } catch (GeneralSecurityException e2) {
            throw new zzgpi("Parsing parameters failed in getProto(). You probably want to call some Tink register function for ".concat("null"), e2);
        }
    }
}
