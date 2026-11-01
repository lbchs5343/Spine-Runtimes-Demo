package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import g.agd;
import g.bpp;
import g.eof;
import g.evt;
import g.kj;

/* loaded from: classes3.dex */
public final class zzbxo {
    public static final zzbxc zza(Context context, String str, zzbpg zzbpgVar) {
        try {
            IBinder zze = ((zzbxg) kj.z(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", new evt() { // from class: com.google.android.gms.internal.ads.zzbxn
                @Override // g.evt
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
                    return queryLocalInterface instanceof zzbxg ? (zzbxg) queryLocalInterface : new zzbxg("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator", iBinder);
                }
            })).zze(new bpp(context), str, zzbpgVar, 243799000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof zzbxc ? (zzbxc) queryLocalInterface : new zzbxa(zze);
        } catch (RemoteException e2) {
            e = e2;
            agd.g("#007 Could not call remote method.", e);
            return null;
        } catch (eof e3) {
            e = e3;
            agd.g("#007 Could not call remote method.", e);
            return null;
        }
    }
}
