package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import g.agd;
import g.bpp;
import g.cgo;
import g.grc;

/* loaded from: classes3.dex */
public final class zzbtd extends cgo {
    public zzbtd() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override // g.cgo
    public final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof zzbtj ? (zzbtj) queryLocalInterface : new zzbth(iBinder);
    }

    public final zzbtg zza(Activity activity) {
        try {
            IBinder zze = ((zzbtj) ai(activity)).zze(new bpp(activity));
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof zzbtg ? (zzbtg) queryLocalInterface : new zzbte(zze);
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        } catch (grc unused2) {
            zzfxd zzfxdVar2 = agd.f10175a;
            return null;
        }
    }
}
