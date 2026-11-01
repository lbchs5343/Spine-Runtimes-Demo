package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;

/* loaded from: classes3.dex */
public final class zzbvc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        String str = null;
        Bundle bundle = null;
        byte[] bArr = null;
        String str2 = null;
        String str3 = null;
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 2:
                    i = dyd.ay(parcel, readInt);
                    break;
                case 3:
                    bundle = dyd.ax(parcel, readInt);
                    break;
                case 4:
                    bArr = dyd.br(parcel, readInt);
                    break;
                case 5:
                    z = dyd.ad(parcel, readInt);
                    break;
                case 6:
                    str2 = dyd.bd(parcel, readInt);
                    break;
                case 7:
                    str3 = dyd.bd(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbvb(str, i, bundle, bArr, z, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbvb[i];
    }
}
