package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.abz;

/* loaded from: classes3.dex */
public final class zzbpk extends zzayc implements zzbpm {
    public zzbpk(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zze() throws RemoteException {
        s(r(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzf() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzg(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzh(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 23);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzi(int i, String str) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        r.writeString(str);
        s(r, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzj(int i) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzk(abz abzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, abzVar);
        s(r, 24);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzl(String str) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        s(r, 21);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzm() throws RemoteException {
        s(r(), 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzn() throws RemoteException {
        s(r(), 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzo() throws RemoteException {
        s(r(), 6);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzp() throws RemoteException {
        s(r(), 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzq(String str, String str2) throws RemoteException {
        Parcel r = r();
        r.writeString(str);
        r.writeString(str2);
        s(r, 9);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzr(zzbgs zzbgsVar, String str) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbgsVar);
        r.writeString(str);
        s(r, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzs(zzbwv zzbwvVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzt(zzbwz zzbwzVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, zzbwzVar);
        s(r, 16);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzu() throws RemoteException {
        s(r(), 18);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzv() throws RemoteException {
        s(r(), 11);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzw() throws RemoteException {
        s(r(), 15);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzx() throws RemoteException {
        s(r(), 20);
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zzy() throws RemoteException {
        s(r(), 13);
    }
}
