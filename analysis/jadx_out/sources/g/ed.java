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
public final class ed extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbpc f15326a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ph f15327b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f15328c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f15329d;

    public ed(ph phVar, Context context, String str, zzbpc zzbpcVar) {
        this.f15328c = context;
        this.f15329d = str;
        this.f15326a = zzbpcVar;
        this.f15327b = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f15328c, "native_ad");
        return new gkf();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.k(new bpp(this.f15328c), this.f15329d, this.f15326a, 243799000);
    }

    @Override // g.bir
    public final Object g() {
        fgg fggVar;
        Context context = this.f15328c;
        zzbcn.zza(context);
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkp)).booleanValue();
        zzbpc zzbpcVar = this.f15326a;
        String str = this.f15329d;
        ph phVar = this.f15327b;
        if (!booleanValue) {
            dfk dfkVar = (dfk) phVar.f19813e;
            try {
                bpp bppVar = new bpp(context);
                fgg fggVar2 = (fgg) dfkVar.ai(context);
                Parcel r = fggVar2.r();
                zzaye.zzf(r, bppVar);
                r.writeString(str);
                zzaye.zzf(r, zzbpcVar);
                r.writeInt(243799000);
                Parcel p = fggVar2.p(r, 1);
                IBinder readStrongBinder = p.readStrongBinder();
                p.recycle();
                if (readStrongBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                return queryLocalInterface instanceof hav ? (hav) queryLocalInterface : new jr(readStrongBinder);
            } catch (RemoteException | grc unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return null;
            }
        }
        try {
            bpp bppVar2 = new bpp(context);
            try {
                IBinder v = kj.p(context).v("com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl");
                if (v == null) {
                    fggVar = null;
                } else {
                    IInterface queryLocalInterface2 = v.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                    fggVar = queryLocalInterface2 instanceof fgg ? (fgg) queryLocalInterface2 : new fgg(v);
                }
                Parcel r2 = fggVar.r();
                zzaye.zzf(r2, bppVar2);
                r2.writeString(str);
                zzaye.zzf(r2, zzbpcVar);
                r2.writeInt(243799000);
                Parcel p2 = fggVar.p(r2, 1);
                IBinder readStrongBinder2 = p2.readStrongBinder();
                p2.recycle();
                if (readStrongBinder2 == null) {
                    return null;
                }
                IInterface queryLocalInterface3 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                return queryLocalInterface3 instanceof hav ? (hav) queryLocalInterface3 : new jr(readStrongBinder2);
            } catch (Exception e2) {
                throw new eof(e2);
            }
        } catch (RemoteException e3) {
            e = e3;
            zzbul zza = zzbuj.zza(context);
            phVar.f19812d = zza;
            zza.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
            return null;
        } catch (eof e4) {
            e = e4;
            zzbul zza2 = zzbuj.zza(context);
            phVar.f19812d = zza2;
            zza2.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
            return null;
        } catch (NullPointerException e5) {
            e = e5;
            zzbul zza22 = zzbuj.zza(context);
            phVar.f19812d = zza22;
            zza22.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
            return null;
        }
    }
}
