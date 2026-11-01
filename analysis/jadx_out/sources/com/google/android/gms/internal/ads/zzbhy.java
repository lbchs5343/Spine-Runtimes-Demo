package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import g.agd;
import g.bpp;
import g.cgo;
import g.grc;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzbhy extends cgo {
    public zzbhy() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override // g.cgo
    public final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof zzbgl ? (zzbgl) queryLocalInterface : new zzbgj(iBinder);
    }

    public final zzbgi zza(View view, HashMap hashMap, HashMap hashMap2) {
        try {
            IBinder zze = ((zzbgl) ai(view.getContext())).zze(new bpp(view), new bpp(hashMap), new bpp(hashMap2));
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof zzbgi ? (zzbgi) queryLocalInterface : new zzbgg(zze);
        } catch (RemoteException | grc unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }
}
