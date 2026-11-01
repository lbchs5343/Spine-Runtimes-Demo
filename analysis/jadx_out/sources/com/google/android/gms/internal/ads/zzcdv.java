package com.google.android.gms.internal.ads;

import g.agd;
import g.mx;

/* loaded from: classes3.dex */
public final class zzcdv extends zzcdr {
    public zzcdv(zzccf zzccfVar) {
        super(zzccfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final boolean zzt(String str) {
        String m = mx.m(str, "MD5");
        zzccf zzccfVar = (zzccf) this.f5209a.get();
        if (zzccfVar != null && m != null) {
            zzccfVar.zzt(m, this);
        }
        agd.b("VideoStreamNoopCache is doing nothing.");
        zzg(str, m, "noop", "Noop cache is a noop.");
        return false;
    }
}
