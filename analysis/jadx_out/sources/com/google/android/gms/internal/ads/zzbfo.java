package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.cpm;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbfo implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        cpm cpmVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        boolean z4 = false;
        int i6 = 0;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = dyd.ay(parcel, readInt);
                    break;
                case 2:
                    z = dyd.ad(parcel, readInt);
                    break;
                case 3:
                    i2 = dyd.ay(parcel, readInt);
                    break;
                case 4:
                    z2 = dyd.ad(parcel, readInt);
                    break;
                case 5:
                    i3 = dyd.ay(parcel, readInt);
                    break;
                case 6:
                    cpmVar = (cpm) dyd.ab(parcel, readInt, cpm.CREATOR);
                    break;
                case 7:
                    z3 = dyd.ad(parcel, readInt);
                    break;
                case '\b':
                    i4 = dyd.ay(parcel, readInt);
                    break;
                case '\t':
                    i5 = dyd.ay(parcel, readInt);
                    break;
                case '\n':
                    z4 = dyd.ad(parcel, readInt);
                    break;
                case 11:
                    i6 = dyd.ay(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbfn(i, z, i2, z2, i3, cpmVar, z3, i4, i5, z4, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbfn[i];
    }
}
