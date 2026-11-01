package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzfqv implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        byte[] bArr = null;
        int i = 0;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = dyd.ay(parcel, readInt);
            } else if (c2 != 2) {
                dyd.ai(parcel, readInt);
            } else {
                bArr = dyd.br(parcel, readInt);
            }
        }
        dyd.ba(parcel, bl);
        return new zzfqu(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzfqu[i];
    }
}
