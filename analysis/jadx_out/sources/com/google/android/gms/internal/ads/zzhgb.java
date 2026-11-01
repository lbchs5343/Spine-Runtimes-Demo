package com.google.android.gms.internal.ads;

import g.fkw;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzhgb extends fkw {
    static {
        zzhfy.zza(Collections.EMPTY_MAP);
    }

    public static zzhga zzc(int i) {
        return new zzhga(i);
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final Map zzb() {
        Map map = this.f16951a;
        LinkedHashMap zzb = zzhfu.zzb(map.size());
        for (Map.Entry entry : map.entrySet()) {
            zzb.put(entry.getKey(), ((zzhgg) entry.getValue()).zzb());
        }
        return Collections.unmodifiableMap(zzb);
    }
}
