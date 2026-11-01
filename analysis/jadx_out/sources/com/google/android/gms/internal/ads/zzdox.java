package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzdox implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f6333a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f6334b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f6335c;

    public zzdox(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3) {
        this.f6333a = zzhgpVar;
        this.f6334b = zzhgpVar2;
        this.f6335c = zzhgpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* synthetic */ Object zzb() {
        int i = ((zzcwd) this.f6335c).zza().zzo.zza;
        if (i != 0) {
            return i + (-1) != 0 ? ((zzeko) this.f6334b).zzb() : ((zzeko) this.f6333a).zzb();
        }
        throw null;
    }
}
