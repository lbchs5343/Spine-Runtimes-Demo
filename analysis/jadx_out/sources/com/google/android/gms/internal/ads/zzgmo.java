package com.google.android.gms.internal.ads;

import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.security.GeneralSecurityException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class zzgmo {

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f8480c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f8481d = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f8479b = Logger.getLogger(zzgmo.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public static final zzgmo f8478a = new zzgmo();

    public static zzgmo zzc() {
        return f8478a;
    }

    public final synchronized zzgfx e(String str) {
        if (!this.f8480c.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (zzgfx) this.f8480c.get(str);
    }

    public final synchronized void f(zzgfx zzgfxVar) {
        try {
            String str = ((zzgmx) zzgfxVar).f8486a;
            if (this.f8481d.containsKey(str) && !((Boolean) this.f8481d.get(str)).booleanValue()) {
                throw new GeneralSecurityException("New keys are already disallowed for key type ".concat(str));
            }
            zzgfx zzgfxVar2 = (zzgfx) this.f8480c.get(str);
            if (zzgfxVar2 != null && !zzgfxVar2.getClass().equals(zzgfxVar.getClass())) {
                f8479b.logp(Level.WARNING, "com.google.crypto.tink.internal.KeyManagerRegistry", "insertKeyManager", "Attempted overwrite of a registered key manager for key type ".concat(str));
                throw new GeneralSecurityException("typeUrl (" + str + ") is already registered with " + zzgfxVar2.getClass().getName() + ", cannot be re-registered with " + zzgfxVar.getClass().getName());
            }
            this.f8480c.putIfAbsent(str, zzgfxVar);
            this.f8481d.put(str, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final zzgfx zza(String str, Class cls) throws GeneralSecurityException {
        zzgfx e2 = e(str);
        if (e2.zzb().equals(cls)) {
            return e2;
        }
        String name = cls.getName();
        String valueOf = String.valueOf(e2.getClass());
        String obj = e2.zzb().toString();
        StringBuilder o = tn.o("Primitive type ", name, " not supported by key manager of type ", valueOf, ", which only supports: ");
        o.append(obj);
        throw new GeneralSecurityException(o.toString());
    }

    public final zzgfx zzb(String str) throws GeneralSecurityException {
        return e(str);
    }

    public final synchronized void zzd(zzgfx zzgfxVar, boolean z) throws GeneralSecurityException {
        zzf(zzgfxVar, 1, true);
    }

    public final boolean zze(String str) {
        return ((Boolean) this.f8481d.get(str)).booleanValue();
    }

    public final synchronized void zzf(zzgfx zzgfxVar, int i, boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(i)) {
            throw new GeneralSecurityException("Cannot register key manager: FIPS compatibility insufficient");
        }
        f(zzgfxVar);
    }
}
