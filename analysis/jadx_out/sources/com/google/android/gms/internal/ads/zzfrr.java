package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import g.bpp;
import g.djc;
import g.dxw;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public final class zzfrr {

    /* renamed from: a, reason: collision with root package name */
    public final zzfru f8185a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8186b = true;

    public zzfrr(zzfru zzfruVar) {
        this.f8185a = zzfruVar;
    }

    public static zzfrr zzb(Context context, String str, String str2) {
        zzfru zzfrsVar;
        try {
            try {
                try {
                    IBinder v = dxw.t(context, dxw.j, ModuleDescriptor.MODULE_ID).v("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (v == null) {
                        zzfrsVar = null;
                    } else {
                        IInterface queryLocalInterface = v.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfrsVar = queryLocalInterface instanceof zzfru ? (zzfru) queryLocalInterface : new zzfrs("com.google.android.gms.gass.internal.clearcut.IGassClearcut", v);
                    }
                    zzfrsVar.zze(new bpp(context), str, null);
                    return new zzfrr(zzfrsVar);
                } catch (Exception e2) {
                    throw new zzfqt(e2);
                }
            } catch (RemoteException | zzfqt | NullPointerException | SecurityException unused) {
                return new zzfrr(new djc());
            }
        } catch (Exception e3) {
            throw new zzfqt(e3);
        }
    }

    public static zzfrr zzc() {
        return new zzfrr(new djc());
    }

    public final zzfrp zza(byte[] bArr) {
        return new zzfrp(this, bArr);
    }
}
