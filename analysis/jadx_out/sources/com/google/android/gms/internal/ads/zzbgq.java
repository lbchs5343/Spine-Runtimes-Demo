package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.cbz;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbgq extends zzayc implements zzbgs {
    public zzbgq(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final cbz zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final zzbfv zzf() throws RemoteException {
        zzbfv zzbftVar;
        Parcel p = p(r(), 16);
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

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final zzbfy zzg(String str) throws RemoteException {
        zzbfy zzbfwVar;
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 2);
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

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final bjq zzh() throws RemoteException {
        return dub.e(p(r(), 9));
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final String zzi() throws RemoteException {
        Parcel p = p(r(), 4);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final String zzj(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        Parcel p = p(r, 1);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final List zzk() throws RemoteException {
        Parcel p = p(r(), 3);
        ArrayList<String> createStringArrayList = p.createStringArrayList();
        p.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzl() throws RemoteException {
        s(r(), 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzm() throws RemoteException {
        s(r(), 15);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzn(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzo() throws RemoteException {
        s(r(), 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzp(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzq() throws RemoteException {
        Parcel p = p(r(), 12);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzr(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        Parcel p = p(r, 17);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzs(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        Parcel p = p(r, 10);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final boolean zzt() throws RemoteException {
        Parcel p = p(r(), 13);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }
}
