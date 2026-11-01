package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzavl extends zzats {
    public long zza;
    public long zzb;

    public zzavl() {
        this.zza = -1L;
        this.zzb = -1L;
    }

    public zzavl(String str) {
        this.zza = -1L;
        this.zzb = -1L;
        HashMap a2 = zzats.a(str);
        if (a2 != null) {
            this.zza = ((Long) a2.get(0)).longValue();
            this.zzb = ((Long) a2.get(1)).longValue();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final HashMap b() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, Long.valueOf(this.zza));
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }
}
