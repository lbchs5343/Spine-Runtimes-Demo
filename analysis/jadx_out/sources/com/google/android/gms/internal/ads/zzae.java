package com.google.android.gms.internal.ads;

import g.awf;

/* loaded from: classes3.dex */
public final class zzae {

    /* renamed from: a, reason: collision with root package name */
    public final int f4134a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4135b;

    public zzae(zzm zzmVar, int i, int i2) {
        this.f4134a = i;
        this.f4135b = i2;
    }

    public final zzae zza(float f2) {
        return this;
    }

    public final zzag zzb() {
        zzag zzagVar = new zzag();
        int i = this.f4134a;
        zzdb.zze(i > 0, awf.ac(i, "width must be positive, but is: "));
        StringBuilder sb = new StringBuilder("height must be positive, but is: ");
        int i2 = this.f4135b;
        sb.append(i2);
        zzdb.zze(i2 > 0, sb.toString());
        return zzagVar;
    }
}
