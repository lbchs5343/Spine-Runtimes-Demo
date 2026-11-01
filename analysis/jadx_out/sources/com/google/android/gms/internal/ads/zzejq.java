package com.google.android.gms.internal.ads;

import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzejq implements zzefd {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7134a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final zzdqd f7135b;

    public zzejq(zzdqd zzdqdVar) {
        this.f7135b = zzdqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefd
    public final zzefe zza(String str, JSONObject jSONObject) throws zzffv {
        zzefe zzefeVar;
        synchronized (this) {
            try {
                zzefeVar = (zzefe) this.f7134a.get(str);
                if (zzefeVar == null) {
                    zzefeVar = new zzefe(this.f7135b.zzc(str, jSONObject), new zzegy(), str);
                    this.f7134a.put(str, zzefeVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzefeVar;
    }
}
