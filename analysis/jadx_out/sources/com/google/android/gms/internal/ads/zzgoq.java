package com.google.android.gms.internal.ads;

import g.ejr;
import g.tn;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgoq {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8524a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8525b;

    public /* synthetic */ zzgoq(zzgon zzgonVar) {
        this.f8524a = new HashMap(zzgonVar.f8522a);
        this.f8525b = new HashMap(zzgonVar.f8523b);
    }

    public final Class zza(Class cls) throws GeneralSecurityException {
        HashMap hashMap = this.f8525b;
        if (hashMap.containsKey(cls)) {
            return ((zzgov) hashMap.get(cls)).zza();
        }
        throw new GeneralSecurityException(tn.ad("No input primitive class for ", cls.toString(), " available"));
    }

    public final Object zzb(zzgfw zzgfwVar, Class cls) throws GeneralSecurityException {
        ejr ejrVar = new ejr(zzgfwVar.getClass(), cls);
        HashMap hashMap = this.f8524a;
        if (hashMap.containsKey(ejrVar)) {
            return ((zzgom) hashMap.get(ejrVar)).zza(zzgfwVar);
        }
        throw new GeneralSecurityException(tn.ad("No PrimitiveConstructor for ", ejrVar.toString(), " available"));
    }

    public final Object zzc(zzgou zzgouVar, Class cls) throws GeneralSecurityException {
        HashMap hashMap = this.f8525b;
        if (!hashMap.containsKey(cls)) {
            throw new GeneralSecurityException("No wrapper found for ".concat(cls.toString()));
        }
        zzgov zzgovVar = (zzgov) hashMap.get(cls);
        if (zzgouVar.zzd().equals(zzgovVar.zza()) && zzgovVar.zza().equals(zzgouVar.zzd())) {
            return zzgovVar.zzc(zzgouVar);
        }
        throw new GeneralSecurityException("Input primitive type of the wrapper doesn't match the type of primitives in the provided PrimitiveSet");
    }
}
