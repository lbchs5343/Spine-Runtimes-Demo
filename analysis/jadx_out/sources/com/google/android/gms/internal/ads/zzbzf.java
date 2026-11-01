package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.dub;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbzf extends zzayc implements zzbzh {
    public zzbzf(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final bjq zze(bjq bjqVar, bjq bjqVar2, String str, bjq bjqVar3) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        r.writeString(str);
        zzaye.zzf(r, bjqVar3);
        return dub.e(p(r, 11));
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzf(bjq bjqVar, zzbzl zzbzlVar, zzbze zzbzeVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzd(r, zzbzlVar);
        zzaye.zzf(r, zzbzeVar);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzg(zzbue zzbueVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, zzbueVar);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzh(List list, bjq bjqVar, zzbtv zzbtvVar) throws RemoteException {
        Parcel r = r();
        r.writeTypedList(list);
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbtvVar);
        s(r, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzi(List list, bjq bjqVar, zzbtv zzbtvVar) throws RemoteException {
        Parcel r = r();
        r.writeTypedList(list);
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbtvVar);
        s(r, 9);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzj(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzk(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzl(List list, bjq bjqVar, zzbtv zzbtvVar) throws RemoteException {
        Parcel r = r();
        r.writeTypedList(list);
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbtvVar);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final void zzm(List list, bjq bjqVar, zzbtv zzbtvVar) throws RemoteException {
        Parcel r = r();
        r.writeTypedList(list);
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, zzbtvVar);
        s(r, 5);
    }
}
