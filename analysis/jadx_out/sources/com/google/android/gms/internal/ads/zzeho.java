package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeho implements zzefd {

    /* renamed from: a, reason: collision with root package name */
    public final zzdqd f6984a;

    public zzeho(zzdqd zzdqdVar) {
        this.f6984a = zzdqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefd
    public final zzefe zza(String str, JSONObject jSONObject) throws zzffv {
        return new zzefe(this.f6984a.zzc(str, jSONObject), new zzegx(), str);
    }
}
