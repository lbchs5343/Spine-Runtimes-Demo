package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.aeh;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbwr implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        aeh aehVar = null;
        String str = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                aehVar = (aeh) dyd.ab(parcel, readInt, aeh.CREATOR);
            } else if (c2 != 3) {
                dyd.ai(parcel, readInt);
            } else {
                str = dyd.bd(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbwq(aehVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbwq[i];
    }
}
