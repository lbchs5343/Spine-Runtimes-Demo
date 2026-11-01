package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.cbz;
import g.chh;
import g.dub;

/* loaded from: classes3.dex */
public final class zzbft extends zzayc implements zzbfv {
    public zzbft(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final float zze() throws RemoteException {
        Parcel p = p(r(), 2);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final float zzf() throws RemoteException {
        Parcel p = p(r(), 6);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final float zzg() throws RemoteException {
        Parcel p = p(r(), 5);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final cbz zzh() throws RemoteException {
        Parcel p = p(r(), 7);
        cbz zzb = chh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final bjq zzi() throws RemoteException {
        return dub.e(p(r(), 4));
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zzj(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final boolean zzk() throws RemoteException {
        Parcel p = p(r(), 10);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final boolean zzl() throws RemoteException {
        Parcel p = p(r(), 8);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zzm(zzbhg zzbhgVar) throws RemoteException {
        throw null;
    }
}
