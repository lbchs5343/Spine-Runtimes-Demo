package com.google.android.gms.internal.ads;

import g.ckd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbkl implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzdvk f4858a;

    public zzbkl(zzdvk zzdvkVar) {
        ckd.w(zzdvkVar, "The Inspector Manager must not be null");
        this.f4858a = zzdvkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        if (map == null || !map.containsKey("extras")) {
            return;
        }
        long j = Long.MAX_VALUE;
        if (map.containsKey("expires")) {
            try {
                j = Long.parseLong((String) map.get("expires"));
            } catch (NumberFormatException unused) {
            }
        }
        this.f4858a.zzi((String) map.get("extras"), j);
    }
}
