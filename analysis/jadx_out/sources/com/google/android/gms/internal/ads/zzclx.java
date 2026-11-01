package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzclx implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final zzdvk f5337a;

    public zzclx(zzdvk zzdvkVar) {
        this.f5337a = zzdvkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        char c2;
        String str = (String) map.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals("shake")) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals("flick")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        zzdvk zzdvkVar = this.f5337a;
        if (c2 == 0) {
            zzdvkVar.zzm(zzdvg.zzb);
        } else if (c2 != 1) {
            zzdvkVar.zzm(zzdvg.zza);
        } else {
            zzdvkVar.zzm(zzdvg.zzc);
        }
    }
}
