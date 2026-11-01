package com.google.android.gms.internal.ads;

import android.content.Context;
import g.agd;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbjx implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4839a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f4840b;

    public zzbjx(Context context, Map map) {
        this.f4839a = context;
        this.f4840b = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        char c2;
        ti tiVar = ti.f20033a;
        zzbyv zzbyvVar = tiVar.f20039f;
        Context context = this.f4839a;
        if (zzbyvVar.zzp(context)) {
            String str = (String) map.get("eventName");
            String str2 = (String) map.get("eventId");
            int hashCode = str.hashCode();
            if (hashCode == 94399) {
                if (str.equals("_aa")) {
                    c2 = 2;
                }
                c2 = 65535;
            } else if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals("_ai")) {
                    c2 = 1;
                }
                c2 = 65535;
            } else {
                if (str.equals("_ac")) {
                    c2 = 0;
                }
                c2 = 65535;
            }
            Map map2 = this.f4840b;
            if (c2 == 0) {
                tiVar.f20039f.zzj(context, str2, (Map) map2.get("_ac"));
                return;
            }
            if (c2 == 1) {
                tiVar.f20039f.zzk(context, str2, (Map) map2.get("_ai"));
            } else if (c2 != 2) {
                agd.d("logScionEvent gmsg contained unsupported eventName");
            } else {
                tiVar.f20039f.zzh(context, str2);
            }
        }
    }
}
