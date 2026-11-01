package g;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbul;
import com.google.android.gms.internal.ads.zzfxd;

/* loaded from: classes3.dex */
public final class gyq extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ph f19017a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f19018b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbpc f19019c;

    public gyq(ph phVar, Context context, zzbpc zzbpcVar) {
        this.f19018b = context;
        this.f19019c = zzbpcVar;
        this.f19017a = phVar;
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object e() {
        ph.h(this.f19018b, "ads_preloader");
        return null;
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        bpp bppVar = new bpp(this.f19018b);
        zzbpc zzbpcVar = this.f19019c;
        dzg a2 = drfVar.a(bppVar, zzbpcVar, 243799000);
        a2.zzh(zzbpcVar);
        return a2;
    }

    @Override // g.bir
    public final Object g() {
        dzg auiVar;
        axj axjVar;
        dzg auiVar2;
        Context context = this.f19018b;
        bpp bppVar = new bpp(context);
        zzbcn.zza(context);
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkp)).booleanValue();
        ph phVar = this.f19017a;
        zzbpc zzbpcVar = this.f19019c;
        if (!booleanValue) {
            dfk dfkVar = (dfk) phVar.f19815g;
            try {
                bpp bppVar2 = new bpp(context);
                axj axjVar2 = (axj) dfkVar.ai(context);
                Parcel r = axjVar2.r();
                zzaye.zzf(r, bppVar2);
                zzaye.zzf(r, zzbpcVar);
                r.writeInt(243799000);
                Parcel p = axjVar2.p(r, 1);
                IBinder readStrongBinder = p.readStrongBinder();
                p.recycle();
                if (readStrongBinder == null) {
                    auiVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                    auiVar = queryLocalInterface instanceof dzg ? (dzg) queryLocalInterface : new aui(readStrongBinder);
                }
                auiVar.zzh(zzbpcVar);
                return auiVar;
            } catch (RemoteException | grc unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return null;
            }
        }
        try {
            try {
                IBinder v = kj.p(context).v("com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl");
                if (v == null) {
                    axjVar = null;
                } else {
                    IInterface queryLocalInterface2 = v.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                    axjVar = queryLocalInterface2 instanceof axj ? (axj) queryLocalInterface2 : new axj(v);
                }
                Parcel r2 = axjVar.r();
                zzaye.zzf(r2, bppVar);
                zzaye.zzf(r2, zzbpcVar);
                r2.writeInt(243799000);
                Parcel p2 = axjVar.p(r2, 1);
                IBinder readStrongBinder2 = p2.readStrongBinder();
                p2.recycle();
                if (readStrongBinder2 == null) {
                    auiVar2 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                    auiVar2 = queryLocalInterface3 instanceof dzg ? (dzg) queryLocalInterface3 : new aui(readStrongBinder2);
                }
                auiVar2.zzh(zzbpcVar);
                return auiVar2;
            } catch (Exception e2) {
                throw new eof(e2);
            }
        } catch (RemoteException e3) {
            e = e3;
            zzbul zza = zzbuj.zza(context);
            phVar.f19812d = zza;
            zza.zzh(e, "ClientApiBroker.getAdPreloader");
            return null;
        } catch (eof e4) {
            e = e4;
            zzbul zza2 = zzbuj.zza(context);
            phVar.f19812d = zza2;
            zza2.zzh(e, "ClientApiBroker.getAdPreloader");
            return null;
        } catch (NullPointerException e5) {
            e = e5;
            zzbul zza22 = zzbuj.zza(context);
            phVar.f19812d = zza22;
            zza22.zzh(e, "ClientApiBroker.getAdPreloader");
            return null;
        }
    }
}
