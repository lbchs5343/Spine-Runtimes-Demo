package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbxr implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = dyd.bd(parcel, readInt);
            } else if (c2 != 2) {
                dyd.ai(parcel, readInt);
            } else {
                str2 = dyd.bd(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbxq(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbxq[i];
    }
}
