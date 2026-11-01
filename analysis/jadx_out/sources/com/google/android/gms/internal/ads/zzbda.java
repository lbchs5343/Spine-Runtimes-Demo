package com.google.android.gms.internal.ads;

import java.util.HashMap;

@Deprecated
/* loaded from: classes3.dex */
public final class zzbda {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4747a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final zzbdc f4748b;

    public zzbda(zzbdc zzbdcVar) {
        this.f4748b = zzbdcVar;
    }

    public final zzbdc zza() {
        return this.f4748b;
    }

    public final void zzb(String str, zzbcz zzbczVar) {
        this.f4747a.put(str, zzbczVar);
    }

    public final void zzc(String str, String str2, long j) {
        HashMap hashMap = this.f4747a;
        zzbcz zzbczVar = (zzbcz) hashMap.get(str2);
        String[] strArr = {str};
        if (zzbczVar != null) {
            this.f4748b.zze(zzbczVar, j, strArr);
        }
        hashMap.put(str, new zzbcz(j, null, null));
    }
}
