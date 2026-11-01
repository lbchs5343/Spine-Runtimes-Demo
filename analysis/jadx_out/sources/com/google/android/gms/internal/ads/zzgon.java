package com.google.android.gms.internal.ads;

import g.ejr;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgon {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8522a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8523b;

    public /* synthetic */ zzgon() {
        this.f8522a = new HashMap();
        this.f8523b = new HashMap();
    }

    public /* synthetic */ zzgon(zzgoq zzgoqVar) {
        this.f8522a = new HashMap(zzgoqVar.f8524a);
        this.f8523b = new HashMap(zzgoqVar.f8525b);
    }

    public final zzgon zza(zzgom zzgomVar) throws GeneralSecurityException {
        if (zzgomVar == null) {
            throw new NullPointerException("primitive constructor must be non-null");
        }
        ejr ejrVar = new ejr(zzgomVar.zzc(), zzgomVar.zzd());
        HashMap hashMap = this.f8522a;
        if (!hashMap.containsKey(ejrVar)) {
            hashMap.put(ejrVar, zzgomVar);
            return this;
        }
        zzgom zzgomVar2 = (zzgom) hashMap.get(ejrVar);
        if (zzgomVar2.equals(zzgomVar) && zzgomVar.equals(zzgomVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(ejrVar.toString()));
    }

    public final zzgon zzb(zzgov zzgovVar) throws GeneralSecurityException {
        Class zzb = zzgovVar.zzb();
        HashMap hashMap = this.f8523b;
        if (!hashMap.containsKey(zzb)) {
            hashMap.put(zzb, zzgovVar);
            return this;
        }
        zzgov zzgovVar2 = (zzgov) hashMap.get(zzb);
        if (zzgovVar2.equals(zzgovVar) && zzgovVar.equals(zzgovVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(zzb.toString()));
    }
}
