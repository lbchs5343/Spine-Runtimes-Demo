package com.google.android.gms.internal.ads;

import g.cls;
import g.dcy;
import g.ffm;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzeif {

    /* renamed from: a, reason: collision with root package name */
    public cls f7009a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeiv f7010b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfln f7011c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f7012d;

    /* renamed from: f, reason: collision with root package name */
    public zzfff f7014f;

    /* renamed from: g, reason: collision with root package name */
    public final ScheduledExecutorService f7015g;
    public final zzcrt h;

    /* renamed from: e, reason: collision with root package name */
    public final zzgfa f7013e = zzgfa.zze();
    public final AtomicBoolean i = new AtomicBoolean();

    public zzeif(zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, zzcrt zzcrtVar, zzeiv zzeivVar, zzfln zzflnVar) {
        this.f7012d = zzgesVar;
        this.f7015g = scheduledExecutorService;
        this.h = zzcrtVar;
        this.f7010b = zzeivVar;
        this.f7011c = zzflnVar;
    }

    public final void j(zzfet zzfetVar) {
        dcy zzg;
        synchronized (this) {
            Iterator it = zzfetVar.zza.iterator();
            while (true) {
                if (!it.hasNext()) {
                    zzg = zzgei.zzg(new zzdwn(3));
                    break;
                }
                zzefb zza = this.h.zza(zzfetVar.zzb, (String) it.next());
                if (zza != null && zza.zzb(this.f7014f, zzfetVar)) {
                    zzg = zzgei.zzo(zza.zza(this.f7014f, zzfetVar), zzfetVar.zzR, TimeUnit.MILLISECONDS, this.f7015g);
                    break;
                }
            }
        }
        this.f7010b.k(this.f7014f, zzfetVar, zzg, this.f7011c);
        zzgei.zzr(zzg, new ffm(this, zzfetVar), this.f7012d);
    }

    public final synchronized dcy zzb(zzfff zzfffVar) {
        try {
            if (!this.i.getAndSet(true)) {
                if (zzfffVar.zzb.zza.isEmpty()) {
                    this.f7013e.zzd(new zzeiz(3, zzejc.n(zzfffVar)));
                } else {
                    this.f7014f = zzfffVar;
                    this.f7009a = new cls(zzfffVar, this.f7010b, this.f7013e);
                    this.f7010b.zzk(zzfffVar.zzb.zza);
                    zzfet p = this.f7009a.p();
                    while (p != null) {
                        j(p);
                        p = this.f7009a.p();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f7013e;
    }
}
