package com.google.android.gms.internal.ads;

import g.akx;
import g.esy;
import g.ti;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcoc implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f5422a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f5423b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f5424c;

    public zzcoc(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f5422a = zzhgpVar;
        this.f5423b = zzhgpVar2;
        this.f5424c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        akx zza = ((zzcid) this.f5422a).zza();
        JSONObject jSONObject = (JSONObject) this.f5423b.zzb();
        String str = (String) this.f5424c.zzb();
        boolean equals = "native".equals(str);
        esy esyVar = ti.f20033a.z;
        return new zzayi(UUID.randomUUID().toString(), zza, str, jSONObject, false, equals);
    }
}
