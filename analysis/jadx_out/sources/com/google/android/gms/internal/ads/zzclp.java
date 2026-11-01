package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzclp {

    /* renamed from: a, reason: collision with root package name */
    public final Map f5329a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f5330b;

    public zzclp(Map map, Map map2) {
        this.f5329a = map;
        this.f5330b = map2;
    }

    public final void zza(zzfff zzfffVar) throws Exception {
        for (zzffd zzffdVar : zzfffVar.zzb.zzc) {
            String str = zzffdVar.zza;
            Map map = this.f5329a;
            if (map.containsKey(str)) {
                ((zzcls) map.get(zzffdVar.zza)).zza(zzffdVar.zzb);
            } else {
                String str2 = zzffdVar.zza;
                Map map2 = this.f5330b;
                if (map2.containsKey(str2)) {
                    zzclr zzclrVar = (zzclr) map2.get(zzffdVar.zza);
                    JSONObject jSONObject = zzffdVar.zzb;
                    HashMap hashMap = new HashMap();
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String optString = jSONObject.optString(next);
                        if (optString != null) {
                            hashMap.put(next, optString);
                        }
                    }
                    zzclrVar.zza(hashMap);
                }
            }
        }
    }
}
