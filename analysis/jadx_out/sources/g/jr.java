package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbhc;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbhm;

/* loaded from: classes3.dex */
public final class jr extends zzayc implements hav {
    public jr(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder", iBinder);
    }

    @Override // g.hav
    public final cpu zze() {
        cpu bssVar;
        Parcel p = p(r(), 1);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            bssVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            bssVar = queryLocalInterface instanceof cpu ? (cpu) queryLocalInterface : new bss("com.google.android.gms.ads.internal.client.IAdLoader", readStrongBinder);
        }
        p.recycle();
        return bssVar;
    }

    @Override // g.hav
    public final void zzh(String str, zzbhf zzbhfVar, zzbhc zzbhcVar) {
        Parcel r = r();
        r.writeString(str);
        zzaye.zzf(r, zzbhfVar);
        zzaye.zzf(r, zzbhcVar);
        s(r, 5);
    }

    @Override // g.hav
    public final void zzk(zzbhm zzbhmVar) {
        Parcel r = r();
        zzaye.zzf(r, zzbhmVar);
        s(r, 10);
    }

    @Override // g.hav
    public final void zzl(ejp ejpVar) {
        Parcel r = r();
        zzaye.zzf(r, ejpVar);
        s(r, 2);
    }

    @Override // g.hav
    public final void zzo(zzbfn zzbfnVar) {
        Parcel r = r();
        zzaye.zzd(r, zzbfnVar);
        s(r, 6);
    }
}
