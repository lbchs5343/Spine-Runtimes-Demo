package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bh;
import g.bjq;
import g.cbz;
import g.chh;
import g.dub;
import g.gcq;
import g.gfc;
import g.gga;
import g.gwt;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbht extends zzayc implements zzbhv {
    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzA() throws RemoteException {
        s(r(), 28);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzB(Bundle bundle) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        s(r, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzC(Bundle bundle) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        s(r, 17);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzD() throws RemoteException {
        s(r(), 27);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzE(gfc gfcVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, gfcVar);
        s(r, 26);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzF(gwt gwtVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, gwtVar);
        s(r, 32);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzG(zzbhs zzbhsVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbhsVar);
        s(r, 21);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final boolean zzH() throws RemoteException {
        Parcel p = p(r(), 30);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final boolean zzI() throws RemoteException {
        Parcel p = p(r(), 24);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final boolean zzJ(Bundle bundle) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        Parcel p = p(r, 16);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final double zze() throws RemoteException {
        Parcel p = p(r(), 8);
        double readDouble = p.readDouble();
        p.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final Bundle zzf() throws RemoteException {
        Parcel p = p(r(), 20);
        Bundle bundle = (Bundle) zzaye.zza(p, Bundle.CREATOR);
        p.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final gcq zzg() throws RemoteException {
        Parcel p = p(r(), 31);
        gcq zzb = bh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final cbz zzh() throws RemoteException {
        Parcel p = p(r(), 11);
        cbz zzb = chh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final zzbfr zzi() throws RemoteException {
        zzbfr zzbfpVar;
        Parcel p = p(r(), 14);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbfpVar = queryLocalInterface instanceof zzbfr ? (zzbfr) queryLocalInterface : new zzbfp(readStrongBinder);
        }
        p.recycle();
        return zzbfpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final zzbfv zzj() throws RemoteException {
        zzbfv zzbftVar;
        Parcel p = p(r(), 29);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbftVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbftVar = queryLocalInterface instanceof zzbfv ? (zzbfv) queryLocalInterface : new zzbft(readStrongBinder);
        }
        p.recycle();
        return zzbftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final zzbfy zzk() throws RemoteException {
        zzbfy zzbfwVar;
        Parcel p = p(r(), 5);
        IBinder readStrongBinder = p.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbfwVar = queryLocalInterface instanceof zzbfy ? (zzbfy) queryLocalInterface : new zzbfw(readStrongBinder);
        }
        p.recycle();
        return zzbfwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final bjq zzl() throws RemoteException {
        return dub.e(p(r(), 19));
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final bjq zzm() throws RemoteException {
        return dub.e(p(r(), 18));
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzn() throws RemoteException {
        Parcel p = p(r(), 7);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzo() throws RemoteException {
        Parcel p = p(r(), 4);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzp() throws RemoteException {
        Parcel p = p(r(), 6);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzq() throws RemoteException {
        Parcel p = p(r(), 2);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzr() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzs() throws RemoteException {
        Parcel p = p(r(), 10);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final String zzt() throws RemoteException {
        Parcel p = p(r(), 9);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final List zzu() throws RemoteException {
        Parcel p = p(r(), 3);
        ArrayList zzb = zzaye.zzb(p);
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final List zzv() throws RemoteException {
        Parcel p = p(r(), 23);
        ArrayList zzb = zzaye.zzb(p);
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzw() throws RemoteException {
        s(r(), 22);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzx() throws RemoteException {
        s(r(), 13);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzy(gga ggaVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, ggaVar);
        s(r, 25);
    }

    @Override // com.google.android.gms.internal.ads.zzbhv
    public final void zzz(Bundle bundle) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        s(r, 15);
    }
}
