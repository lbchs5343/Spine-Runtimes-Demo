package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import g.akx;
import g.dyd;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbvy implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int bl = dyd.bl(parcel);
        Bundle bundle = null;
        akx akxVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        zzfhj zzfhjVar = null;
        String str4 = null;
        Bundle bundle2 = null;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    bundle = dyd.ax(parcel, readInt);
                    break;
                case 2:
                    akxVar = (akx) dyd.ab(parcel, readInt, akx.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) dyd.ab(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 5:
                    arrayList = dyd.ac(parcel, readInt);
                    break;
                case 6:
                    packageInfo = (PackageInfo) dyd.ab(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = dyd.bd(parcel, readInt);
                    break;
                case '\b':
                default:
                    dyd.ai(parcel, readInt);
                    break;
                case '\t':
                    str3 = dyd.bd(parcel, readInt);
                    break;
                case '\n':
                    zzfhjVar = (zzfhj) dyd.ab(parcel, readInt, zzfhj.CREATOR);
                    break;
                case 11:
                    str4 = dyd.bd(parcel, readInt);
                    break;
                case '\f':
                    z = dyd.ad(parcel, readInt);
                    break;
                case '\r':
                    z2 = dyd.ad(parcel, readInt);
                    break;
                case 14:
                    bundle2 = dyd.ax(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbvx(bundle, akxVar, applicationInfo, str, arrayList, packageInfo, str2, str3, zzfhjVar, str4, z, z2, bundle2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbvx[i];
    }
}
