package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aeh;
import g.akx;
import g.dyd;
import g.eno;
import g.fsf;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzbut implements Parcelable.Creator {
    public static final zzbus zza(Parcel parcel) {
        int bl = dyd.bl(parcel);
        long j = 0;
        long j2 = 0;
        int i = 0;
        Bundle bundle = null;
        aeh aehVar = null;
        eno enoVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        akx akxVar = null;
        Bundle bundle2 = null;
        int i2 = 0;
        ArrayList arrayList = null;
        Bundle bundle3 = null;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList2 = null;
        String str7 = null;
        zzbfn zzbfnVar = null;
        ArrayList arrayList3 = null;
        String str8 = null;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        String str9 = null;
        String str10 = null;
        boolean z4 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        String str11 = null;
        fsf fsfVar = null;
        boolean z5 = false;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z6 = false;
        ArrayList arrayList4 = null;
        String str15 = null;
        ArrayList arrayList5 = null;
        int i8 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        ArrayList arrayList6 = null;
        String str16 = null;
        zzbmb zzbmbVar = null;
        String str17 = null;
        Bundle bundle6 = null;
        while (parcel.dataPosition() < bl) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = dyd.ay(parcel, readInt);
                    break;
                case 2:
                    bundle = dyd.ax(parcel, readInt);
                    break;
                case 3:
                    aehVar = (aeh) dyd.ab(parcel, readInt, aeh.CREATOR);
                    break;
                case 4:
                    enoVar = (eno) dyd.ab(parcel, readInt, eno.CREATOR);
                    break;
                case 5:
                    str = dyd.bd(parcel, readInt);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) dyd.ab(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) dyd.ab(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case '\b':
                    str2 = dyd.bd(parcel, readInt);
                    break;
                case '\t':
                    str3 = dyd.bd(parcel, readInt);
                    break;
                case '\n':
                    str4 = dyd.bd(parcel, readInt);
                    break;
                case 11:
                    akxVar = (akx) dyd.ab(parcel, readInt, akx.CREATOR);
                    break;
                case '\f':
                    bundle2 = dyd.ax(parcel, readInt);
                    break;
                case '\r':
                    i2 = dyd.ay(parcel, readInt);
                    break;
                case 14:
                    arrayList = dyd.ac(parcel, readInt);
                    break;
                case 15:
                    bundle3 = dyd.ax(parcel, readInt);
                    break;
                case 16:
                    z = dyd.ad(parcel, readInt);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case ' ':
                case '&':
                case '>':
                default:
                    dyd.ai(parcel, readInt);
                    break;
                case 18:
                    i3 = dyd.ay(parcel, readInt);
                    break;
                case 19:
                    i4 = dyd.ay(parcel, readInt);
                    break;
                case 20:
                    dyd.bm(parcel, readInt, 4);
                    f2 = parcel.readFloat();
                    break;
                case 21:
                    str5 = dyd.bd(parcel, readInt);
                    break;
                case 25:
                    j = dyd.au(parcel, readInt);
                    break;
                case 26:
                    str6 = dyd.bd(parcel, readInt);
                    break;
                case 27:
                    arrayList2 = dyd.ac(parcel, readInt);
                    break;
                case 28:
                    str7 = dyd.bd(parcel, readInt);
                    break;
                case 29:
                    zzbfnVar = (zzbfn) dyd.ab(parcel, readInt, zzbfn.CREATOR);
                    break;
                case 30:
                    arrayList3 = dyd.ac(parcel, readInt);
                    break;
                case 31:
                    j2 = dyd.au(parcel, readInt);
                    break;
                case '!':
                    str8 = dyd.bd(parcel, readInt);
                    break;
                case '\"':
                    dyd.bm(parcel, readInt, 4);
                    f3 = parcel.readFloat();
                    break;
                case '#':
                    i5 = dyd.ay(parcel, readInt);
                    break;
                case '$':
                    i6 = dyd.ay(parcel, readInt);
                    break;
                case '%':
                    z3 = dyd.ad(parcel, readInt);
                    break;
                case '\'':
                    str9 = dyd.bd(parcel, readInt);
                    break;
                case '(':
                    z2 = dyd.ad(parcel, readInt);
                    break;
                case ')':
                    str10 = dyd.bd(parcel, readInt);
                    break;
                case '*':
                    z4 = dyd.ad(parcel, readInt);
                    break;
                case '+':
                    i7 = dyd.ay(parcel, readInt);
                    break;
                case ',':
                    bundle4 = dyd.ax(parcel, readInt);
                    break;
                case '-':
                    str11 = dyd.bd(parcel, readInt);
                    break;
                case '.':
                    fsfVar = (fsf) dyd.ab(parcel, readInt, fsf.CREATOR);
                    break;
                case '/':
                    z5 = dyd.ad(parcel, readInt);
                    break;
                case '0':
                    bundle5 = dyd.ax(parcel, readInt);
                    break;
                case '1':
                    str12 = dyd.bd(parcel, readInt);
                    break;
                case '2':
                    str13 = dyd.bd(parcel, readInt);
                    break;
                case '3':
                    str14 = dyd.bd(parcel, readInt);
                    break;
                case '4':
                    z6 = dyd.ad(parcel, readInt);
                    break;
                case '5':
                    int ae = dyd.ae(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (ae == 0) {
                        arrayList4 = null;
                        break;
                    } else {
                        ArrayList arrayList7 = new ArrayList();
                        int readInt2 = parcel.readInt();
                        for (int i9 = 0; i9 < readInt2; i9++) {
                            arrayList7.add(Integer.valueOf(parcel.readInt()));
                        }
                        parcel.setDataPosition(dataPosition + ae);
                        arrayList4 = arrayList7;
                        break;
                    }
                case '6':
                    str15 = dyd.bd(parcel, readInt);
                    break;
                case '7':
                    arrayList5 = dyd.ac(parcel, readInt);
                    break;
                case '8':
                    i8 = dyd.ay(parcel, readInt);
                    break;
                case '9':
                    z7 = dyd.ad(parcel, readInt);
                    break;
                case ':':
                    z8 = dyd.ad(parcel, readInt);
                    break;
                case ';':
                    z9 = dyd.ad(parcel, readInt);
                    break;
                case '<':
                    arrayList6 = dyd.ac(parcel, readInt);
                    break;
                case '=':
                    str16 = dyd.bd(parcel, readInt);
                    break;
                case '?':
                    zzbmbVar = (zzbmb) dyd.ab(parcel, readInt, zzbmb.CREATOR);
                    break;
                case '@':
                    str17 = dyd.bd(parcel, readInt);
                    break;
                case 'A':
                    bundle6 = dyd.ax(parcel, readInt);
                    break;
            }
        }
        dyd.ba(parcel, bl);
        return new zzbus(i, bundle, aehVar, enoVar, str, applicationInfo, packageInfo, str2, str3, str4, akxVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f2, str5, j, str6, arrayList2, str7, zzbfnVar, arrayList3, j2, str8, f3, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, fsfVar, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, zzbmbVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return zza(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzbus[i];
    }
}
