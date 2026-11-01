package com.google.android.gms.internal.ads;

import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class zzgmh {
    public static boolean zza(int i) {
        Boolean bool;
        if (i - 1 == 0) {
            return !zzgmi.zzb();
        }
        if (zzgmi.zzb()) {
            try {
                bool = (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", null).invoke(null, null);
            } catch (Exception unused) {
                zzgmi.f8471a.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
                bool = Boolean.FALSE;
            }
            if (!bool.booleanValue()) {
                return false;
            }
        }
        return true;
    }
}
