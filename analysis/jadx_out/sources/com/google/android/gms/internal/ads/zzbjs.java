package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.ckd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbjs implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzdvk f4833a;

    public zzbjs(zzdvk zzdvkVar) {
        ckd.w(zzdvkVar, "The Inspector Manager must not be null");
        this.f4833a = zzdvkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        if (map == null || !map.containsKey("persistentData") || TextUtils.isEmpty((CharSequence) map.get("persistentData"))) {
            return;
        }
        this.f4833a.zzj((String) map.get("persistentData"));
    }
}
