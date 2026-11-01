package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.cbv;
import g.edt;

/* loaded from: classes3.dex */
public final class zzewg implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final int f7636a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7637b;

    public zzewg(int i, int i2) {
        this.f7636a = i;
        this.f7637b = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putInt("sessions_without_flags", this.f7636a);
        bundle.putInt("crashes_without_flags", this.f7637b);
        cbv cbvVar = cbv.f12612a;
        if (edt.f15376a.f15379d.zze()) {
            bundle.putBoolean("did_reset", true);
        }
    }
}
