package g;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ads.zzagz;
import com.google.android.gms.internal.ads.zzahc;
import com.google.android.gms.internal.ads.zzahd;
import com.google.android.gms.internal.ads.zzahf;
import com.google.android.gms.internal.ads.zzahg;
import com.google.android.gms.internal.ads.zzahi;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzer;
import com.google.android.gms.internal.ads.zzex;
import com.google.android.gms.internal.ads.zzey;
import com.google.android.gms.internal.ads.zzfb;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class fbe implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16508a;

    public /* synthetic */ fbe(int i) {
        this.f16508a = i;
    }

    public static void b(ctf ctfVar, Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.p(parcel, 2, ctfVar.zza);
        egh.u(parcel, 3, ctfVar.zzb, i);
        egh.p(parcel, 4, ctfVar.zzc);
        long j = ctfVar.zzd;
        egh.aq(parcel, 5, 8);
        parcel.writeLong(j);
        egh.s(parcel, af);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f16508a) {
            case 0:
                return new zzagz(parcel, null);
            case 1:
                ArrayList arrayList = new ArrayList();
                parcel.readList(arrayList, zzahc.class.getClassLoader());
                return new zzahd(arrayList);
            case 2:
                return new zzahc(parcel.readLong(), parcel.readLong(), parcel.readInt());
            case 3:
                return new zzahg(parcel, (zzahf) null);
            case 4:
                return new zzahi(parcel);
            case 5:
                int bl = dyd.bl(parcel);
                int i = 0;
                boolean z = false;
                boolean z2 = false;
                int i2 = 0;
                int i3 = 0;
                while (parcel.dataPosition() < bl) {
                    int readInt = parcel.readInt();
                    char c2 = (char) readInt;
                    if (c2 == 1) {
                        i = dyd.ay(parcel, readInt);
                    } else if (c2 == 2) {
                        z = dyd.ad(parcel, readInt);
                    } else if (c2 == 3) {
                        z2 = dyd.ad(parcel, readInt);
                    } else if (c2 == 4) {
                        i2 = dyd.ay(parcel, readInt);
                    } else if (c2 != 5) {
                        dyd.ai(parcel, readInt);
                    } else {
                        i3 = dyd.ay(parcel, readInt);
                    }
                }
                dyd.ba(parcel, bl);
                return new fzo(i, z, z2, i2, i3);
            case 6:
                int bl2 = dyd.bl(parcel);
                Bundle bundle = null;
                while (parcel.dataPosition() < bl2) {
                    int readInt2 = parcel.readInt();
                    if (((char) readInt2) != 2) {
                        dyd.ai(parcel, readInt2);
                    } else {
                        bundle = dyd.ax(parcel, readInt2);
                    }
                }
                dyd.ba(parcel, bl2);
                return new cde(bundle);
            case 7:
                int bl3 = dyd.bl(parcel);
                String str = null;
                cde cdeVar = null;
                String str2 = null;
                long j = 0;
                while (parcel.dataPosition() < bl3) {
                    int readInt3 = parcel.readInt();
                    char c3 = (char) readInt3;
                    if (c3 == 2) {
                        str = dyd.bd(parcel, readInt3);
                    } else if (c3 == 3) {
                        cdeVar = (cde) dyd.ab(parcel, readInt3, cde.CREATOR);
                    } else if (c3 == 4) {
                        str2 = dyd.bd(parcel, readInt3);
                    } else if (c3 != 5) {
                        dyd.ai(parcel, readInt3);
                    } else {
                        j = dyd.au(parcel, readInt3);
                    }
                }
                dyd.ba(parcel, bl3);
                return new ctf(str, cdeVar, str2, j);
            case 8:
                int bl4 = dyd.bl(parcel);
                String str3 = null;
                String str4 = null;
                while (parcel.dataPosition() < bl4) {
                    int readInt4 = parcel.readInt();
                    char c4 = (char) readInt4;
                    if (c4 == 1) {
                        str3 = dyd.bd(parcel, readInt4);
                    } else if (c4 != 2) {
                        dyd.ai(parcel, readInt4);
                    } else {
                        str4 = dyd.bd(parcel, readInt4);
                    }
                }
                dyd.ba(parcel, bl4);
                return new gyb(str3, str4);
            case 9:
                int bl5 = dyd.bl(parcel);
                PendingIntent pendingIntent = null;
                String str5 = null;
                int i4 = 0;
                int i5 = 0;
                while (parcel.dataPosition() < bl5) {
                    int readInt5 = parcel.readInt();
                    char c5 = (char) readInt5;
                    if (c5 == 1) {
                        i4 = dyd.ay(parcel, readInt5);
                    } else if (c5 == 2) {
                        i5 = dyd.ay(parcel, readInt5);
                    } else if (c5 == 3) {
                        pendingIntent = (PendingIntent) dyd.ab(parcel, readInt5, PendingIntent.CREATOR);
                    } else if (c5 != 4) {
                        dyd.ai(parcel, readInt5);
                    } else {
                        str5 = dyd.bd(parcel, readInt5);
                    }
                }
                dyd.ba(parcel, bl5);
                return new nk(i4, i5, pendingIntent, str5);
            case 10:
                int bl6 = dyd.bl(parcel);
                String str6 = null;
                PendingIntent pendingIntent2 = null;
                nk nkVar = null;
                int i6 = 0;
                while (parcel.dataPosition() < bl6) {
                    int readInt6 = parcel.readInt();
                    char c6 = (char) readInt6;
                    if (c6 == 1) {
                        i6 = dyd.ay(parcel, readInt6);
                    } else if (c6 == 2) {
                        str6 = dyd.bd(parcel, readInt6);
                    } else if (c6 == 3) {
                        pendingIntent2 = (PendingIntent) dyd.ab(parcel, readInt6, PendingIntent.CREATOR);
                    } else if (c6 != 4) {
                        dyd.ai(parcel, readInt6);
                    } else {
                        nkVar = (nk) dyd.ab(parcel, readInt6, nk.CREATOR);
                    }
                }
                dyd.ba(parcel, bl6);
                return new Status(i6, str6, pendingIntent2, nkVar);
            case 11:
                int bl7 = dyd.bl(parcel);
                String str7 = null;
                String str8 = null;
                String str9 = null;
                while (parcel.dataPosition() < bl7) {
                    int readInt7 = parcel.readInt();
                    char c7 = (char) readInt7;
                    if (c7 == 1) {
                        str7 = dyd.bd(parcel, readInt7);
                    } else if (c7 == 2) {
                        str8 = dyd.bd(parcel, readInt7);
                    } else if (c7 != 3) {
                        dyd.ai(parcel, readInt7);
                    } else {
                        str9 = dyd.bd(parcel, readInt7);
                    }
                }
                dyd.ba(parcel, bl7);
                return new cie(str7, str8, str9);
            case 12:
                int bl8 = dyd.bl(parcel);
                String str10 = null;
                String str11 = null;
                String str12 = null;
                String str13 = null;
                String str14 = null;
                String str15 = null;
                String str16 = null;
                Intent intent = null;
                IBinder iBinder = null;
                boolean z3 = false;
                while (parcel.dataPosition() < bl8) {
                    int readInt8 = parcel.readInt();
                    switch ((char) readInt8) {
                        case 2:
                            str10 = dyd.bd(parcel, readInt8);
                            break;
                        case 3:
                            str11 = dyd.bd(parcel, readInt8);
                            break;
                        case 4:
                            str12 = dyd.bd(parcel, readInt8);
                            break;
                        case 5:
                            str13 = dyd.bd(parcel, readInt8);
                            break;
                        case 6:
                            str14 = dyd.bd(parcel, readInt8);
                            break;
                        case 7:
                            str15 = dyd.bd(parcel, readInt8);
                            break;
                        case '\b':
                            str16 = dyd.bd(parcel, readInt8);
                            break;
                        case '\t':
                            intent = (Intent) dyd.ab(parcel, readInt8, Intent.CREATOR);
                            break;
                        case '\n':
                            iBinder = dyd.bo(parcel, readInt8);
                            break;
                        case 11:
                            z3 = dyd.ad(parcel, readInt8);
                            break;
                        default:
                            dyd.ai(parcel, readInt8);
                            break;
                    }
                }
                dyd.ba(parcel, bl8);
                return new etg(str10, str11, str12, str13, str14, str15, str16, intent, iBinder, z3);
            case 13:
                int bl9 = dyd.bl(parcel);
                int i7 = 0;
                String str17 = null;
                while (parcel.dataPosition() < bl9) {
                    int readInt9 = parcel.readInt();
                    char c8 = (char) readInt9;
                    if (c8 == 1) {
                        str17 = dyd.bd(parcel, readInt9);
                    } else if (c8 != 2) {
                        dyd.ai(parcel, readInt9);
                    } else {
                        i7 = dyd.ay(parcel, readInt9);
                    }
                }
                dyd.ba(parcel, bl9);
                return new gvi(str17, i7);
            case 14:
                return new zzbd(parcel);
            case 15:
                int bl10 = dyd.bl(parcel);
                long j2 = -1;
                int i8 = 0;
                String str18 = null;
                while (parcel.dataPosition() < bl10) {
                    int readInt10 = parcel.readInt();
                    char c9 = (char) readInt10;
                    if (c9 == 1) {
                        str18 = dyd.bd(parcel, readInt10);
                    } else if (c9 == 2) {
                        i8 = dyd.ay(parcel, readInt10);
                    } else if (c9 != 3) {
                        dyd.ai(parcel, readInt10);
                    } else {
                        j2 = dyd.au(parcel, readInt10);
                    }
                }
                dyd.ba(parcel, bl10);
                return new cqg(str18, i8, j2);
            case 16:
                int bl11 = dyd.bl(parcel);
                IBinder iBinder2 = null;
                boolean z4 = false;
                while (parcel.dataPosition() < bl11) {
                    int readInt11 = parcel.readInt();
                    char c10 = (char) readInt11;
                    if (c10 == 1) {
                        z4 = dyd.ad(parcel, readInt11);
                    } else if (c10 != 2) {
                        dyd.ai(parcel, readInt11);
                    } else {
                        iBinder2 = dyd.bo(parcel, readInt11);
                    }
                }
                dyd.ba(parcel, bl11);
                return new dgw(z4, iBinder2);
            case 17:
                int bl12 = dyd.bl(parcel);
                long j3 = 0;
                long j4 = 0;
                String str19 = null;
                String str20 = null;
                String str21 = null;
                Bundle bundle2 = null;
                String str22 = null;
                boolean z5 = false;
                while (parcel.dataPosition() < bl12) {
                    int readInt12 = parcel.readInt();
                    switch ((char) readInt12) {
                        case 1:
                            j3 = dyd.au(parcel, readInt12);
                            break;
                        case 2:
                            j4 = dyd.au(parcel, readInt12);
                            break;
                        case 3:
                            z5 = dyd.ad(parcel, readInt12);
                            break;
                        case 4:
                            str19 = dyd.bd(parcel, readInt12);
                            break;
                        case 5:
                            str20 = dyd.bd(parcel, readInt12);
                            break;
                        case 6:
                            str21 = dyd.bd(parcel, readInt12);
                            break;
                        case 7:
                            bundle2 = dyd.ax(parcel, readInt12);
                            break;
                        case '\b':
                            str22 = dyd.bd(parcel, readInt12);
                            break;
                        default:
                            dyd.ai(parcel, readInt12);
                            break;
                    }
                }
                dyd.ba(parcel, bl12);
                return new apu(j3, j4, z5, str19, str20, str21, bundle2, str22);
            case 18:
                int bl13 = dyd.bl(parcel);
                String str23 = null;
                String str24 = null;
                while (parcel.dataPosition() < bl13) {
                    int readInt13 = parcel.readInt();
                    char c11 = (char) readInt13;
                    if (c11 == 1) {
                        str23 = dyd.bd(parcel, readInt13);
                    } else if (c11 != 2) {
                        dyd.ai(parcel, readInt13);
                    } else {
                        str24 = dyd.bd(parcel, readInt13);
                    }
                }
                dyd.ba(parcel, bl13);
                return new acl(str23, str24);
            case 19:
                int bl14 = dyd.bl(parcel);
                String str25 = null;
                int i9 = 0;
                while (parcel.dataPosition() < bl14) {
                    int readInt14 = parcel.readInt();
                    char c12 = (char) readInt14;
                    if (c12 == 1) {
                        str25 = dyd.bd(parcel, readInt14);
                    } else if (c12 != 2) {
                        dyd.ai(parcel, readInt14);
                    } else {
                        i9 = dyd.ay(parcel, readInt14);
                    }
                }
                dyd.ba(parcel, bl14);
                return new bc(str25, i9);
            case 20:
                int bl15 = dyd.bl(parcel);
                int i10 = 0;
                while (parcel.dataPosition() < bl15) {
                    int readInt15 = parcel.readInt();
                    if (((char) readInt15) != 2) {
                        dyd.ai(parcel, readInt15);
                    } else {
                        i10 = dyd.ay(parcel, readInt15);
                    }
                }
                dyd.ba(parcel, bl15);
                return new fsf(i10);
            case 21:
                return new zzer(parcel, null);
            case 22:
                return new zzey(parcel, (zzex) null);
            case 23:
                return new zzfb(parcel, null);
            case 24:
                int bl16 = dyd.bl(parcel);
                String str26 = null;
                String str27 = null;
                abz abzVar = null;
                IBinder iBinder3 = null;
                int i11 = 0;
                while (parcel.dataPosition() < bl16) {
                    int readInt16 = parcel.readInt();
                    char c13 = (char) readInt16;
                    if (c13 == 1) {
                        i11 = dyd.ay(parcel, readInt16);
                    } else if (c13 == 2) {
                        str26 = dyd.bd(parcel, readInt16);
                    } else if (c13 == 3) {
                        str27 = dyd.bd(parcel, readInt16);
                    } else if (c13 == 4) {
                        abzVar = (abz) dyd.ab(parcel, readInt16, abz.CREATOR);
                    } else if (c13 != 5) {
                        dyd.ai(parcel, readInt16);
                    } else {
                        iBinder3 = dyd.bo(parcel, readInt16);
                    }
                }
                dyd.ba(parcel, bl16);
                return new abz(i11, str26, str27, abzVar, iBinder3);
            case 25:
                int bl17 = dyd.bl(parcel);
                String str28 = null;
                int i12 = 0;
                int i13 = 0;
                while (parcel.dataPosition() < bl17) {
                    int readInt17 = parcel.readInt();
                    char c14 = (char) readInt17;
                    if (c14 == 1) {
                        i12 = dyd.ay(parcel, readInt17);
                    } else if (c14 == 2) {
                        i13 = dyd.ay(parcel, readInt17);
                    } else if (c14 != 3) {
                        dyd.ai(parcel, readInt17);
                    } else {
                        str28 = dyd.bd(parcel, readInt17);
                    }
                }
                dyd.ba(parcel, bl17);
                return new gpo(i12, i13, str28);
            case 26:
                int bl18 = dyd.bl(parcel);
                int i14 = 0;
                String str29 = null;
                aeh aehVar = null;
                int i15 = 0;
                while (parcel.dataPosition() < bl18) {
                    int readInt18 = parcel.readInt();
                    char c15 = (char) readInt18;
                    if (c15 == 1) {
                        str29 = dyd.bd(parcel, readInt18);
                    } else if (c15 == 2) {
                        i14 = dyd.ay(parcel, readInt18);
                    } else if (c15 == 3) {
                        aehVar = (aeh) dyd.ab(parcel, readInt18, aeh.CREATOR);
                    } else if (c15 != 4) {
                        dyd.ai(parcel, readInt18);
                    } else {
                        i15 = dyd.ay(parcel, readInt18);
                    }
                }
                dyd.ba(parcel, bl18);
                return new ghd(str29, i14, aehVar, i15);
            case 27:
                int bl19 = dyd.bl(parcel);
                int i16 = 0;
                int i17 = 0;
                while (parcel.dataPosition() < bl19) {
                    int readInt19 = parcel.readInt();
                    char c16 = (char) readInt19;
                    if (c16 == 1) {
                        i16 = dyd.ay(parcel, readInt19);
                    } else if (c16 != 2) {
                        dyd.ai(parcel, readInt19);
                    } else {
                        i17 = dyd.ay(parcel, readInt19);
                    }
                }
                dyd.ba(parcel, bl19);
                return new pw(i16, i17);
            case 28:
                int bl20 = dyd.bl(parcel);
                String str30 = null;
                while (parcel.dataPosition() < bl20) {
                    int readInt20 = parcel.readInt();
                    if (((char) readInt20) != 15) {
                        dyd.ai(parcel, readInt20);
                    } else {
                        str30 = dyd.bd(parcel, readInt20);
                    }
                }
                dyd.ba(parcel, bl20);
                return new ela(str30);
            default:
                int bl21 = dyd.bl(parcel);
                boolean z6 = false;
                boolean z7 = false;
                boolean z8 = false;
                while (parcel.dataPosition() < bl21) {
                    int readInt21 = parcel.readInt();
                    char c17 = (char) readInt21;
                    if (c17 == 2) {
                        z6 = dyd.ad(parcel, readInt21);
                    } else if (c17 == 3) {
                        z7 = dyd.ad(parcel, readInt21);
                    } else if (c17 != 4) {
                        dyd.ai(parcel, readInt21);
                    } else {
                        z8 = dyd.ad(parcel, readInt21);
                    }
                }
                dyd.ba(parcel, bl21);
                return new cpm(z6, z7, z8);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        switch (this.f16508a) {
            case 0:
                return new zzagz[i];
            case 1:
                return new zzahd[i];
            case 2:
                return new zzahc[i];
            case 3:
                return new zzahg[i];
            case 4:
                return new zzahi[i];
            case 5:
                return new fzo[i];
            case 6:
                return new cde[i];
            case 7:
                return new ctf[i];
            case 8:
                return new gyb[i];
            case 9:
                return new nk[i];
            case 10:
                return new Status[i];
            case 11:
                return new cie[i];
            case 12:
                return new etg[i];
            case 13:
                return new gvi[i];
            case 14:
                return new zzbd[i];
            case 15:
                return new cqg[i];
            case 16:
                return new dgw[i];
            case 17:
                return new apu[i];
            case 18:
                return new acl[i];
            case 19:
                return new bc[i];
            case 20:
                return new fsf[i];
            case 21:
                return new zzer[i];
            case 22:
                return new zzey[i];
            case 23:
                return new zzfb[i];
            case 24:
                return new abz[i];
            case 25:
                return new gpo[i];
            case 26:
                return new ghd[i];
            case 27:
                return new pw[i];
            case 28:
                return new ela[i];
            default:
                return new cpm[i];
        }
    }
}
