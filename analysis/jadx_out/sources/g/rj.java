package g;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.ads.zzafo;
import com.google.android.gms.internal.ads.zzafr;
import com.google.android.gms.internal.ads.zzaft;
import com.google.android.gms.internal.ads.zzafv;
import com.google.android.gms.internal.ads.zzafx;
import com.google.android.gms.internal.ads.zzafz;
import com.google.android.gms.internal.ads.zzagb;
import com.google.android.gms.internal.ads.zzagd;
import com.google.android.gms.internal.ads.zzagf;
import com.google.android.gms.internal.ads.zzagh;
import com.google.android.gms.internal.ads.zzago;
import com.google.android.gms.internal.ads.zzagq;
import com.google.android.gms.internal.ads.zzags;
import com.google.android.gms.internal.ads.zzagu;
import com.google.android.gms.internal.ads.zzagw;
import com.google.android.gms.internal.ads.zzfzo;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class rj implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19904a;

    public /* synthetic */ rj(int i) {
        this.f19904a = i;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f19904a) {
            case 0:
                return new he(parcel);
            case 1:
                return new fjv(parcel);
            case 2:
                return new UserInfoBean(parcel);
            case 3:
                return new gbt(parcel);
            case 4:
                int bl = dyd.bl(parcel);
                int i = 0;
                while (true) {
                    ArrayList arrayList = null;
                    while (parcel.dataPosition() < bl) {
                        int readInt = parcel.readInt();
                        char c2 = (char) readInt;
                        if (c2 == 1) {
                            i = dyd.ay(parcel, readInt);
                        } else if (c2 != 2) {
                            dyd.ai(parcel, readInt);
                        } else {
                            Parcelable.Creator<brg> creator = brg.CREATOR;
                            int ae = dyd.ae(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (ae == 0) {
                                break;
                            }
                            arrayList = parcel.createTypedArrayList(creator);
                            parcel.setDataPosition(dataPosition + ae);
                        }
                    }
                    dyd.ba(parcel, bl);
                    return new axe(i, arrayList);
                    break;
                }
            case 5:
                int bl2 = dyd.bl(parcel);
                Intent intent = null;
                int i2 = 0;
                int i3 = 0;
                while (parcel.dataPosition() < bl2) {
                    int readInt2 = parcel.readInt();
                    char c3 = (char) readInt2;
                    if (c3 == 1) {
                        i2 = dyd.ay(parcel, readInt2);
                    } else if (c3 == 2) {
                        i3 = dyd.ay(parcel, readInt2);
                    } else if (c3 != 3) {
                        dyd.ai(parcel, readInt2);
                    } else {
                        intent = (Intent) dyd.ab(parcel, readInt2, Intent.CREATOR);
                    }
                }
                dyd.ba(parcel, bl2);
                return new uh(i2, i3, intent);
            case 6:
                int bl3 = dyd.bl(parcel);
                String str = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                Uri uri = null;
                String str5 = null;
                String str6 = null;
                ArrayList arrayList2 = null;
                String str7 = null;
                String str8 = null;
                long j = 0;
                int i4 = 0;
                while (parcel.dataPosition() < bl3) {
                    int readInt3 = parcel.readInt();
                    switch ((char) readInt3) {
                        case 1:
                            i4 = dyd.ay(parcel, readInt3);
                            break;
                        case 2:
                            str = dyd.bd(parcel, readInt3);
                            break;
                        case 3:
                            str2 = dyd.bd(parcel, readInt3);
                            break;
                        case 4:
                            str3 = dyd.bd(parcel, readInt3);
                            break;
                        case 5:
                            str4 = dyd.bd(parcel, readInt3);
                            break;
                        case 6:
                            uri = (Uri) dyd.ab(parcel, readInt3, Uri.CREATOR);
                            break;
                        case 7:
                            str5 = dyd.bd(parcel, readInt3);
                            break;
                        case '\b':
                            j = dyd.au(parcel, readInt3);
                            break;
                        case '\t':
                            str6 = dyd.bd(parcel, readInt3);
                            break;
                        case '\n':
                            Parcelable.Creator<Scope> creator2 = Scope.CREATOR;
                            int ae2 = dyd.ae(parcel, readInt3);
                            int dataPosition2 = parcel.dataPosition();
                            if (ae2 != 0) {
                                ArrayList createTypedArrayList = parcel.createTypedArrayList(creator2);
                                parcel.setDataPosition(dataPosition2 + ae2);
                                arrayList2 = createTypedArrayList;
                                break;
                            } else {
                                arrayList2 = null;
                                break;
                            }
                        case 11:
                            str7 = dyd.bd(parcel, readInt3);
                            break;
                        case '\f':
                            str8 = dyd.bd(parcel, readInt3);
                            break;
                        default:
                            dyd.ai(parcel, readInt3);
                            break;
                    }
                }
                dyd.ba(parcel, bl3);
                return new GoogleSignInAccount(i4, str, str2, str3, str4, uri, str5, j, str6, arrayList2, str7, str8);
            case 7:
                int bl4 = dyd.bl(parcel);
                ArrayList arrayList3 = null;
                String str9 = null;
                while (parcel.dataPosition() < bl4) {
                    int readInt4 = parcel.readInt();
                    char c4 = (char) readInt4;
                    if (c4 == 1) {
                        arrayList3 = dyd.ac(parcel, readInt4);
                    } else if (c4 != 2) {
                        dyd.ai(parcel, readInt4);
                    } else {
                        str9 = dyd.bd(parcel, readInt4);
                    }
                }
                dyd.ba(parcel, bl4);
                return new eoj(arrayList3, str9);
            case 8:
                int bl5 = dyd.bl(parcel);
                fty ftyVar = null;
                int i5 = 0;
                while (parcel.dataPosition() < bl5) {
                    int readInt5 = parcel.readInt();
                    char c5 = (char) readInt5;
                    if (c5 == 1) {
                        i5 = dyd.ay(parcel, readInt5);
                    } else if (c5 != 2) {
                        dyd.ai(parcel, readInt5);
                    } else {
                        ftyVar = (fty) dyd.ab(parcel, readInt5, fty.CREATOR);
                    }
                }
                dyd.ba(parcel, bl5);
                return new eto(i5, ftyVar);
            case 9:
                int bl6 = dyd.bl(parcel);
                nk nkVar = null;
                cnd cndVar = null;
                int i6 = 0;
                while (parcel.dataPosition() < bl6) {
                    int readInt6 = parcel.readInt();
                    char c6 = (char) readInt6;
                    if (c6 == 1) {
                        i6 = dyd.ay(parcel, readInt6);
                    } else if (c6 == 2) {
                        nkVar = (nk) dyd.ab(parcel, readInt6, nk.CREATOR);
                    } else if (c6 != 3) {
                        dyd.ai(parcel, readInt6);
                    } else {
                        cndVar = (cnd) dyd.ab(parcel, readInt6, cnd.CREATOR);
                    }
                }
                dyd.ba(parcel, bl6);
                return new gpi(i6, nkVar, cndVar);
            case 10:
                int bl7 = dyd.bl(parcel);
                String str10 = null;
                String str11 = null;
                long j2 = 0;
                long j3 = 0;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = -1;
                while (parcel.dataPosition() < bl7) {
                    int readInt7 = parcel.readInt();
                    switch ((char) readInt7) {
                        case 1:
                            i7 = dyd.ay(parcel, readInt7);
                            break;
                        case 2:
                            i8 = dyd.ay(parcel, readInt7);
                            break;
                        case 3:
                            i9 = dyd.ay(parcel, readInt7);
                            break;
                        case 4:
                            j2 = dyd.au(parcel, readInt7);
                            break;
                        case 5:
                            j3 = dyd.au(parcel, readInt7);
                            break;
                        case 6:
                            str10 = dyd.bd(parcel, readInt7);
                            break;
                        case 7:
                            str11 = dyd.bd(parcel, readInt7);
                            break;
                        case '\b':
                            i10 = dyd.ay(parcel, readInt7);
                            break;
                        case '\t':
                            i11 = dyd.ay(parcel, readInt7);
                            break;
                        default:
                            dyd.ai(parcel, readInt7);
                            break;
                    }
                }
                dyd.ba(parcel, bl7);
                return new brg(i7, i8, i9, j2, j3, str10, str11, i10, i11);
            case 11:
                int bl8 = dyd.bl(parcel);
                Account account = null;
                GoogleSignInAccount googleSignInAccount = null;
                int i12 = 0;
                int i13 = 0;
                while (parcel.dataPosition() < bl8) {
                    int readInt8 = parcel.readInt();
                    char c7 = (char) readInt8;
                    if (c7 == 1) {
                        i12 = dyd.ay(parcel, readInt8);
                    } else if (c7 == 2) {
                        account = (Account) dyd.ab(parcel, readInt8, Account.CREATOR);
                    } else if (c7 == 3) {
                        i13 = dyd.ay(parcel, readInt8);
                    } else if (c7 != 4) {
                        dyd.ai(parcel, readInt8);
                    } else {
                        googleSignInAccount = (GoogleSignInAccount) dyd.ab(parcel, readInt8, GoogleSignInAccount.CREATOR);
                    }
                }
                dyd.ba(parcel, bl8);
                return new fty(i12, account, i13, googleSignInAccount);
            case 12:
                int bl9 = dyd.bl(parcel);
                IBinder iBinder = null;
                nk nkVar2 = null;
                int i14 = 0;
                boolean z = false;
                boolean z2 = false;
                while (parcel.dataPosition() < bl9) {
                    int readInt9 = parcel.readInt();
                    char c8 = (char) readInt9;
                    if (c8 == 1) {
                        i14 = dyd.ay(parcel, readInt9);
                    } else if (c8 == 2) {
                        iBinder = dyd.bo(parcel, readInt9);
                    } else if (c8 == 3) {
                        nkVar2 = (nk) dyd.ab(parcel, readInt9, nk.CREATOR);
                    } else if (c8 == 4) {
                        z = dyd.ad(parcel, readInt9);
                    } else if (c8 != 5) {
                        dyd.ai(parcel, readInt9);
                    } else {
                        z2 = dyd.ad(parcel, readInt9);
                    }
                }
                dyd.ba(parcel, bl9);
                return new cnd(i14, iBinder, nkVar2, z, z2);
            case 13:
                int bl10 = dyd.bl(parcel);
                String str12 = null;
                int i15 = 0;
                while (parcel.dataPosition() < bl10) {
                    int readInt10 = parcel.readInt();
                    char c9 = (char) readInt10;
                    if (c9 == 1) {
                        i15 = dyd.ay(parcel, readInt10);
                    } else if (c9 != 2) {
                        dyd.ai(parcel, readInt10);
                    } else {
                        str12 = dyd.bd(parcel, readInt10);
                    }
                }
                dyd.ba(parcel, bl10);
                return new Scope(i15, str12);
            case 14:
                int bl11 = dyd.bl(parcel);
                String str13 = null;
                String str14 = null;
                cmd cmdVar = null;
                String str15 = null;
                ctf ctfVar = null;
                ctf ctfVar2 = null;
                ctf ctfVar3 = null;
                long j4 = 0;
                long j5 = 0;
                long j6 = 0;
                boolean z3 = false;
                while (parcel.dataPosition() < bl11) {
                    int readInt11 = parcel.readInt();
                    switch ((char) readInt11) {
                        case 2:
                            str13 = dyd.bd(parcel, readInt11);
                            break;
                        case 3:
                            str14 = dyd.bd(parcel, readInt11);
                            break;
                        case 4:
                            cmdVar = (cmd) dyd.ab(parcel, readInt11, cmd.CREATOR);
                            break;
                        case 5:
                            j4 = dyd.au(parcel, readInt11);
                            break;
                        case 6:
                            z3 = dyd.ad(parcel, readInt11);
                            break;
                        case 7:
                            str15 = dyd.bd(parcel, readInt11);
                            break;
                        case '\b':
                            ctfVar = (ctf) dyd.ab(parcel, readInt11, ctf.CREATOR);
                            break;
                        case '\t':
                            j5 = dyd.au(parcel, readInt11);
                            break;
                        case '\n':
                            ctfVar2 = (ctf) dyd.ab(parcel, readInt11, ctf.CREATOR);
                            break;
                        case 11:
                            j6 = dyd.au(parcel, readInt11);
                            break;
                        case '\f':
                            ctfVar3 = (ctf) dyd.ab(parcel, readInt11, ctf.CREATOR);
                            break;
                        default:
                            dyd.ai(parcel, readInt11);
                            break;
                    }
                }
                dyd.ba(parcel, bl11);
                return new bou(str13, str14, cmdVar, j4, z3, str15, ctfVar, j5, ctfVar2, j6, ctfVar3);
            case 15:
                return new zzafo(parcel);
            case 16:
                return new zzafr(parcel);
            case 17:
                return new zzaft(parcel);
            case 18:
                return new zzafv(parcel);
            case 19:
                return new zzafx(parcel);
            case 20:
                return new zzafz(parcel);
            case 21:
                return new zzagb(parcel);
            case 22:
                return new zzagd(parcel);
            case 23:
                return new zzagf(parcel);
            case 24:
                return new zzagh(parcel);
            case 25:
                return new zzago(parcel);
            case 26:
                return new zzagq(parcel);
            case 27:
                return new zzags(parcel);
            case 28:
                String readString = parcel.readString();
                readString.getClass();
                String readString2 = parcel.readString();
                String[] createStringArray = parcel.createStringArray();
                createStringArray.getClass();
                return new zzagu(readString, readString2, zzfzo.zzm(createStringArray));
            default:
                return new zzagw(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f19904a) {
            case 0:
                return new he[i];
            case 1:
                return new fjv[i];
            case 2:
                return new UserInfoBean[i];
            case 3:
                return new gbt[i];
            case 4:
                return new axe[i];
            case 5:
                return new uh[i];
            case 6:
                return new GoogleSignInAccount[i];
            case 7:
                return new eoj[i];
            case 8:
                return new eto[i];
            case 9:
                return new gpi[i];
            case 10:
                return new brg[i];
            case 11:
                return new fty[i];
            case 12:
                return new cnd[i];
            case 13:
                return new Scope[i];
            case 14:
                return new bou[i];
            case 15:
                return new zzafo[i];
            case 16:
                return new zzafr[i];
            case 17:
                return new zzaft[i];
            case 18:
                return new zzafv[i];
            case 19:
                return new zzafx[i];
            case 20:
                return new zzafz[i];
            case 21:
                return new zzagb[i];
            case 22:
                return new zzagd[i];
            case 23:
                return new zzagf[i];
            case 24:
                return new zzagh[i];
            case 25:
                return new zzago[i];
            case 26:
                return new zzagq[i];
            case 27:
                return new zzags[i];
            case 28:
                return new zzagu[i];
            default:
                return new zzagw[i];
        }
    }
}
