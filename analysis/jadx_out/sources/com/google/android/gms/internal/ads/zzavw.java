package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzavw extends zzats {
    public Long zza;
    public Boolean zzb;
    public Boolean zzc;

    public zzavw() {
    }

    public zzavw(String str) {
        HashMap a2 = zzats.a(str);
        if (a2 != null) {
            this.zza = (Long) a2.get(0);
            this.zzb = (Boolean) a2.get(1);
            this.zzc = (Boolean) a2.get(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final HashMap b() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        return hashMap;
    }
}
