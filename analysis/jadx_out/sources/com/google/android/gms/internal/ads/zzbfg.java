package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import g.agd;
import g.eof;
import g.evt;
import g.kj;

/* loaded from: classes3.dex */
public final class zzbfg {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4793a;

    public zzbfg(Context context) {
        this.f4793a = context;
    }

    public final void zza(zzbuq zzbuqVar) {
        try {
            ((zzbfh) kj.z(this.f4793a, "com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy", new evt() { // from class: com.google.android.gms.internal.ads.zzbff
                @Override // g.evt
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
                    return queryLocalInterface instanceof zzbfh ? (zzbfh) queryLocalInterface : new zzbfh("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy", iBinder);
                }
            })).zze(zzbuqVar);
        } catch (RemoteException e2) {
            agd.b("Error calling setFlagsAccessedBeforeInitializedListener: ".concat(String.valueOf(e2.getMessage())));
        } catch (eof e3) {
            agd.b("Could not load com.google.android.gms.ads.flags.FlagRetrieverSupplierProxy:".concat(String.valueOf(e3.getMessage())));
        }
    }
}
