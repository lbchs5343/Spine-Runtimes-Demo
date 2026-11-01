package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbrv implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = dyd.ay(parcel, readInt);
            } else if (c2 == 2) {
                i2 = dyd.ay(parcel, readInt);
            } else if (c2 != 3) {
                dyd.ai(parcel, readInt);
            } else {
                i3 = dyd.ay(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbru(i, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbru[i];
    }
}
