package g;

import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzv;
import com.google.android.gms.internal.ads.zzw;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class cqu implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13347a;

    public /* synthetic */ cqu(int i) {
        this.f13347a = i;
    }

    public static void b(cmd cmdVar, Parcel parcel) {
        int af = egh.af(parcel, 20293);
        int i = cmdVar.zza;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i);
        egh.p(parcel, 2, cmdVar.zzb);
        long j = cmdVar.zzc;
        egh.aq(parcel, 3, 8);
        parcel.writeLong(j);
        Long l = cmdVar.zzd;
        if (l != null) {
            egh.aq(parcel, 4, 8);
            parcel.writeLong(l.longValue());
        }
        egh.p(parcel, 6, cmdVar.zze);
        egh.p(parcel, 7, cmdVar.zzf);
        Double d2 = cmdVar.zzg;
        if (d2 != null) {
            egh.aq(parcel, 8, 8);
            parcel.writeDouble(d2.doubleValue());
        }
        egh.s(parcel, af);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f13347a) {
            case 0:
                int bl = dyd.bl(parcel);
                IBinder iBinder = null;
                IBinder iBinder2 = null;
                boolean z = false;
                while (parcel.dataPosition() < bl) {
                    int readInt = parcel.readInt();
                    char c2 = (char) readInt;
                    if (c2 == 1) {
                        z = dyd.ad(parcel, readInt);
                    } else if (c2 == 2) {
                        iBinder = dyd.bo(parcel, readInt);
                    } else if (c2 != 3) {
                        dyd.ai(parcel, readInt);
                    } else {
                        iBinder2 = dyd.bo(parcel, readInt);
                    }
                }
                dyd.ba(parcel, bl);
                return new gfp(z, iBinder, iBinder2);
            case 1:
                int bl2 = dyd.bl(parcel);
                Bundle bundle = null;
                cqg[] cqgVarArr = null;
                csf csfVar = null;
                int i = 0;
                while (parcel.dataPosition() < bl2) {
                    int readInt2 = parcel.readInt();
                    char c3 = (char) readInt2;
                    if (c3 == 1) {
                        bundle = dyd.ax(parcel, readInt2);
                    } else if (c3 == 2) {
                        cqgVarArr = (cqg[]) dyd.an(parcel, readInt2, cqg.CREATOR);
                    } else if (c3 == 3) {
                        i = dyd.ay(parcel, readInt2);
                    } else if (c3 != 4) {
                        dyd.ai(parcel, readInt2);
                    } else {
                        csfVar = (csf) dyd.ab(parcel, readInt2, csf.CREATOR);
                    }
                }
                dyd.ba(parcel, bl2);
                return new gus(bundle, cqgVarArr, i, csfVar);
            case 2:
                int bl3 = dyd.bl(parcel);
                String str = null;
                Long l = null;
                Float f2 = null;
                String str2 = null;
                String str3 = null;
                Double d2 = null;
                long j = 0;
                int i2 = 0;
                while (parcel.dataPosition() < bl3) {
                    int readInt3 = parcel.readInt();
                    switch ((char) readInt3) {
                        case 1:
                            i2 = dyd.ay(parcel, readInt3);
                            break;
                        case 2:
                            str = dyd.bd(parcel, readInt3);
                            break;
                        case 3:
                            j = dyd.au(parcel, readInt3);
                            break;
                        case 4:
                            int ae = dyd.ae(parcel, readInt3);
                            if (ae != 0) {
                                dyd.bc(parcel, ae, 8);
                                l = Long.valueOf(parcel.readLong());
                                break;
                            } else {
                                l = null;
                                break;
                            }
                        case 5:
                            int ae2 = dyd.ae(parcel, readInt3);
                            if (ae2 != 0) {
                                dyd.bc(parcel, ae2, 4);
                                f2 = Float.valueOf(parcel.readFloat());
                                break;
                            } else {
                                f2 = null;
                                break;
                            }
                        case 6:
                            str2 = dyd.bd(parcel, readInt3);
                            break;
                        case 7:
                            str3 = dyd.bd(parcel, readInt3);
                            break;
                        case '\b':
                            int ae3 = dyd.ae(parcel, readInt3);
                            if (ae3 != 0) {
                                dyd.bc(parcel, ae3, 8);
                                d2 = Double.valueOf(parcel.readDouble());
                                break;
                            } else {
                                d2 = null;
                                break;
                            }
                        default:
                            dyd.ai(parcel, readInt3);
                            break;
                    }
                }
                dyd.ba(parcel, bl3);
                return new cmd(i2, str, j, l, f2, str2, str3, d2);
            case 3:
                int bl4 = dyd.bl(parcel);
                fzo fzoVar = null;
                int[] iArr = null;
                int[] iArr2 = null;
                boolean z2 = false;
                boolean z3 = false;
                int i3 = 0;
                while (parcel.dataPosition() < bl4) {
                    int readInt4 = parcel.readInt();
                    switch ((char) readInt4) {
                        case 1:
                            fzoVar = (fzo) dyd.ab(parcel, readInt4, fzo.CREATOR);
                            break;
                        case 2:
                            z2 = dyd.ad(parcel, readInt4);
                            break;
                        case 3:
                            z3 = dyd.ad(parcel, readInt4);
                            break;
                        case 4:
                            int ae4 = dyd.ae(parcel, readInt4);
                            int dataPosition = parcel.dataPosition();
                            if (ae4 != 0) {
                                iArr = parcel.createIntArray();
                                parcel.setDataPosition(dataPosition + ae4);
                                break;
                            } else {
                                iArr = null;
                                break;
                            }
                        case 5:
                            i3 = dyd.ay(parcel, readInt4);
                            break;
                        case 6:
                            int ae5 = dyd.ae(parcel, readInt4);
                            int dataPosition2 = parcel.dataPosition();
                            if (ae5 != 0) {
                                iArr2 = parcel.createIntArray();
                                parcel.setDataPosition(dataPosition2 + ae5);
                                break;
                            } else {
                                iArr2 = null;
                                break;
                            }
                        default:
                            dyd.ai(parcel, readInt4);
                            break;
                    }
                }
                dyd.ba(parcel, bl4);
                return new csf(fzoVar, z2, z3, iArr, i3, iArr2);
            case 4:
                int bl5 = dyd.bl(parcel);
                String str4 = null;
                boolean z4 = false;
                boolean z5 = false;
                boolean z6 = false;
                float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                int i4 = 0;
                boolean z7 = false;
                boolean z8 = false;
                boolean z9 = false;
                while (parcel.dataPosition() < bl5) {
                    int readInt5 = parcel.readInt();
                    switch ((char) readInt5) {
                        case 2:
                            z4 = dyd.ad(parcel, readInt5);
                            break;
                        case 3:
                            z5 = dyd.ad(parcel, readInt5);
                            break;
                        case 4:
                            str4 = dyd.bd(parcel, readInt5);
                            break;
                        case 5:
                            z6 = dyd.ad(parcel, readInt5);
                            break;
                        case 6:
                            dyd.bm(parcel, readInt5, 4);
                            f3 = parcel.readFloat();
                            break;
                        case 7:
                            i4 = dyd.ay(parcel, readInt5);
                            break;
                        case '\b':
                            z7 = dyd.ad(parcel, readInt5);
                            break;
                        case '\t':
                            z8 = dyd.ad(parcel, readInt5);
                            break;
                        case '\n':
                            z9 = dyd.ad(parcel, readInt5);
                            break;
                        default:
                            dyd.ai(parcel, readInt5);
                            break;
                    }
                }
                dyd.ba(parcel, bl5);
                return new fbp(z4, z5, str4, z6, f3, i4, z7, z8, z9);
            case 5:
                int bl6 = dyd.bl(parcel);
                long j2 = 0;
                long j3 = 0;
                Bundle bundle2 = null;
                ArrayList arrayList = null;
                String str5 = null;
                ela elaVar = null;
                Location location = null;
                String str6 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                ArrayList arrayList2 = null;
                String str7 = null;
                String str8 = null;
                acl aclVar = null;
                String str9 = null;
                ArrayList arrayList3 = null;
                String str10 = null;
                int i5 = 0;
                int i6 = 0;
                boolean z10 = false;
                int i7 = 0;
                boolean z11 = false;
                boolean z12 = false;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                while (parcel.dataPosition() < bl6) {
                    int readInt6 = parcel.readInt();
                    switch ((char) readInt6) {
                        case 1:
                            i5 = dyd.ay(parcel, readInt6);
                            break;
                        case 2:
                            j2 = dyd.au(parcel, readInt6);
                            break;
                        case 3:
                            bundle2 = dyd.ax(parcel, readInt6);
                            break;
                        case 4:
                            i6 = dyd.ay(parcel, readInt6);
                            break;
                        case 5:
                            arrayList = dyd.ac(parcel, readInt6);
                            break;
                        case 6:
                            z10 = dyd.ad(parcel, readInt6);
                            break;
                        case 7:
                            i7 = dyd.ay(parcel, readInt6);
                            break;
                        case '\b':
                            z11 = dyd.ad(parcel, readInt6);
                            break;
                        case '\t':
                            str5 = dyd.bd(parcel, readInt6);
                            break;
                        case '\n':
                            elaVar = (ela) dyd.ab(parcel, readInt6, ela.CREATOR);
                            break;
                        case 11:
                            location = (Location) dyd.ab(parcel, readInt6, Location.CREATOR);
                            break;
                        case '\f':
                            str6 = dyd.bd(parcel, readInt6);
                            break;
                        case '\r':
                            bundle3 = dyd.ax(parcel, readInt6);
                            break;
                        case 14:
                            bundle4 = dyd.ax(parcel, readInt6);
                            break;
                        case 15:
                            arrayList2 = dyd.ac(parcel, readInt6);
                            break;
                        case 16:
                            str7 = dyd.bd(parcel, readInt6);
                            break;
                        case 17:
                            str8 = dyd.bd(parcel, readInt6);
                            break;
                        case 18:
                            z12 = dyd.ad(parcel, readInt6);
                            break;
                        case 19:
                            aclVar = (acl) dyd.ab(parcel, readInt6, acl.CREATOR);
                            break;
                        case 20:
                            i8 = dyd.ay(parcel, readInt6);
                            break;
                        case 21:
                            str9 = dyd.bd(parcel, readInt6);
                            break;
                        case 22:
                            arrayList3 = dyd.ac(parcel, readInt6);
                            break;
                        case 23:
                            i9 = dyd.ay(parcel, readInt6);
                            break;
                        case 24:
                            str10 = dyd.bd(parcel, readInt6);
                            break;
                        case 25:
                            i10 = dyd.ay(parcel, readInt6);
                            break;
                        case 26:
                            j3 = dyd.au(parcel, readInt6);
                            break;
                        default:
                            dyd.ai(parcel, readInt6);
                            break;
                    }
                }
                dyd.ba(parcel, bl6);
                return new aeh(i5, j2, bundle2, i6, arrayList, z10, i7, z11, str5, elaVar, location, str6, bundle3, bundle4, arrayList2, str7, str8, z12, aclVar, i8, str9, arrayList3, i9, str10, i10, j3);
            case 6:
                int bl7 = dyd.bl(parcel);
                long j4 = 0;
                etg etgVar = null;
                IBinder iBinder3 = null;
                IBinder iBinder4 = null;
                IBinder iBinder5 = null;
                IBinder iBinder6 = null;
                String str11 = null;
                String str12 = null;
                IBinder iBinder7 = null;
                String str13 = null;
                akx akxVar = null;
                String str14 = null;
                fbp fbpVar = null;
                IBinder iBinder8 = null;
                String str15 = null;
                String str16 = null;
                String str17 = null;
                IBinder iBinder9 = null;
                IBinder iBinder10 = null;
                IBinder iBinder11 = null;
                boolean z13 = false;
                int i11 = 0;
                int i12 = 0;
                boolean z14 = false;
                while (parcel.dataPosition() < bl7) {
                    int readInt7 = parcel.readInt();
                    switch ((char) readInt7) {
                        case 2:
                            etgVar = (etg) dyd.ab(parcel, readInt7, etg.CREATOR);
                            break;
                        case 3:
                            iBinder3 = dyd.bo(parcel, readInt7);
                            break;
                        case 4:
                            iBinder4 = dyd.bo(parcel, readInt7);
                            break;
                        case 5:
                            iBinder5 = dyd.bo(parcel, readInt7);
                            break;
                        case 6:
                            iBinder6 = dyd.bo(parcel, readInt7);
                            break;
                        case 7:
                            str11 = dyd.bd(parcel, readInt7);
                            break;
                        case '\b':
                            z13 = dyd.ad(parcel, readInt7);
                            break;
                        case '\t':
                            str12 = dyd.bd(parcel, readInt7);
                            break;
                        case '\n':
                            iBinder7 = dyd.bo(parcel, readInt7);
                            break;
                        case 11:
                            i11 = dyd.ay(parcel, readInt7);
                            break;
                        case '\f':
                            i12 = dyd.ay(parcel, readInt7);
                            break;
                        case '\r':
                            str13 = dyd.bd(parcel, readInt7);
                            break;
                        case 14:
                            akxVar = (akx) dyd.ab(parcel, readInt7, akx.CREATOR);
                            break;
                        case 15:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        default:
                            dyd.ai(parcel, readInt7);
                            break;
                        case 16:
                            str14 = dyd.bd(parcel, readInt7);
                            break;
                        case 17:
                            fbpVar = (fbp) dyd.ab(parcel, readInt7, fbp.CREATOR);
                            break;
                        case 18:
                            iBinder8 = dyd.bo(parcel, readInt7);
                            break;
                        case 19:
                            str15 = dyd.bd(parcel, readInt7);
                            break;
                        case 24:
                            str16 = dyd.bd(parcel, readInt7);
                            break;
                        case 25:
                            str17 = dyd.bd(parcel, readInt7);
                            break;
                        case 26:
                            iBinder9 = dyd.bo(parcel, readInt7);
                            break;
                        case 27:
                            iBinder10 = dyd.bo(parcel, readInt7);
                            break;
                        case 28:
                            iBinder11 = dyd.bo(parcel, readInt7);
                            break;
                        case 29:
                            z14 = dyd.ad(parcel, readInt7);
                            break;
                        case 30:
                            j4 = dyd.au(parcel, readInt7);
                            break;
                    }
                }
                dyd.ba(parcel, bl7);
                return new AdOverlayInfoParcel(etgVar, iBinder3, iBinder4, iBinder5, iBinder6, str11, z13, str12, iBinder7, i11, i12, str13, akxVar, str14, fbpVar, iBinder8, str15, str16, str17, iBinder9, iBinder10, iBinder11, z14, j4);
            case 7:
                int bl8 = dyd.bl(parcel);
                String str18 = null;
                IBinder iBinder12 = null;
                boolean z15 = false;
                boolean z16 = false;
                boolean z17 = false;
                boolean z18 = false;
                while (parcel.dataPosition() < bl8) {
                    int readInt8 = parcel.readInt();
                    switch ((char) readInt8) {
                        case 1:
                            str18 = dyd.bd(parcel, readInt8);
                            break;
                        case 2:
                            z15 = dyd.ad(parcel, readInt8);
                            break;
                        case 3:
                            z16 = dyd.ad(parcel, readInt8);
                            break;
                        case 4:
                            iBinder12 = dyd.bo(parcel, readInt8);
                            break;
                        case 5:
                            z17 = dyd.ad(parcel, readInt8);
                            break;
                        case 6:
                            z18 = dyd.ad(parcel, readInt8);
                            break;
                        default:
                            dyd.ai(parcel, readInt8);
                            break;
                    }
                }
                dyd.ba(parcel, bl8);
                return new env(str18, z15, z16, iBinder12, z17, z18);
            case 8:
                int bl9 = dyd.bl(parcel);
                String str19 = "";
                String str20 = str19;
                String str21 = null;
                String str22 = null;
                String str23 = null;
                String str24 = null;
                String str25 = null;
                String str26 = null;
                String str27 = null;
                Boolean bool = null;
                ArrayList arrayList4 = null;
                String str28 = null;
                String str29 = null;
                long j5 = 0;
                long j6 = 0;
                long j7 = 0;
                long j8 = 0;
                long j9 = 0;
                long j10 = -2147483648L;
                boolean z19 = true;
                boolean z20 = false;
                int i13 = 0;
                boolean z21 = true;
                boolean z22 = false;
                while (parcel.dataPosition() < bl9) {
                    int readInt9 = parcel.readInt();
                    switch ((char) readInt9) {
                        case 2:
                            str21 = dyd.bd(parcel, readInt9);
                            break;
                        case 3:
                            str22 = dyd.bd(parcel, readInt9);
                            break;
                        case 4:
                            str23 = dyd.bd(parcel, readInt9);
                            break;
                        case 5:
                            str24 = dyd.bd(parcel, readInt9);
                            break;
                        case 6:
                            j5 = dyd.au(parcel, readInt9);
                            break;
                        case 7:
                            j6 = dyd.au(parcel, readInt9);
                            break;
                        case '\b':
                            str25 = dyd.bd(parcel, readInt9);
                            break;
                        case '\t':
                            z19 = dyd.ad(parcel, readInt9);
                            break;
                        case '\n':
                            z20 = dyd.ad(parcel, readInt9);
                            break;
                        case 11:
                            j10 = dyd.au(parcel, readInt9);
                            break;
                        case '\f':
                            str26 = dyd.bd(parcel, readInt9);
                            break;
                        case '\r':
                            j7 = dyd.au(parcel, readInt9);
                            break;
                        case 14:
                            j8 = dyd.au(parcel, readInt9);
                            break;
                        case 15:
                            i13 = dyd.ay(parcel, readInt9);
                            break;
                        case 16:
                            z21 = dyd.ad(parcel, readInt9);
                            break;
                        case 17:
                        case 20:
                        default:
                            dyd.ai(parcel, readInt9);
                            break;
                        case 18:
                            z22 = dyd.ad(parcel, readInt9);
                            break;
                        case 19:
                            str27 = dyd.bd(parcel, readInt9);
                            break;
                        case 21:
                            int ae6 = dyd.ae(parcel, readInt9);
                            if (ae6 != 0) {
                                dyd.bc(parcel, ae6, 4);
                                bool = Boolean.valueOf(parcel.readInt() != 0);
                                break;
                            } else {
                                bool = null;
                                break;
                            }
                        case 22:
                            j9 = dyd.au(parcel, readInt9);
                            break;
                        case 23:
                            arrayList4 = dyd.ac(parcel, readInt9);
                            break;
                        case 24:
                            str28 = dyd.bd(parcel, readInt9);
                            break;
                        case 25:
                            str19 = dyd.bd(parcel, readInt9);
                            break;
                        case 26:
                            str20 = dyd.bd(parcel, readInt9);
                            break;
                        case 27:
                            str29 = dyd.bd(parcel, readInt9);
                            break;
                    }
                }
                dyd.ba(parcel, bl9);
                return new afh(str21, str22, str23, str24, j5, j6, str25, z19, z20, j10, str26, j7, j8, i13, z21, z22, str27, bool, j9, arrayList4, str28, str19, str20, str29);
            case 9:
                int bl10 = dyd.bl(parcel);
                boolean z23 = false;
                String str30 = null;
                int i14 = 0;
                int i15 = 0;
                while (parcel.dataPosition() < bl10) {
                    int readInt10 = parcel.readInt();
                    char c4 = (char) readInt10;
                    if (c4 == 1) {
                        z23 = dyd.ad(parcel, readInt10);
                    } else if (c4 == 2) {
                        str30 = dyd.bd(parcel, readInt10);
                    } else if (c4 == 3) {
                        i14 = dyd.ay(parcel, readInt10);
                    } else if (c4 != 4) {
                        dyd.ai(parcel, readInt10);
                    } else {
                        i15 = dyd.ay(parcel, readInt10);
                    }
                }
                dyd.ba(parcel, bl10);
                return new ekj(z23, str30, i14, i15);
            case 10:
                int bl11 = dyd.bl(parcel);
                String str31 = null;
                int i16 = 0;
                int i17 = 0;
                boolean z24 = false;
                boolean z25 = false;
                while (parcel.dataPosition() < bl11) {
                    int readInt11 = parcel.readInt();
                    char c5 = (char) readInt11;
                    if (c5 == 2) {
                        str31 = dyd.bd(parcel, readInt11);
                    } else if (c5 == 3) {
                        i16 = dyd.ay(parcel, readInt11);
                    } else if (c5 == 4) {
                        i17 = dyd.ay(parcel, readInt11);
                    } else if (c5 == 5) {
                        z24 = dyd.ad(parcel, readInt11);
                    } else if (c5 != 6) {
                        dyd.ai(parcel, readInt11);
                    } else {
                        z25 = dyd.ad(parcel, readInt11);
                    }
                }
                dyd.ba(parcel, bl11);
                return new akx(str31, i16, i17, z24, z25);
            case 11:
                int bl12 = dyd.bl(parcel);
                boolean z26 = false;
                String str32 = null;
                IBinder iBinder13 = null;
                boolean z27 = false;
                while (parcel.dataPosition() < bl12) {
                    int readInt12 = parcel.readInt();
                    char c6 = (char) readInt12;
                    if (c6 == 1) {
                        str32 = dyd.bd(parcel, readInt12);
                    } else if (c6 == 2) {
                        iBinder13 = dyd.bo(parcel, readInt12);
                    } else if (c6 == 3) {
                        z26 = dyd.ad(parcel, readInt12);
                    } else if (c6 != 4) {
                        dyd.ai(parcel, readInt12);
                    } else {
                        z27 = dyd.ad(parcel, readInt12);
                    }
                }
                dyd.ba(parcel, bl12);
                return new aja(str32, iBinder13, z26, z27);
            case 12:
                return new zzw(parcel);
            case 13:
                int bl13 = dyd.bl(parcel);
                String str33 = null;
                eno[] enoVarArr = null;
                int i18 = 0;
                int i19 = 0;
                boolean z28 = false;
                int i20 = 0;
                int i21 = 0;
                boolean z29 = false;
                boolean z30 = false;
                boolean z31 = false;
                boolean z32 = false;
                boolean z33 = false;
                boolean z34 = false;
                boolean z35 = false;
                boolean z36 = false;
                while (parcel.dataPosition() < bl13) {
                    int readInt13 = parcel.readInt();
                    switch ((char) readInt13) {
                        case 2:
                            str33 = dyd.bd(parcel, readInt13);
                            break;
                        case 3:
                            i18 = dyd.ay(parcel, readInt13);
                            break;
                        case 4:
                            i19 = dyd.ay(parcel, readInt13);
                            break;
                        case 5:
                            z28 = dyd.ad(parcel, readInt13);
                            break;
                        case 6:
                            i20 = dyd.ay(parcel, readInt13);
                            break;
                        case 7:
                            i21 = dyd.ay(parcel, readInt13);
                            break;
                        case '\b':
                            enoVarArr = (eno[]) dyd.an(parcel, readInt13, eno.CREATOR);
                            break;
                        case '\t':
                            z29 = dyd.ad(parcel, readInt13);
                            break;
                        case '\n':
                            z30 = dyd.ad(parcel, readInt13);
                            break;
                        case 11:
                            z31 = dyd.ad(parcel, readInt13);
                            break;
                        case '\f':
                            z32 = dyd.ad(parcel, readInt13);
                            break;
                        case '\r':
                            z33 = dyd.ad(parcel, readInt13);
                            break;
                        case 14:
                            z34 = dyd.ad(parcel, readInt13);
                            break;
                        case 15:
                            z35 = dyd.ad(parcel, readInt13);
                            break;
                        case 16:
                            z36 = dyd.ad(parcel, readInt13);
                            break;
                        default:
                            dyd.ai(parcel, readInt13);
                            break;
                    }
                }
                dyd.ba(parcel, bl13);
                return new eno(str33, i18, i19, z28, i20, i21, enoVarArr, z29, z30, z31, z32, z33, z34, z35, z36);
            case 14:
                return new zzv(parcel);
            case 15:
                int bl14 = dyd.bl(parcel);
                long j11 = 0;
                String str34 = null;
                int i22 = 0;
                int i23 = 0;
                while (parcel.dataPosition() < bl14) {
                    int readInt14 = parcel.readInt();
                    char c7 = (char) readInt14;
                    if (c7 == 1) {
                        i22 = dyd.ay(parcel, readInt14);
                    } else if (c7 == 2) {
                        i23 = dyd.ay(parcel, readInt14);
                    } else if (c7 == 3) {
                        str34 = dyd.bd(parcel, readInt14);
                    } else if (c7 != 4) {
                        dyd.ai(parcel, readInt14);
                    } else {
                        j11 = dyd.au(parcel, readInt14);
                    }
                }
                dyd.ba(parcel, bl14);
                return new adq(i22, i23, str34, j11);
            case 16:
                int bl15 = dyd.bl(parcel);
                String str35 = null;
                abz abzVar = null;
                Bundle bundle5 = null;
                String str36 = null;
                String str37 = null;
                String str38 = null;
                String str39 = null;
                long j12 = 0;
                while (parcel.dataPosition() < bl15) {
                    int readInt15 = parcel.readInt();
                    switch ((char) readInt15) {
                        case 1:
                            str35 = dyd.bd(parcel, readInt15);
                            break;
                        case 2:
                            j12 = dyd.au(parcel, readInt15);
                            break;
                        case 3:
                            abzVar = (abz) dyd.ab(parcel, readInt15, abz.CREATOR);
                            break;
                        case 4:
                            bundle5 = dyd.ax(parcel, readInt15);
                            break;
                        case 5:
                            str36 = dyd.bd(parcel, readInt15);
                            break;
                        case 6:
                            str37 = dyd.bd(parcel, readInt15);
                            break;
                        case 7:
                            str38 = dyd.bd(parcel, readInt15);
                            break;
                        case '\b':
                            str39 = dyd.bd(parcel, readInt15);
                            break;
                        default:
                            dyd.ai(parcel, readInt15);
                            break;
                    }
                }
                dyd.ba(parcel, bl15);
                return new uf(str35, j12, abzVar, bundle5, str36, str37, str38, str39);
            default:
                int bl16 = dyd.bl(parcel);
                int i24 = 0;
                while (parcel.dataPosition() < bl16) {
                    int readInt16 = parcel.readInt();
                    if (((char) readInt16) != 2) {
                        dyd.ai(parcel, readInt16);
                    } else {
                        i24 = dyd.ay(parcel, readInt16);
                    }
                }
                dyd.ba(parcel, bl16);
                return new gby(i24);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.f13347a) {
            case 0:
                return new gfp[i];
            case 1:
                return new gus[i];
            case 2:
                return new cmd[i];
            case 3:
                return new csf[i];
            case 4:
                return new fbp[i];
            case 5:
                return new aeh[i];
            case 6:
                return new AdOverlayInfoParcel[i];
            case 7:
                return new env[i];
            case 8:
                return new afh[i];
            case 9:
                return new ekj[i];
            case 10:
                return new akx[i];
            case 11:
                return new aja[i];
            case 12:
                return new zzw[i];
            case 13:
                return new eno[i];
            case 14:
                return new zzv[i];
            case 15:
                return new adq[i];
            case 16:
                return new uf[i];
            default:
                return new gby[i];
        }
    }
}
