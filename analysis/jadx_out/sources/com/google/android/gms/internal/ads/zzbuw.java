package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import g.dyd;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbuw implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        ApplicationInfo applicationInfo = null;
        String str = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        ArrayList arrayList = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    applicationInfo = (ApplicationInfo) dyd.ab(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 2:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 3:
                    packageInfo = (PackageInfo) dyd.ab(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 4:
                    str2 = dyd.bd(parcel, readInt);
                    break;
                case 5:
                    i = dyd.ay(parcel, readInt);
                    break;
                case 6:
                    str3 = dyd.bd(parcel, readInt);
                    break;
                case 7:
                    arrayList = dyd.ac(parcel, readInt);
                    break;
                case '\b':
                    z = dyd.ad(parcel, readInt);
                    break;
                case '\t':
                    z2 = dyd.ad(parcel, readInt);
                    break;
                default:
                    dyd.ai(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbuv(applicationInfo, str, packageInfo, str2, i, str3, arrayList, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbuv[i];
    }
}
