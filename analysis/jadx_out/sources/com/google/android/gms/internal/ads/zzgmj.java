package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Security;

/* loaded from: classes3.dex */
public final class zzgmj {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f8473a = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};

    public static Provider zza() {
        for (int i = 0; i < 3; i++) {
            Provider provider = Security.getProvider(f8473a[i]);
            if (provider != null) {
                return provider;
            }
        }
        return null;
    }
}
