package com.google.android.gms.internal.ads;

import g.abn;
import g.agd;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbii implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbij f4831a;

    public zzbii(zzbij zzbijVar) {
        this.f4831a = zzbijVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(abn.EXTRA_UA_APP_NAME);
        if (str == null) {
            agd.b("App event with no name parameter.");
        } else {
            this.f4831a.zzb(str, (String) map.get("info"));
        }
    }
}
