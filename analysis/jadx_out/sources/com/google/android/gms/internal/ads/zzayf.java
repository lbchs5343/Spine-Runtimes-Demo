package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzayf extends zzayc implements zzayh {
    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zze(bjq bjqVar, String str) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString("GMA_SDK");
        s(r, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zzf() throws RemoteException {
        s(r(), 3);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zzg(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zzh(int[] iArr) throws RemoteException {
        Parcel r = r();
        r.writeIntArray(null);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zzi(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(0);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final void zzj(byte[] bArr) throws RemoteException {
        Parcel r = r();
        r.writeByteArray(bArr);
        s(r, 5);
    }
}
