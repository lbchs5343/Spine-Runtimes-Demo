package com.google.android.gms.internal.ads;

import g.air;
import g.fhw;
import g.tn;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgpg {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8554a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8555b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f8556c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f8557d;

    public /* synthetic */ zzgpg(zzgpc zzgpcVar) {
        this.f8555b = new HashMap(zzgpcVar.f8551b);
        this.f8556c = new HashMap(zzgpcVar.f8552c);
        this.f8557d = new HashMap(zzgpcVar.f8553d);
        this.f8554a = new HashMap(zzgpcVar.f8550a);
    }

    public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) throws GeneralSecurityException {
        air airVar = new air(zzgpbVar.zzd(), zzgpbVar.getClass());
        HashMap hashMap = this.f8556c;
        if (hashMap.containsKey(airVar)) {
            return ((zzgms) hashMap.get(airVar)).zza(zzgpbVar, zzggnVar);
        }
        throw new GeneralSecurityException(tn.ad("No Key Parser for requested key type ", airVar.toString(), " available"));
    }

    public final zzggj zzb(zzgpb zzgpbVar) throws GeneralSecurityException {
        air airVar = new air(zzgpbVar.zzd(), zzgpbVar.getClass());
        HashMap hashMap = this.f8554a;
        if (hashMap.containsKey(airVar)) {
            return ((zzgoe) hashMap.get(airVar)).zza(zzgpbVar);
        }
        throw new GeneralSecurityException(tn.ad("No Parameters Parser for requested key type ", airVar.toString(), " available"));
    }

    public final zzgpb zzc(zzgfw zzgfwVar, Class cls, zzggn zzggnVar) throws GeneralSecurityException {
        fhw fhwVar = new fhw(zzgfwVar.getClass(), cls);
        HashMap hashMap = this.f8555b;
        if (hashMap.containsKey(fhwVar)) {
            return ((zzgmw) hashMap.get(fhwVar)).zza(zzgfwVar, zzggnVar);
        }
        throw new GeneralSecurityException(tn.ad("No Key serializer for ", fhwVar.toString(), " available"));
    }

    public final zzgpb zzd(zzggj zzggjVar, Class cls) throws GeneralSecurityException {
        fhw fhwVar = new fhw(zzggjVar.getClass(), cls);
        HashMap hashMap = this.f8557d;
        if (hashMap.containsKey(fhwVar)) {
            return ((zzgoi) hashMap.get(fhwVar)).zza(zzggjVar);
        }
        throw new GeneralSecurityException(tn.ad("No Key Format serializer for ", fhwVar.toString(), " available"));
    }

    public final boolean zzi(zzgpb zzgpbVar) {
        return this.f8556c.containsKey(new air(zzgpbVar.zzd(), zzgpbVar.getClass()));
    }

    public final boolean zzj(zzgpb zzgpbVar) {
        return this.f8554a.containsKey(new air(zzgpbVar.zzd(), zzgpbVar.getClass()));
    }
}
