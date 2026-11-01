package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.cvb;
import g.czz;
import g.dcy;
import g.edt;
import g.gvu;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzeqp implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f7393a;

    /* renamed from: b, reason: collision with root package name */
    public final zzevz f7394b;

    /* renamed from: d, reason: collision with root package name */
    public final long f7396d;

    /* renamed from: f, reason: collision with root package name */
    public final cvb f7398f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdsm f7399g;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f7395c = new AtomicReference();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f7397e = new AtomicReference(Boolean.FALSE);

    public zzeqp(zzevz zzevzVar, long j, cvb cvbVar, Executor executor, zzdsm zzdsmVar) {
        this.f7398f = cvbVar;
        this.f7394b = zzevzVar;
        this.f7396d = j;
        this.f7393a = executor;
        this.f7399g = zzdsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return this.f7394b.zza();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        if (r2 < android.os.SystemClock.elapsedRealtime()) goto L8;
     */
    @Override // com.google.android.gms.internal.ads.zzevz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dcy zzb() {
        gvu gvuVar;
        zzbce zzbceVar = zzbcn.zzlw;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzlv)).booleanValue() && !((Boolean) this.f7397e.getAndSet(Boolean.TRUE)).booleanValue()) {
                ScheduledExecutorService scheduledExecutorService = zzcaj.zzd;
                Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzeqm
                    @Override // java.lang.Runnable
                    public final void run() {
                        r0.f7393a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeqn
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzeqp zzeqpVar = zzeqp.this;
                                zzeqpVar.f7395c.set(new gvu(zzeqpVar.f7394b.zzb(), zzeqpVar.f7396d, zzeqpVar.f7398f));
                            }
                        });
                    }
                };
                long j = this.f7396d;
                scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j, TimeUnit.MILLISECONDS);
            }
            synchronized (this) {
                try {
                    gvuVar = (gvu) this.f7395c.get();
                    if (gvuVar == null) {
                        dcy zzb = this.f7394b.zzb();
                        this.f7395c.set(new gvu(zzb, this.f7396d, this.f7398f));
                        return zzb;
                    }
                    if (!((Boolean) this.f7397e.get()).booleanValue()) {
                        cvb cvbVar = gvuVar.f18842c;
                        long j2 = gvuVar.f18841b;
                        ((czz) cvbVar).getClass();
                        if (j2 < SystemClock.elapsedRealtime()) {
                            dcy dcyVar = gvuVar.f18840a;
                            zzevz zzevzVar = this.f7394b;
                            gvu gvuVar2 = new gvu(zzevzVar.zzb(), this.f7396d, this.f7398f);
                            this.f7395c.set(gvuVar2);
                            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzlx)).booleanValue()) {
                                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzly)).booleanValue()) {
                                    zzdsl zza = this.f7399g.zza();
                                    zza.zzb("action", "scs");
                                    zza.zzb("sid", String.valueOf(this.f7394b.zza()));
                                    zza.zzf();
                                }
                                return dcyVar;
                            }
                            gvuVar = gvuVar2;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            gvuVar = (gvu) this.f7395c.get();
            if (gvuVar != null) {
                cvb cvbVar2 = gvuVar.f18842c;
                long j3 = gvuVar.f18841b;
                ((czz) cvbVar2).getClass();
            }
            zzevz zzevzVar2 = this.f7394b;
            gvu gvuVar3 = new gvu(zzevzVar2.zzb(), this.f7396d, this.f7398f);
            this.f7395c.set(gvuVar3);
            gvuVar = gvuVar3;
        }
        return gvuVar.f18840a;
    }
}
