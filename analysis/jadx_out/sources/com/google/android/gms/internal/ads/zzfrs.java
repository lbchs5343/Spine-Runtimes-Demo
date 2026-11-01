package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import g.bjq;

/* loaded from: classes3.dex */
public final class zzfrs extends zzayc implements zzfru {
    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zze(bjq bjqVar, String str, String str2) throws RemoteException {
        Parcel r = r();
        zzaye.zzf(r, bjqVar);
        r.writeString(str);
        r.writeString(null);
        s(r, 8);
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zzf() throws RemoteException {
        s(r(), 3);
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zzg(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 7);
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zzh(int[] iArr) throws RemoteException {
        Parcel r = r();
        r.writeIntArray(null);
        s(r, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zzi(int i) throws RemoteException {
        Parcel r = r();
        r.writeInt(i);
        s(r, 6);
    }

    @Override // com.google.android.gms.internal.ads.zzfru
    public final void zzj(byte[] bArr) throws RemoteException {
        Parcel r = r();
        r.writeByteArray(bArr);
        s(r, 5);
    }
}
