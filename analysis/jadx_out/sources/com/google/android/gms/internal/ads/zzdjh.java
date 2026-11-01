package com.google.android.gms.internal.ads;

import g.bcp;

/* loaded from: classes3.dex */
public final class zzdjh {

    /* renamed from: a, reason: collision with root package name */
    public zzbhj f6075a;

    /* renamed from: b, reason: collision with root package name */
    public zzbmk f6076b;

    /* renamed from: c, reason: collision with root package name */
    public zzbgz f6077c;

    /* renamed from: e, reason: collision with root package name */
    public zzbgw f6079e;

    /* renamed from: f, reason: collision with root package name */
    public zzbhm f6080f;

    /* renamed from: d, reason: collision with root package name */
    public final bcp f6078d = new bcp(0);

    /* renamed from: g, reason: collision with root package name */
    public final bcp f6081g = new bcp(0);

    public final zzdjh zza(zzbgw zzbgwVar) {
        this.f6079e = zzbgwVar;
        return this;
    }

    public final zzdjh zzb(zzbgz zzbgzVar) {
        this.f6077c = zzbgzVar;
        return this;
    }

    public final zzdjh zzc(String str, zzbhf zzbhfVar, zzbhc zzbhcVar) {
        this.f6078d.put(str, zzbhfVar);
        if (zzbhcVar != null) {
            this.f6081g.put(str, zzbhcVar);
        }
        return this;
    }

    public final zzdjh zzd(zzbmk zzbmkVar) {
        this.f6076b = zzbmkVar;
        return this;
    }

    public final zzdjh zze(zzbhj zzbhjVar) {
        this.f6075a = zzbhjVar;
        return this;
    }

    public final zzdjh zzf(zzbhm zzbhmVar) {
        this.f6080f = zzbhmVar;
        return this;
    }

    public final zzdjj zzg() {
        return new zzdjj(this);
    }
}
