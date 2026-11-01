package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbkj implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbki f4856a;

    public zzbkj(zzbki zzbkiVar) {
        this.f4856a = zzbkiVar;
    }

    public static void zzb(zzcfk zzcfkVar, zzbki zzbkiVar) {
        zzcfkVar.zzag("/reward", new zzbkj(zzbkiVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("action");
        boolean equals = "grant".equals(str);
        zzbki zzbkiVar = this.f4856a;
        if (!equals) {
            if ("video_start".equals(str)) {
                zzbkiVar.zzc();
                return;
            } else {
                if ("video_complete".equals(str)) {
                    zzbkiVar.zzb();
                    return;
                }
                return;
            }
        }
        zzbwv zzbwvVar = null;
        try {
            int parseInt = Integer.parseInt((String) map.get("amount"));
            String str2 = (String) map.get("type");
            if (!TextUtils.isEmpty(str2)) {
                zzbwvVar = new zzbwv(str2, parseInt);
            }
        } catch (NumberFormatException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
        zzbkiVar.zza(zzbwvVar);
    }
}
