package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbyf implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        String str2 = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 3:
                    str2 = dyd.bd(parcel, readInt);
                    break;
                case 4:
                    z = dyd.ad(parcel, readInt);
                    break;
                case 5:
                    z2 = dyd.ad(parcel, readInt);
                    break;
                case 6:
                    arrayList = dyd.ac(parcel, readInt);
                    break;
                case 7:
                    z3 = dyd.ad(parcel, readInt);
                    break;
                case '\b':
                    z4 = dyd.ad(parcel, readInt);
                    break;
                case '\t':
                    arrayList2 = dyd.ac(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbye(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbye[i];
    }
}
