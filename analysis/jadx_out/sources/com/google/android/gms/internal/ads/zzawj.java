package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzawj extends zzats {
    public Long zza;
    public Long zzb;
    public Long zzc;
    public Long zzd;
    public Long zze;

    public zzawj() {
    }

    public zzawj(String str) {
        HashMap a2 = zzats.a(str);
        if (a2 != null) {
            this.zza = (Long) a2.get(0);
            this.zzb = (Long) a2.get(1);
            this.zzc = (Long) a2.get(2);
            this.zzd = (Long) a2.get(3);
            this.zze = (Long) a2.get(4);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final HashMap b() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        hashMap.put(3, this.zzd);
        hashMap.put(4, this.zze);
        return hashMap;
    }
}
