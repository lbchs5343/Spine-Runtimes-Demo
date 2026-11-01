package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbae;
import com.google.android.gms.internal.ads.zzbaf;
import com.google.android.gms.internal.ads.zzbpg;
import com.google.android.gms.internal.ads.zzbxb;
import com.google.android.gms.internal.ads.zzbxc;
import java.util.List;

/* loaded from: classes3.dex */
public final class aui extends zzayc implements dzg {
    public aui(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.client.IAdPreloader", iBinder);
    }

    @Override // g.dzg
    public final zzbaf zze(String str) {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 5);
        zzbaf zzb = zzbae.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // g.dzg
    public final deq zzf(String str) {
        deq hiVar;
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 7);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            hiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            hiVar = queryLocalInterface instanceof deq ? (deq) queryLocalInterface : new hi(readStrongBinder);
        }
        p.recycle();
        return hiVar;
    }

    @Override // g.dzg
    public final zzbxc zzg(String str) {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 3);
        zzbxc zzq = zzbxb.zzq(p.readStrongBinder());
        p.recycle();
        return zzq;
    }

    @Override // g.dzg
    public final void zzh(zzbpg zzbpgVar) {
        Parcel r = r();
        zzaye.zzf(r, zzbpgVar);
        s(r, 8);
    }

    @Override // g.dzg
    public final void zzi(List list, aik aikVar) {
        Parcel r = r();
        r.writeTypedList(list);
        zzaye.zzf(r, aikVar);
        s(r, 1);
    }

    @Override // g.dzg
    public final boolean zzj(String str) {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 4);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // g.dzg
    public final boolean zzk(String str) {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 6);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // g.dzg
    public final boolean zzl(String str) {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 2);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
