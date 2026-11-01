package com.google.android.gms.internal.ads;

import android.content.Context;
import g.afo;
import g.cmo;
import g.gil;
import g.ti;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcmh implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5342a;

    /* renamed from: b, reason: collision with root package name */
    public final gil f5343b = ti.f20033a.f20034ab.zzi();

    public zzcmh(Context context) {
        this.f5342a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        String str;
        if (map.isEmpty() || (str = (String) map.get("gad_idless")) == null) {
            return;
        }
        boolean parseBoolean = Boolean.parseBoolean(str);
        ((cmo) this.f5343b).be(parseBoolean);
        if (parseBoolean) {
            afo.ay(this.f5342a);
        }
    }
}
