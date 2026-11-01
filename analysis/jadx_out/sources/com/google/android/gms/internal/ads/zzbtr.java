package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes3.dex */
public final class zzbtr extends zzayd implements zzbts {
    public static zzbts zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        return queryLocalInterface instanceof zzbts ? (zzbts) queryLocalInterface : new zzbtq("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener", iBinder);
    }
}
