package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes3.dex */
public final class zzdrp implements zzfjs {

    /* renamed from: a, reason: collision with root package name */
    public final Map f6406a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbbl f6407b;

    public zzdrp(zzbbl zzbblVar, Map map) {
        this.f6406a = map;
        this.f6407b = zzbblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzd(zzfjl zzfjlVar, String str) {
        Map map = this.f6406a;
        if (map.containsKey(zzfjlVar)) {
            this.f6407b.zzc(((zzdro) map.get(zzfjlVar)).zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdC(zzfjl zzfjlVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdD(zzfjl zzfjlVar, String str, Throwable th) {
        Map map = this.f6406a;
        if (map.containsKey(zzfjlVar)) {
            this.f6407b.zzc(((zzdro) map.get(zzfjlVar)).zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdE(zzfjl zzfjlVar, String str) {
        Map map = this.f6406a;
        if (map.containsKey(zzfjlVar)) {
            this.f6407b.zzc(((zzdro) map.get(zzfjlVar)).zza);
        }
    }
}
