package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbww implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = dyd.bd(parcel, readInt);
            } else if (c2 != 3) {
                dyd.ai(parcel, readInt);
            } else {
                i = dyd.ay(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbwv(str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbwv[i];
    }
}
