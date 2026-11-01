package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.aeh;
import g.dyd;
import g.eno;

/* loaded from: classes3.dex */
public final class zzbzm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        String str2 = null;
        eno enoVar = null;
        aeh aehVar = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = dyd.bd(parcel, readInt);
            } else if (c2 == 2) {
                str2 = dyd.bd(parcel, readInt);
            } else if (c2 == 3) {
                enoVar = (eno) dyd.ab(parcel, readInt, eno.CREATOR);
            } else if (c2 != 4) {
                dyd.ai(parcel, readInt);
            } else {
                aehVar = (aeh) dyd.ab(parcel, readInt, aeh.CREATOR);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbzl(str, str2, enoVar, aehVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbzl[i];
    }
}
