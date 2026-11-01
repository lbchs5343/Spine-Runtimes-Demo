package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public abstract class zzbtb extends zzayd implements zzbtc {
    public static zzbtc zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        return queryLocalInterface instanceof zzbtc ? (zzbtc) queryLocalInterface : new zzbta("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator", iBinder);
    }
}
