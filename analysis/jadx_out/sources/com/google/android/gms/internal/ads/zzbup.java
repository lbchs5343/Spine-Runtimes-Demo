package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzbup extends zzayd implements zzbuq {
    public zzbup() {
        super("com.google.android.gms.ads.internal.report.IDynamiteErrorEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        zzb();
        parcel2.writeNoException();
        return true;
    }
}
