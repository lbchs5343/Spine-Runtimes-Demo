package com.google.android.gms.internal.ads;

import g.akx;
import g.esy;
import g.ti;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdid implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6029a;

    public zzdid(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6029a = zzhgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        akx zza = ((zzcid) this.f6029a).zza();
        esy esyVar = ti.f20033a.z;
        return new zzayi(UUID.randomUUID().toString(), zza, "native", new JSONObject(), false, true);
    }
}
