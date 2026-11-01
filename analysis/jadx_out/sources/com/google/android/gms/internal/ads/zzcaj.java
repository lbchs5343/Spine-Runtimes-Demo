package com.google.android.gms.internal.ads;

import g.arw;
import g.bxc;
import g.dvm;
import g.edt;
import g.gjx;
import g.he;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzcaj {
    public static final zzges zza;
    public static final zzges zzb;
    public static final zzges zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzges zze;
    public static final zzges zzf;

    static {
        ThreadPoolExecutor threadPoolExecutor;
        zzbce zzbceVar = zzbcn.zzkU;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (zzbclVar.zzb(zzbceVar) != null && ((Boolean) zzbclVar2.zzb(zzbceVar)).booleanValue()) {
            zzbce zzbceVar2 = zzbcn.zzkV;
            if (zzbclVar2.zzb(zzbceVar2) != null) {
                zzbce zzbceVar3 = zzbcn.zzkW;
                if (zzbclVar2.zzb(zzbceVar3) != null) {
                    threadPoolExecutor = new ThreadPoolExecutor(((Integer) zzbclVar2.zzb(zzbceVar2)).intValue(), ((Integer) zzbclVar2.zzb(zzbceVar2)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new dvm("Default", 1));
                    threadPoolExecutor.allowCoreThreadTimeOut(((Boolean) zzbclVar2.zzb(zzbceVar3)).booleanValue());
                    zza = new gjx((Executor) threadPoolExecutor);
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(5, 5, 10L, timeUnit, new LinkedBlockingQueue(), new dvm("Loader", 1));
                    threadPoolExecutor2.allowCoreThreadTimeOut(true);
                    zzb = new gjx((Executor) threadPoolExecutor2);
                    ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new dvm("Activeview", 1));
                    threadPoolExecutor3.allowCoreThreadTimeOut(true);
                    zzc = new gjx((Executor) threadPoolExecutor3);
                    zzd = new arw(3, new dvm("Schedule", 1));
                    zze = new gjx(new bxc(2));
                    zzf = new gjx(zzgey.zzb());
                }
            }
        }
        threadPoolExecutor = new ThreadPoolExecutor(2, he.UNDEFINED_ITEM_ID, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new dvm("Default", 1));
        zza = new gjx((Executor) threadPoolExecutor);
        TimeUnit timeUnit2 = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor22 = new ThreadPoolExecutor(5, 5, 10L, timeUnit2, new LinkedBlockingQueue(), new dvm("Loader", 1));
        threadPoolExecutor22.allowCoreThreadTimeOut(true);
        zzb = new gjx((Executor) threadPoolExecutor22);
        ThreadPoolExecutor threadPoolExecutor32 = new ThreadPoolExecutor(1, 1, 10L, timeUnit2, new LinkedBlockingQueue(), new dvm("Activeview", 1));
        threadPoolExecutor32.allowCoreThreadTimeOut(true);
        zzc = new gjx((Executor) threadPoolExecutor32);
        zzd = new arw(3, new dvm("Schedule", 1));
        zze = new gjx(new bxc(2));
        zzf = new gjx(zzgey.zzb());
    }
}
