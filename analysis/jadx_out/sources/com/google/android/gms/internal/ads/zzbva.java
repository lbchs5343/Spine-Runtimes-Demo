package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbva implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                dyd.ai(parcel, readInt);
            } else {
                str = dyd.bd(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbuz(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbuz[i];
    }
}
