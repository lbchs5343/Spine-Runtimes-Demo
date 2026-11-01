package com.google.android.gms.internal.ads;

import g.agd;
import g.cui;
import g.tl;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbjy implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f4841a;

    /* renamed from: b, reason: collision with root package name */
    public final cui f4842b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbse f4843c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbsl f4844d;

    static {
        String[] strArr = {"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"};
        Integer[] numArr = {1, 2, 3, 4, 5, 6, 7};
        tl tlVar = new tl(7);
        for (int i = 0; i < 7; i++) {
            tlVar.put(strArr[i], numArr[i]);
        }
        f4841a = Collections.unmodifiableMap(tlVar);
    }

    public zzbjy(cui cuiVar, zzbse zzbseVar, zzbsl zzbslVar) {
        this.f4842b = cuiVar;
        this.f4843c = zzbseVar;
        this.f4844d = zzbslVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfk zzcfkVar = (zzcfk) obj;
        int intValue = ((Integer) f4841a.get((String) map.get("a"))).intValue();
        int i = 6;
        if (intValue != 5) {
            if (intValue != 7) {
                cui cuiVar = this.f4842b;
                if (!cuiVar.f()) {
                    cuiVar.e(null);
                    return;
                }
                zzbse zzbseVar = this.f4843c;
                if (intValue == 1) {
                    zzbseVar.zzb(map);
                    return;
                }
                if (intValue == 3) {
                    new zzbsh(zzcfkVar, map).zzb();
                    return;
                }
                if (intValue == 4) {
                    new zzbsb(zzcfkVar, map).zzc();
                    return;
                } else if (intValue != 5) {
                    if (intValue == 6) {
                        zzbseVar.zza(true);
                        return;
                    } else if (intValue != 7) {
                        agd.k("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.f4844d.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        boolean parseBoolean = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (zzcfkVar == null) {
            agd.b("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            i = parseBoolean ? -1 : 14;
        }
        zzcfkVar.zzau(i);
    }
}
