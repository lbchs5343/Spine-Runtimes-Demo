package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;
import g.cbz;
import g.chh;
import g.dub;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbpt extends zzayc implements zzbpv {
    public zzbpt(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final boolean zzA() throws RemoteException {
        Parcel p = p(r(), 18);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final boolean zzB() throws RemoteException {
        Parcel p = p(r(), 17);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final double zze() throws RemoteException {
        Parcel p = p(r(), 8);
        double readDouble = p.readDouble();
        p.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final float zzf() throws RemoteException {
        Parcel p = p(r(), 23);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final float zzg() throws RemoteException {
        Parcel p = p(r(), 25);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final float zzh() throws RemoteException {
        Parcel p = p(r(), 24);
        float readFloat = p.readFloat();
        p.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final Bundle zzi() throws RemoteException {
        Parcel p = p(r(), 16);
        Bundle bundle = (Bundle) zzaye.zza(p, Bundle.CREATOR);
        p.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final cbz zzj() throws RemoteException {
        Parcel p = p(r(), 11);
        cbz zzb = chh.zzb(p.readStrongBinder());
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final zzbfr zzk() throws RemoteException {
        Parcel p = p(r(), 12);
        zzbfr zzj = zzbfq.zzj(p.readStrongBinder());
        p.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final zzbfy zzl() throws RemoteException {
        Parcel p = p(r(), 5);
        zzbfy zzg = zzbfx.zzg(p.readStrongBinder());
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final bjq zzm() throws RemoteException {
        return dub.e(p(r(), 13));
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final bjq zzn() throws RemoteException {
        return dub.e(p(r(), 14));
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final bjq zzo() throws RemoteException {
        return dub.e(p(r(), 15));
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzp() throws RemoteException {
        Parcel p = p(r(), 7);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzq() throws RemoteException {
        Parcel p = p(r(), 4);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzr() throws RemoteException {
        Parcel p = p(r(), 6);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzs() throws RemoteException {
        Parcel p = p(r(), 2);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzt() throws RemoteException {
        Parcel p = p(r(), 10);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzu() throws RemoteException {
        Parcel p = p(r(), 9);
        String readString = p.readString();
        p.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final List zzv() throws RemoteException {
        Parcel p = p(r(), 3);
        ArrayList zzb = zzaye.zzb(p);
        p.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzw(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 20);
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzx() throws RemoteException {
        s(r(), 19);
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzy(bjq bjqVar, bjq bjqVar2, bjq bjqVar3) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        zzaye.zzf(r, bjqVar2);
        zzaye.zzf(r, bjqVar3);
        s(r, 21);
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzz(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 22);
    }
}
