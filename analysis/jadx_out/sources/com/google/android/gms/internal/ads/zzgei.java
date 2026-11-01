package com.google.android.gms.internal.ads;

import g.aku;
import g.aub;
import g.bod;
import g.ciy;
import g.ct;
import g.dcy;
import g.ddg;
import g.due;
import g.eaf;
import g.eba;
import g.fpz;
import g.fuy;
import g.gzd;
import g.hdg;
import g.hz;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzgei {
    public static zzgeg zza(Iterable iterable) {
        return new zzgeg(zzfzo.zzk(iterable), false);
    }

    public static zzgeg zzb(Iterable iterable) {
        return new zzgeg(zzfzo.zzk(iterable), true);
    }

    @SafeVarargs
    public static zzgeg zzc(dcy... dcyVarArr) {
        return new zzgeg(zzfzo.zzm(dcyVarArr), true);
    }

    public static dcy zzd(Iterable iterable) {
        return new fpz(zzfzo.zzk(iterable), true);
    }

    public static dcy zze(dcy dcyVar, Class cls, zzfwh zzfwhVar, Executor executor) {
        ct ctVar = new ct(dcyVar, cls, zzfwhVar);
        dcyVar.addListener(ctVar, zzgey.a(executor, ctVar));
        return ctVar;
    }

    public static dcy zzf(dcy dcyVar, Class cls, zzgdp zzgdpVar, Executor executor) {
        ddg ddgVar = new ddg(dcyVar, cls, zzgdpVar);
        dcyVar.addListener(ddgVar, zzgey.a(executor, ddgVar));
        return ddgVar;
    }

    public static dcy zzg(Throwable th) {
        th.getClass();
        hdg hdgVar = new hdg();
        hdgVar.zzd(th);
        return hdgVar;
    }

    public static dcy zzh(Object obj) {
        return obj == null ? eba.f15217b : new eba(obj);
    }

    public static dcy zzi() {
        return eba.f15217b;
    }

    public static dcy zzj(Callable callable, Executor executor) {
        due dueVar = new due(callable);
        executor.execute(dueVar);
        return dueVar;
    }

    public static dcy zzk(zzgdo zzgdoVar, Executor executor) {
        due dueVar = new due();
        dueVar.f14814a = new bod(dueVar, zzgdoVar);
        executor.execute(dueVar);
        return dueVar;
    }

    @SafeVarargs
    public static dcy zzl(dcy... dcyVarArr) {
        return new fpz(zzfzo.zzm(dcyVarArr), false);
    }

    public static dcy zzm(dcy dcyVar, zzfwh zzfwhVar, Executor executor) {
        ciy ciyVar = new ciy(zzfwhVar, dcyVar);
        dcyVar.addListener(ciyVar, zzgey.a(executor, ciyVar));
        return ciyVar;
    }

    public static dcy zzn(dcy dcyVar, zzgdp zzgdpVar, Executor executor) {
        int i = aub.f10849a;
        executor.getClass();
        gzd gzdVar = new gzd(zzgdpVar, dcyVar);
        dcyVar.addListener(gzdVar, zzgey.a(executor, gzdVar));
        return gzdVar;
    }

    public static dcy zzo(dcy dcyVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (dcyVar.isDone()) {
            return dcyVar;
        }
        hz hzVar = new hz();
        hzVar.f19401a = dcyVar;
        aku akuVar = new aku(13);
        akuVar.f10417b = hzVar;
        hzVar.f19402b = scheduledExecutorService.schedule(akuVar, j, timeUnit);
        dcyVar.addListener(akuVar, eaf.zza);
        return hzVar;
    }

    public static Object zzp(Future future) throws ExecutionException {
        if (future.isDone()) {
            return zzgfj.zza(future);
        }
        throw new IllegalStateException(zzfxf.zzb("Future was expected to be done: %s", future));
    }

    public static Object zzq(Future future) {
        try {
            return zzgfj.zza(future);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new zzgdx((Error) cause);
            }
            throw new zzgfi(cause);
        }
    }

    public static void zzr(dcy dcyVar, zzgee zzgeeVar, Executor executor) {
        zzgeeVar.getClass();
        dcyVar.addListener(new fuy(dcyVar, 5, zzgeeVar), executor);
    }
}
