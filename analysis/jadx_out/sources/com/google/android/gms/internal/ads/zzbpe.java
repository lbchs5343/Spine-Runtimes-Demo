package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzbpe extends zzayc implements zzbpg {
    @Override // com.google.android.gms.internal.ads.zzbpg
    public final zzbpj zzb(String str) throws RemoteException {
        zzbpj zzbphVar;
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 1);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbphVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbphVar = queryLocalInterface instanceof zzbpj ? (zzbpj) queryLocalInterface : new zzbph("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter", readStrongBinder);
        }
        p.recycle();
        return zzbphVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final zzbrf zzc(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 3);
        zzbrf zzb = zzbre.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final boolean zzd(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 4);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final boolean zze(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 2);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
