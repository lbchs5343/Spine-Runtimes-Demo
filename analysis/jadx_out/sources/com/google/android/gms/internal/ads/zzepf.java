package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.edt;
import g.gby;

/* loaded from: classes3.dex */
public final class zzepf implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final gby f7344a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7345b;

    public zzepf(gby gbyVar, boolean z) {
        this.f7344a = gbyVar;
        this.f7345b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfo)).booleanValue()) {
            bundle.putBoolean("app_switched", this.f7345b);
        }
        gby gbyVar = this.f7344a;
        if (gbyVar != null) {
            int i = gbyVar.zza;
            if (i == 1) {
                bundle.putString("avo", "p");
            } else if (i == 2) {
                bundle.putString("avo", "l");
            }
        }
    }
}
