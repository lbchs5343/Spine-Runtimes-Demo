package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import g.agd;
import g.bpp;
import g.edt;
import g.eof;
import g.evt;
import g.ga;
import g.kj;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public final class zzbbr {

    /* renamed from: a, reason: collision with root package name */
    public zzayh f4697a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4698b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f4699c;

    public zzbbr() {
        this.f4699c = ga.f17769b;
    }

    public zzbbr(final Context context) {
        ExecutorService executorService = ga.f17769b;
        this.f4699c = executorService;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbm
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeV)).booleanValue();
                zzbbr zzbbrVar = zzbbr.this;
                Context context2 = context;
                if (booleanValue) {
                    try {
                        zzbbrVar.f4697a = (zzayh) kj.z(context2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", new evt() { // from class: com.google.android.gms.internal.ads.zzbbn
                            @Override // g.evt
                            public final Object zza(Object obj) {
                                return zzayg.zzb((IBinder) obj);
                            }
                        });
                        zzbbrVar.f4697a.zze(new bpp(context2), "GMA_SDK");
                        zzbbrVar.f4698b = true;
                    } catch (RemoteException | eof | NullPointerException unused) {
                        agd.c("Cannot dynamite load clearcut");
                    }
                }
            }
        });
    }
}
