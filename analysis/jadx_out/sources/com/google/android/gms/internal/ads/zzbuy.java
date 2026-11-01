package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbuy implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        ArrayList arrayList = null;
        boolean z = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                z = dyd.ad(parcel, readInt);
            } else if (c2 != 3) {
                dyd.ai(parcel, readInt);
            } else {
                arrayList = dyd.ac(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzbux(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbux[i];
    }
}
