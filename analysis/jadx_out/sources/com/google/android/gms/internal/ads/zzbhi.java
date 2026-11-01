package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import g.afk;
import g.bjq;
import g.bpp;
import g.deq;

/* loaded from: classes3.dex */
public abstract class zzbhi extends zzayd implements zzbhj {
    public zzbhi() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    public static zzbhj zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        return queryLocalInterface instanceof zzbhj ? (zzbhj) queryLocalInterface : new zzbhh("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener", iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        deq zzad = afk.zzad(parcel.readStrongBinder());
        bjq d2 = bpp.d(parcel.readStrongBinder());
        zzaye.zzc(parcel);
        zze(zzad, d2);
        parcel2.writeNoException();
        return true;
    }
}
