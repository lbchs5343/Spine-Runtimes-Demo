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
public final class zzbps extends zzayc implements IInterface {
    public final Bundle zze() throws RemoteException {
        Parcel p = p(r(), 13);
        Bundle bundle = (Bundle) zzaye.zza(p, Bundle.CREATOR);
        p.recycle();
        return bundle;
    }

    public final cbz zzf() throws RemoteException {
        Parcel p = p(r(), 16);
        cbz zzb = chh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    public final zzbfr zzg() throws RemoteException {
        Parcel p = p(r(), 19);
        zzbfr zzj = zzbfq.zzj(p.readStrongBinder());
        p.recycle();
        return zzj;
    }

    public final zzbfy zzh() throws RemoteException {
        Parcel p = p(r(), 5);
        zzbfy zzg = zzbfx.zzg(p.readStrongBinder());
        p.recycle();
        return zzg;
    }

    public final bjq zzi() throws RemoteException {
        return dub.e(p(r(), 15));
    }

    public final bjq zzj() throws RemoteException {
        return dub.e(p(r(), 20));
    }

    public final bjq zzk() throws RemoteException {
        return dub.e(p(r(), 21));
    }

    public final String zzl() throws RemoteException {
        Parcel p = p(r(), 7);
        String readString = p.readString();
        p.recycle();
        return readString;
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

    public final List zzp() throws RemoteException {
        Parcel p = p(r(), 3);
        ArrayList zzb = zzaye.zzb(p);
        p.recycle();
        return zzb;
    }

    public final void zzq(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 9);
    }

    public final void zzr() throws RemoteException {
        s(r(), 8);
    }

    public final void zzs(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 10);
    }

    public final void zzt(bjq bjqVar, bjq bjqVar2, bjq bjqVar3) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        zzaye.zzf(r, bjqVar3);
        s(r, 22);
    }

    public final void zzu(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 14);
    }

    public final boolean zzv() throws RemoteException {
        Parcel p = p(r(), 12);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    public final boolean zzw() throws RemoteException {
        Parcel p = p(r(), 11);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
