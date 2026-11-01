package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import g.agd;
import g.bhz;
import g.bpp;
import g.edt;
import g.eof;
import g.evt;
import g.kj;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzboy {

    /* renamed from: a, reason: collision with root package name */
    public static zzboy f4912a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f4913b = new AtomicBoolean(false);

    public static zzboy zza() {
        if (f4912a == null) {
            f4912a = new zzboy();
        }
        return f4912a;
    }

    public final Thread zzb(final Context context, final String str) {
        if (!this.f4913b.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbox
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                zzbcn.zza(context2);
                zzbce zzbceVar = zzbcn.zzaD;
                edt edtVar = edt.f15376a;
                zzbcl zzbclVar = edtVar.f15379d;
                zzbcl zzbclVar2 = edtVar.f15379d;
                if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("measurementEnabled", ((Boolean) zzbclVar2.zza(zzbcn.zzas)).booleanValue());
                if (((Boolean) zzbclVar2.zza(zzbcn.zzaz)).booleanValue()) {
                    bundle.putString("ad_storage", "denied");
                    bundle.putString("analytics_storage", "denied");
                }
                try {
                    ((zzchj) kj.z(context2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", new evt() { // from class: com.google.android.gms.internal.ads.zzbow
                        @Override // g.evt
                        public final Object zza(Object obj) {
                            return zzchi.zzb((IBinder) obj);
                        }
                    })).zze(new bpp(context2), new zzbov(bhz.h(context2, "am", str, bundle).f11622f));
                } catch (RemoteException | eof | NullPointerException e2) {
                    agd.g("#007 Could not call remote method.", e2);
                }
            }
        });
        thread.start();
        return thread;
    }
}
