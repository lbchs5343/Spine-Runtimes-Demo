package com.google.android.gms.internal.ads;

import g.esy;
import g.pz;
import g.ti;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzdxm implements zzhfx {
    public static zzdxm zza() {
        return pz.f19839a;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final Object zzb() {
        esy esyVar = ti.f20033a.z;
        String uuid = UUID.randomUUID().toString();
        zzhgf.zzb(uuid);
        return uuid;
    }
}
