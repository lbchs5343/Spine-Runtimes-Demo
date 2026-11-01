package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import g.bjb;
import g.etz;
import g.lb;

/* loaded from: classes3.dex */
public final class zzbur extends etz {
    public zzbur(Context context, Looper looper, bjb bjbVar, lb lbVar) {
        super(zzbwh.zza(context), looper, bjbVar, lbVar, 8);
    }

    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.ads.service.START";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        return queryLocalInterface instanceof zzbvf ? (zzbvf) queryLocalInterface : new zzbvd("com.google.android.gms.ads.internal.request.IAdRequestService", iBinder);
    }

    public final zzbvf zzp() throws DeadObjectException {
        return (zzbvf) getService();
    }
}
