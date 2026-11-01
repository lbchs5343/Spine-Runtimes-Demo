package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzatu extends zzats {
    public String zza;
    public long zzb;
    public String zzc;
    public String zzd;
    public String zze;

    public zzatu() {
        this.zza = "E";
        this.zzb = -1L;
        this.zzc = "E";
        this.zzd = "E";
        this.zze = "E";
    }

    public zzatu(String str) {
        this.zza = "E";
        this.zzb = -1L;
        this.zzc = "E";
        this.zzd = "E";
        this.zze = "E";
        HashMap a2 = zzats.a(str);
        if (a2 != null) {
            this.zza = a2.get(0) == null ? "E" : (String) a2.get(0);
            this.zzb = a2.get(1) != null ? ((Long) a2.get(1)).longValue() : -1L;
            this.zzc = a2.get(2) == null ? "E" : (String) a2.get(2);
            this.zzd = a2.get(3) == null ? "E" : (String) a2.get(3);
            this.zze = a2.get(4) != null ? (String) a2.get(4) : "E";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzats
    public final HashMap b() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(4, this.zze);
        hashMap.put(3, this.zzd);
        hashMap.put(2, this.zzc);
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }
}
