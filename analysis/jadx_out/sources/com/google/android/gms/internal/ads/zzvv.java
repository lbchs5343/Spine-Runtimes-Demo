package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzvv implements zzuq {

    /* renamed from: a, reason: collision with root package name */
    public final zzyw f8909a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgc f8910b;

    /* renamed from: c, reason: collision with root package name */
    public int f8911c;

    /* renamed from: d, reason: collision with root package name */
    public final zzvu f8912d;

    public zzvv(zzgc zzgcVar, zzvu zzvuVar) {
        zzyw zzywVar = new zzyw(-1);
        this.f8910b = zzgcVar;
        this.f8912d = zzvuVar;
        this.f8909a = zzywVar;
        this.f8911c = 1048576;
    }

    public final zzvv zza(int i) {
        this.f8911c = i;
        return this;
    }

    public final zzvx zzb(zzaw zzawVar) {
        zzawVar.zzb.getClass();
        return new zzvx(zzawVar, this.f8910b, this.f8912d, zzrp.zza, this.f8909a, this.f8911c);
    }
}
