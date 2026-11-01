package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbld implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = dyd.bd(parcel, readInt);
            } else if (c2 == 2) {
                strArr = dyd.bg(parcel, readInt);
            } else if (c2 != 3) {
                dyd.ai(parcel, readInt);
            } else {
                strArr2 = dyd.bg(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzblc(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzblc[i];
    }
}
