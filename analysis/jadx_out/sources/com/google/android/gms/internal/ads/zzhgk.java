package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes3.dex */
public final class zzhgk {

    /* renamed from: a, reason: collision with root package name */
    public final List f8738a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8739b;

    public /* synthetic */ zzhgk(int i, int i2) {
        this.f8738a = zzhfu.zzc(i);
        this.f8739b = zzhfu.zzc(i2);
    }

    public final zzhgk zza(zzhgg zzhggVar) {
        this.f8739b.add(zzhggVar);
        return this;
    }

    public final zzhgk zzb(zzhgg zzhggVar) {
        this.f8738a.add(zzhggVar);
        return this;
    }

    public final zzhgl zzc() {
        return new zzhgl(this.f8738a, this.f8739b);
    }
}
