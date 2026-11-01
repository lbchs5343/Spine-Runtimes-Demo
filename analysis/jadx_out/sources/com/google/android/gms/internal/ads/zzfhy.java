package com.google.android.gms.internal.ads;

import g.clx;
import g.cmo;
import g.dcy;
import g.edt;
import g.ti;
import java.util.ArrayDeque;

/* loaded from: classes3.dex */
public final class zzfhy {

    /* renamed from: a, reason: collision with root package name */
    public zzfie f7899a;

    /* renamed from: c, reason: collision with root package name */
    public final zzfhc f7901c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfhw f7902d;

    /* renamed from: b, reason: collision with root package name */
    public int f7900b = 1;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque f7903e = new ArrayDeque();

    public zzfhy(zzfhc zzfhcVar, zzfgy zzfgyVar, zzfhw zzfhwVar) {
        this.f7901c = zzfhcVar;
        this.f7902d = zzfhwVar;
        zzfgyVar.zzb(new zzfht(this));
    }

    public final synchronized void f() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgf)).booleanValue() && !((cmo) ti.f20033a.f20034ab.zzi()).av().zzh()) {
            this.f7903e.clear();
            return;
        }
        if (g()) {
            while (!this.f7903e.isEmpty()) {
                zzfhx zzfhxVar = (zzfhx) this.f7903e.pollFirst();
                if (zzfhxVar == null || (zzfhxVar.zza() != null && this.f7901c.zze(zzfhxVar.zza()))) {
                    zzfie zzfieVar = new zzfie(this.f7901c, this.f7902d, zzfhxVar);
                    this.f7899a = zzfieVar;
                    zzfieVar.zzd(new clx(this, 20, zzfhxVar));
                    return;
                }
            }
        }
    }

    public final synchronized boolean g() {
        return this.f7899a == null;
    }

    public final synchronized dcy zza(zzfhx zzfhxVar) {
        this.f7900b = 2;
        if (g()) {
            return null;
        }
        return this.f7899a.zza(zzfhxVar);
    }

    public final synchronized void zze(zzfhx zzfhxVar) {
        this.f7903e.add(zzfhxVar);
    }
}
