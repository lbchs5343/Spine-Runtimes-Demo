package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzbte extends zzayc implements zzbtg {
    public zzbte(IBinder iBinder) {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final boolean zzH() throws RemoteException {
        Parcel p = p(r(), 11);
        boolean zzg = zzaye.zzg(p);
        p.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzh(int i, int i2, Intent intent) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        r.writeInt(i2);
        zzaye.zzd(r, intent);
        s(r, 12);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzi() throws RemoteException {
        s(r(), 10);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzk(bjq bjqVar) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        s(r, 13);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzl(Bundle bundle) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        s(r, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzm() throws RemoteException {
        s(r(), 8);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzo() throws RemoteException {
        s(r(), 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzp(int i, String[] strArr, int[] iArr) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        r.writeStringArray(strArr);
        r.writeIntArray(iArr);
        s(r, 15);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzq() throws RemoteException {
        s(r(), 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzr() throws RemoteException {
        s(r(), 4);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzs(Bundle bundle) throws RemoteException {
        Parcel r = r();
        zzaye.zzd(r, bundle);
        Parcel p = p(r, 6);
        if (p.readInt() != 0) {
            bundle.readFromParcel(p);
        }
        p.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzt() throws RemoteException {
        s(r(), 3);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzu() throws RemoteException {
        s(r(), 7);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzv() throws RemoteException {
        s(r(), 14);
    }

    @Override // com.google.android.gms.internal.ads.zzbtg
    public final void zzx() throws RemoteException {
        s(r(), 9);
    }
}
