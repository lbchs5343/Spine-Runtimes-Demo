package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import g.agd;
import g.bpp;
import g.cgo;
import g.grc;

/* loaded from: classes3.dex */
public final class zzbhx extends cgo {
    public zzbhx() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    @Override // g.cgo
    public final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof zzbgf ? (zzbgf) queryLocalInterface : new zzbgd(iBinder);
    }

    public final zzbgc zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder zze = ((zzbgf) ai(context)).zze(new bpp(context), new bpp(frameLayout), new bpp(frameLayout2), 243799000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof zzbgc ? (zzbgc) queryLocalInterface : new zzbga(zze);
        } catch (RemoteException | grc unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }
}
