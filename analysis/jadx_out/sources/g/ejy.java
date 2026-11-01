package g;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbpg;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbul;
import com.google.android.gms.internal.ads.zzfxd;

/* loaded from: classes3.dex */
public final class ejy extends cgo {

    /* renamed from: d, reason: collision with root package name */
    public zzbul f15695d;

    @Override // g.cgo
    public final /* synthetic */ Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof drv ? (drv) queryLocalInterface : new drv(iBinder);
    }

    public final deq h(Context context, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        drv drvVar;
        eno enoVar2;
        String str2;
        zzbpg zzbpgVar2;
        int i2;
        zzbcn.zza(context);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkp)).booleanValue()) {
            try {
                bpp bppVar = new bpp(context);
                try {
                    IBinder v = kj.p(context).v("com.google.android.gms.ads.ChimeraAdManagerCreatorImpl");
                    if (v == null) {
                        enoVar2 = enoVar;
                        str2 = str;
                        zzbpgVar2 = zzbpgVar;
                        i2 = i;
                        drvVar = null;
                    } else {
                        IInterface queryLocalInterface = v.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                        drvVar = queryLocalInterface instanceof drv ? (drv) queryLocalInterface : new drv(v);
                        enoVar2 = enoVar;
                        str2 = str;
                        zzbpgVar2 = zzbpgVar;
                        i2 = i;
                    }
                    IBinder a2 = drvVar.a(bppVar, enoVar2, str2, zzbpgVar2, i2);
                    if (a2 != null) {
                        IInterface queryLocalInterface2 = a2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                        return queryLocalInterface2 instanceof deq ? (deq) queryLocalInterface2 : new hi(a2);
                    }
                } catch (Exception e2) {
                    throw new eof(e2);
                }
            } catch (RemoteException e3) {
                e = e3;
                Exception exc = e;
                zzbul zza = zzbuj.zza(context);
                this.f15695d = zza;
                zza.zzh(exc, "AdManagerCreator.newAdManagerByDynamiteLoader");
                agd.g("#007 Could not call remote method.", exc);
                return null;
            } catch (eof e4) {
                e = e4;
                Exception exc2 = e;
                zzbul zza2 = zzbuj.zza(context);
                this.f15695d = zza2;
                zza2.zzh(exc2, "AdManagerCreator.newAdManagerByDynamiteLoader");
                agd.g("#007 Could not call remote method.", exc2);
                return null;
            } catch (NullPointerException e5) {
                e = e5;
                Exception exc22 = e;
                zzbul zza22 = zzbuj.zza(context);
                this.f15695d = zza22;
                zza22.zzh(exc22, "AdManagerCreator.newAdManagerByDynamiteLoader");
                agd.g("#007 Could not call remote method.", exc22);
                return null;
            }
        } else {
            try {
                IBinder a3 = ((drv) ai(context)).a(new bpp(context), enoVar, str, zzbpgVar, i);
                if (a3 != null) {
                    IInterface queryLocalInterface3 = a3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    return queryLocalInterface3 instanceof deq ? (deq) queryLocalInterface3 : new hi(a3);
                }
            } catch (RemoteException | grc unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return null;
            }
        }
        return null;
    }
}
