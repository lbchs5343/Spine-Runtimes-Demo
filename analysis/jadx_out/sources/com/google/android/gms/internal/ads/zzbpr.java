package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.cbz;
import g.chh;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbpr extends zzayc implements IInterface {
    public final double zze() throws RemoteException {
        Parcel p = p(r(), 7);
        double readDouble = p.readDouble();
        p.recycle();
        return readDouble;
    }

    public final Bundle zzf() throws RemoteException {
        Parcel p = p(r(), 15);
        Bundle bundle = (Bundle) zzaye.zza(p, Bundle.CREATOR);
        p.recycle();
        return bundle;
    }

    public final cbz zzg() throws RemoteException {
        Parcel p = p(r(), 17);
        cbz zzb = chh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    public final zzbfr zzh() throws RemoteException {
        Parcel p = p(r(), 19);
        zzbfr zzj = zzbfq.zzj(p.readStrongBinder());
        p.recycle();
        return zzj;
    }

    public final zzbfy zzi() throws RemoteException {
        Parcel p = p(r(), 5);
        zzbfy zzg = zzbfx.zzg(p.readStrongBinder());
        p.recycle();
        return zzg;
    }

    public final bjq zzj() throws RemoteException {
        return dub.e(p(r(), 18));
    }

    public final bjq zzk() throws RemoteException {
        return dub.e(p(r(), 20));
    }

    public final bjq zzl() throws RemoteException {
        return dub.e(p(r(), 21));
    }

    public final String zzm() throws RemoteException {
        Parcel p = p(r(), 4);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    public final String zzn() throws RemoteException {
        Parcel p = p(r(), 6);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    public final String zzo() throws RemoteException {
        Parcel p = p(r(), 2);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    public final String zzp() throws RemoteException {
        Parcel p = p(r(), 9);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    public final String zzq() throws RemoteException {
        Parcel p = p(r(), 8);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    public final List zzr() throws RemoteException {
        Parcel p = p(r(), 3);
        ArrayList zzb = zzaye.zzb(p);
        p.recycle();
        return zzb;
    }

    public final void zzs(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 11);
    }

    public final void zzt() throws RemoteException {
        s(r(), 10);
    }

    public final void zzu(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 12);
    }

    public final void zzv(bjq bjqVar, bjq bjqVar2, bjq bjqVar3) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        zzaye.zzf(r, bjqVar3);
        s(r, 22);
    }

    public final void zzw(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 16);
    }

    public final boolean zzx() throws RemoteException {
        Parcel p = p(r(), 14);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    public final boolean zzy() throws RemoteException {
        Parcel p = p(r(), 13);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
