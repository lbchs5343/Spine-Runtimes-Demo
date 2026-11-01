package g;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbul;
import com.google.android.gms.internal.ads.zzfxd;

/* loaded from: classes3.dex */
public final class cow extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f13255a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ph f13256b;

    public cow(ph phVar, Context context) {
        this.f13255a = context;
        this.f13256b = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f13255a, "mobile_ads_settings");
        return new fip();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.d(new bpp(this.f13255a), 243799000);
    }

    @Override // g.bir
    public final Object g() {
        gux guxVar;
        Context context = this.f13255a;
        zzbcn.zza(context);
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkp)).booleanValue();
        ph phVar = this.f13256b;
        if (!booleanValue) {
            dfk dfkVar = (dfk) phVar.f19814f;
            try {
                bpp bppVar = new bpp(context);
                gux guxVar2 = (gux) dfkVar.ai(context);
                Parcel r = guxVar2.r();
                zzaye.zzf(r, bppVar);
                r.writeInt(243799000);
                Parcel p = guxVar2.p(r, 1);
                IBinder readStrongBinder = p.readStrongBinder();
                p.recycle();
                if (readStrongBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                return queryLocalInterface instanceof apq ? (apq) queryLocalInterface : new awk(readStrongBinder);
            } catch (RemoteException | grc unused) {
                zzfxd zzfxdVar = agd.f10175a;
                return null;
            }
        }
        try {
            bpp bppVar2 = new bpp(context);
            try {
                IBinder v = kj.p(context).v("com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl");
                if (v == null) {
                    guxVar = null;
                } else {
                    IInterface queryLocalInterface2 = v.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                    guxVar = queryLocalInterface2 instanceof gux ? (gux) queryLocalInterface2 : new gux(v);
                }
                Parcel r2 = guxVar.r();
                zzaye.zzf(r2, bppVar2);
                r2.writeInt(243799000);
                Parcel p2 = guxVar.p(r2, 1);
                IBinder readStrongBinder2 = p2.readStrongBinder();
                p2.recycle();
                if (readStrongBinder2 == null) {
                    return null;
                }
                IInterface queryLocalInterface3 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                return queryLocalInterface3 instanceof apq ? (apq) queryLocalInterface3 : new awk(readStrongBinder2);
            } catch (Exception e2) {
                throw new eof(e2);
            }
        } catch (RemoteException e3) {
            e = e3;
            zzbul zza = zzbuj.zza(context);
            phVar.f19812d = zza;
            zza.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
            return null;
        } catch (eof e4) {
            e = e4;
            zzbul zza2 = zzbuj.zza(context);
            phVar.f19812d = zza2;
            zza2.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
            return null;
        } catch (NullPointerException e5) {
            e = e5;
            zzbul zza22 = zzbuj.zza(context);
            phVar.f19812d = zza22;
            zza22.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
            return null;
        }
    }
}
