package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzawa extends zzats {
    public Long zza;
    public Long zzb;

    public zzawa() {
    }

    public zzawa(String str) {
        HashMap a2 = zzats.a(str);
        if (a2 != null) {
            this.zza = (Long) a2.get(0);
            this.zzb = (Long) a2.get(1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final HashMap b() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        return hashMap;
    }
}
