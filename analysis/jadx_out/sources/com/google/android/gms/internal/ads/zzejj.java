package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzejj implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7119a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7120b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7121c;

    public zzejj(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f7119a = zzhgpVar;
        this.f7120b = zzhgpVar2;
        this.f7121c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeji((Context) this.f7119a.zzb(), (Executor) this.f7120b.zzb(), (zzdow) this.f7121c.zzb());
    }
}
