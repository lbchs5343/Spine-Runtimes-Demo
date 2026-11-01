package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbjt implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbju f4834a;

    public zzbjt(zzbju zzbjuVar) {
        this.f4834a = zzbjuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfk zzcfkVar = (zzcfk) obj;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        try {
            if (map.get("blurRadius") != null) {
                f2 = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e2) {
            agd.f("Fail to parse float", e2);
        }
        zzbju zzbjuVar = this.f4834a;
        zzbjuVar.zzc(equals);
        zzbjuVar.zzb(equals2, f2);
        zzcfkVar.zzay(equals);
    }
}
