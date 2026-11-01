package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.edt;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbke implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzdwh f4853a;

    public zzbke(zzdwh zzdwhVar) {
        this.f4853a = zzdwhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziX)).booleanValue()) {
            String str = (String) map.get("action");
            String str2 = (String) map.get("adUnitId");
            String str3 = (String) map.get("redirectUrl");
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return;
            }
            String str4 = (String) map.get("format");
            boolean equals = str.equals("load");
            zzdwh zzdwhVar = this.f4853a;
            if (equals && !TextUtils.isEmpty(str4)) {
                zzdwhVar.zzh(str2, str4, str3);
            } else if (str.equals("show")) {
                zzdwhVar.zzi(str2, str3);
            }
        }
    }
}
