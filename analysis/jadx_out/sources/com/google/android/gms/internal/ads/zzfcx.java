package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzfcx implements zzhfx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f7801a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgp f7802b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgp f7803c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhgp f7804d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgp f7805e;

    public zzfcx(zzhgp zzhgpVar, zzhgp zzhgpVar2, zzhgp zzhgpVar3, zzhgp zzhgpVar4, zzhgp zzhgpVar5, zzhgp zzhgpVar6) {
        this.f7803c = zzhgpVar;
        this.f7804d = zzhgpVar2;
        this.f7805e = zzhgpVar3;
        this.f7801a = zzhgpVar4;
        this.f7802b = zzhgpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfcw((Context) this.f7803c.zzb(), (Executor) this.f7804d.zzb(), (zzchk) this.f7805e.zzb(), (zzems) this.f7801a.zzb(), (zzfdw) this.f7802b.zzb(), new zzffm());
    }
}
