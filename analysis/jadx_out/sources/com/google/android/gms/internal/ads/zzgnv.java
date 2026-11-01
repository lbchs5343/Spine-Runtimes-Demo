package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgnv {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgnv f8510a = new zzgnv();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8511b = new HashMap();

    public static zzgnv zzb() {
        return f8510a;
    }

    public final synchronized zzggj zza(String str) throws GeneralSecurityException {
        if (!this.f8511b.containsKey("AES128_GCM")) {
            throw new GeneralSecurityException("Name AES128_GCM does not exist");
        }
        return (zzggj) this.f8511b.get("AES128_GCM");
    }

    public final synchronized void zzc(String str, zzggj zzggjVar) throws GeneralSecurityException {
        try {
            if (!this.f8511b.containsKey(str)) {
                this.f8511b.put(str, zzggjVar);
                return;
            }
            if (((zzggj) this.f8511b.get(str)).equals(zzggjVar)) {
                return;
            }
            throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + String.valueOf(this.f8511b.get(str)) + "), cannot insert " + String.valueOf(zzggjVar));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(Map map) throws GeneralSecurityException {
        for (Map.Entry entry : map.entrySet()) {
            zzc((String) entry.getKey(), (zzggj) entry.getValue());
        }
    }
}
