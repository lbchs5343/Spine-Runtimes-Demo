package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzblf implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        long j = 0;
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = dyd.ad(parcel, readInt);
                    break;
                case 2:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 3:
                    i = dyd.ay(parcel, readInt);
                    break;
                case 4:
                    bArr = dyd.br(parcel, readInt);
                    break;
                case 5:
                    strArr = dyd.bg(parcel, readInt);
                    break;
                case 6:
                    strArr2 = dyd.bg(parcel, readInt);
                    break;
                case 7:
                    z2 = dyd.ad(parcel, readInt);
                    break;
                case '\b':
                    j = dyd.au(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzble(z, str, i, bArr, strArr, strArr2, z2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzble[i];
    }
}
