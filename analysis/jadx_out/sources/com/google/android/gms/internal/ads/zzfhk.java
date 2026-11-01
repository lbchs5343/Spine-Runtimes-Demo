package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzfhk implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = dyd.ay(parcel, readInt);
                    break;
                case 2:
                    i2 = dyd.ay(parcel, readInt);
                    break;
                case 3:
                    i3 = dyd.ay(parcel, readInt);
                    break;
                case 4:
                    i4 = dyd.ay(parcel, readInt);
                    break;
                case 5:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 6:
                    i5 = dyd.ay(parcel, readInt);
                    break;
                case 7:
                    i6 = dyd.ay(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzfhj(i, i2, i3, i4, str, i5, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzfhj[i];
    }
}
