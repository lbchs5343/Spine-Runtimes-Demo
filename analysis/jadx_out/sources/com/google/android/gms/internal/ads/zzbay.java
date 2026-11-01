package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbay implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        long j = 0;
        long j2 = 0;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 3:
                    j = dyd.au(parcel, readInt);
                    break;
                case 4:
                    str2 = dyd.bd(parcel, readInt);
                    break;
                case 5:
                    str3 = dyd.bd(parcel, readInt);
                    break;
                case 6:
                    str4 = dyd.bd(parcel, readInt);
                    break;
                case 7:
                    bundle = dyd.ax(parcel, readInt);
                    break;
                case '\b':
                    z = dyd.ad(parcel, readInt);
                    break;
                case '\t':
                    j2 = dyd.au(parcel, readInt);
                    break;
                case '\n':
                    str5 = dyd.bd(parcel, readInt);
                    break;
                case 11:
                    i = dyd.ay(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbax(str, j, str2, str3, str4, bundle, z, j2, str5, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbax[i];
    }
}
