package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbav implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        long j = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) dyd.ab(parcel, readInt, ParcelFileDescriptor.CREATOR);
            } else if (c2 == 3) {
                z = dyd.ad(parcel, readInt);
            } else if (c2 == 4) {
                z2 = dyd.ad(parcel, readInt);
            } else if (c2 == 5) {
                j = dyd.au(parcel, readInt);
            } else if (c2 != 6) {
                dyd.ai(parcel, readInt);
            } else {
                z3 = dyd.ad(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbau(parcelFileDescriptor, z, z2, j, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbau[i];
    }
}
