package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbmg extends zzayd implements zzbmh {
    public zzbmg() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
            zzaye.zzc(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
