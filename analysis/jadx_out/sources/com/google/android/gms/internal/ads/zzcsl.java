package com.google.android.gms.internal.ads;

import g.fim;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzcsl implements fim {

    /* renamed from: b, reason: collision with root package name */
    public final zzcxt f5608b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f5609c = new AtomicBoolean(false);

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f5607a = new AtomicBoolean(false);

    public zzcsl(zzcxt zzcxtVar) {
        this.f5608b = zzcxtVar;
    }

    @Override // g.fim
    public final void zzdH() {
    }

    @Override // g.fim
    public final void zzdk() {
    }

    @Override // g.fim
    public final void zzdq() {
        AtomicBoolean atomicBoolean = this.f5607a;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        this.f5608b.zza();
    }

    @Override // g.fim
    public final void zzdr() {
        this.f5608b.zzc();
    }

    @Override // g.fim
    public final void zzdt() {
    }

    @Override // g.fim
    public final void zzdu(int i) {
        this.f5609c.set(true);
        AtomicBoolean atomicBoolean = this.f5607a;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        this.f5608b.zza();
    }

    public final boolean zzg() {
        return this.f5609c.get();
    }
}
