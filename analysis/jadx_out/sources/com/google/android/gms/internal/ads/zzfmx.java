package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfmx {

    /* renamed from: a, reason: collision with root package name */
    public final zzfnb f8031a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfne f8032b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfni f8033c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfni f8034d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8035e;

    public zzfmx(zzfnb zzfnbVar, zzfne zzfneVar, zzfni zzfniVar, zzfni zzfniVar2, boolean z) {
        this.f8031a = zzfnbVar;
        this.f8032b = zzfneVar;
        this.f8033c = zzfniVar;
        if (zzfniVar2 == null) {
            this.f8034d = zzfni.NONE;
        } else {
            this.f8034d = zzfniVar2;
        }
        this.f8035e = z;
    }

    public static zzfmx zza(zzfnb zzfnbVar, zzfne zzfneVar, zzfni zzfniVar, zzfni zzfniVar2, boolean z) {
        zzfor.zzc(zzfnbVar, "CreativeType is null");
        zzfor.zzc(zzfneVar, "ImpressionType is null");
        zzfor.zzc(zzfniVar, "Impression owner is null");
        if (zzfniVar == zzfni.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (zzfnbVar == zzfnb.DEFINED_BY_JAVASCRIPT && zzfniVar == zzfni.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (zzfneVar == zzfne.DEFINED_BY_JAVASCRIPT && zzfniVar == zzfni.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        return new zzfmx(zzfnbVar, zzfneVar, zzfniVar, zzfniVar2, z);
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzfon.zze(jSONObject, "impressionOwner", this.f8033c);
        zzfon.zze(jSONObject, "mediaEventsOwner", this.f8034d);
        zzfon.zze(jSONObject, "creativeType", this.f8031a);
        zzfon.zze(jSONObject, "impressionType", this.f8032b);
        zzfon.zze(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f8035e));
        return jSONObject;
    }
}
