package com.google.android.gms.internal.ads;

import g.agd;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class zzcdd implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final Consumer f5203a;

    public zzcdd(Consumer consumer) {
        this.f5203a = consumer;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        String str = (String) map.get("action");
        if (str == null) {
            agd.b("Action missing from video GMSG.");
            return;
        }
        if (str.equals("src")) {
            String str2 = (String) map.get("src");
            if (str2 == null) {
                agd.b("src missing from video GMSG.");
            } else {
                this.f5203a.accept(str2);
            }
        }
    }
}
