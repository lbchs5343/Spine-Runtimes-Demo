package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import g.bjb;
import g.cqg;
import g.edt;
import g.egb;
import g.etz;
import g.ffb;
import g.lb;

/* loaded from: classes3.dex */
public final class zzbaw extends etz {
    public zzbaw(Context context, Looper looper, bjb bjbVar, lb lbVar) {
        super(zzbwh.zza(context), looper, bjbVar, lbVar, 123);
    }

    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        return queryLocalInterface instanceof zzbaz ? (zzbaz) queryLocalInterface : new zzbaz("com.google.android.gms.ads.internal.cache.ICacheService", iBinder);
    }

    @Override // g.adw
    public final cqg[] getApiFeatures() {
        return egb.f15474b;
    }

    public final boolean zzp() {
        cqg[] availableFeatures = getAvailableFeatures();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue()) {
            cqg cqgVar = egb.f15473a;
            int length = availableFeatures != null ? availableFeatures.length : 0;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (!ffb.w(availableFeatures[i], cqgVar)) {
                    i++;
                } else if (i >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public final zzbaz zzq() throws DeadObjectException {
        return (zzbaz) getService();
    }
}
