package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbvw implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                dyd.ai(parcel, readInt);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) dyd.ab(parcel, readInt, ParcelFileDescriptor.CREATOR);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbvv(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbvv[i];
    }
}
