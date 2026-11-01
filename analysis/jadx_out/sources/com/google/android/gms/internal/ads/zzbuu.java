package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import g.adw;
import g.bjb;
import g.lb;

/* loaded from: classes3.dex */
public final class zzbuu extends adw {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbuu(Context context, Looper looper, bjb bjbVar, lb lbVar) {
        super(r0 != null ? r0 : context, looper, bjbVar, lbVar, 8);
        Context applicationContext = context.getApplicationContext();
    }

    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.ads.internal.request.IAdsService";
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.ads.service.ADS";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsService");
        return queryLocalInterface instanceof zzbvj ? (zzbvj) queryLocalInterface : new zzbvh("com.google.android.gms.ads.internal.request.IAdsService", iBinder);
    }

    public final zzbvj zzp() throws DeadObjectException {
        return (zzbvj) getService();
    }
}
