package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class zzdic implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6027a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6028b;

    public zzdic(zzhgp zzhgpVar, zzhgp zzhgpVar2) {
        this.f6027a = zzhgpVar;
        this.f6028b = zzhgpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdef((Context) this.f6027a.zzb(), new HashSet(), ((zzcsh) this.f6028b).zza());
    }
}
