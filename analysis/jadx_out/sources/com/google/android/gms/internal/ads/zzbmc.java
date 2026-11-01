package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbmc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i2 = dyd.ay(parcel, readInt);
            } else if (c2 == 2) {
                str = dyd.bd(parcel, readInt);
            } else if (c2 == 3) {
                i3 = dyd.ay(parcel, readInt);
            } else if (c2 != 1000) {
                dyd.ai(parcel, readInt);
            } else {
                i = dyd.ay(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbmb(i, i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbmb[i];
    }
}
