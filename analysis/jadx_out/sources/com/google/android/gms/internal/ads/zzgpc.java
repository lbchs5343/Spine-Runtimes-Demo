package com.google.android.gms.internal.ads;

import g.air;
import g.fhw;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgpc {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8550a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8551b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f8552c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f8553d;

    public zzgpc() {
        this.f8551b = new HashMap();
        this.f8552c = new HashMap();
        this.f8553d = new HashMap();
        this.f8550a = new HashMap();
    }

    public zzgpc(zzgpg zzgpgVar) {
        this.f8551b = new HashMap(zzgpgVar.f8555b);
        this.f8552c = new HashMap(zzgpgVar.f8556c);
        this.f8553d = new HashMap(zzgpgVar.f8557d);
        this.f8550a = new HashMap(zzgpgVar.f8554a);
    }

    public final zzgpc zza(zzgms zzgmsVar) throws GeneralSecurityException {
        air airVar = new air(zzgmsVar.zzc(), zzgmsVar.zzd());
        HashMap hashMap = this.f8552c;
        if (!hashMap.containsKey(airVar)) {
            hashMap.put(airVar, zzgmsVar);
            return this;
        }
        zzgms zzgmsVar2 = (zzgms) hashMap.get(airVar);
        if (zzgmsVar2.equals(zzgmsVar) && zzgmsVar.equals(zzgmsVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(airVar.toString()));
    }

    public final zzgpc zzb(zzgmw zzgmwVar) throws GeneralSecurityException {
        fhw fhwVar = new fhw(zzgmwVar.zzc(), zzgmwVar.zzd());
        HashMap hashMap = this.f8551b;
        if (!hashMap.containsKey(fhwVar)) {
            hashMap.put(fhwVar, zzgmwVar);
            return this;
        }
        zzgmw zzgmwVar2 = (zzgmw) hashMap.get(fhwVar);
        if (zzgmwVar2.equals(zzgmwVar) && zzgmwVar.equals(zzgmwVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(fhwVar.toString()));
    }

    public final zzgpc zzc(zzgoe zzgoeVar) throws GeneralSecurityException {
        air airVar = new air(zzgoeVar.zzc(), zzgoeVar.zzd());
        HashMap hashMap = this.f8550a;
        if (!hashMap.containsKey(airVar)) {
            hashMap.put(airVar, zzgoeVar);
            return this;
        }
        zzgoe zzgoeVar2 = (zzgoe) hashMap.get(airVar);
        if (zzgoeVar2.equals(zzgoeVar) && zzgoeVar.equals(zzgoeVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(airVar.toString()));
    }

    public final zzgpc zzd(zzgoi zzgoiVar) throws GeneralSecurityException {
        fhw fhwVar = new fhw(zzgoiVar.zzc(), zzgoiVar.zzd());
        HashMap hashMap = this.f8553d;
        if (!hashMap.containsKey(fhwVar)) {
            hashMap.put(fhwVar, zzgoiVar);
            return this;
        }
        zzgoi zzgoiVar2 = (zzgoi) hashMap.get(fhwVar);
        if (zzgoiVar2.equals(zzgoiVar) && zzgoiVar.equals(zzgoiVar2)) {
            return this;
        }
        throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(fhwVar.toString()));
    }
}
