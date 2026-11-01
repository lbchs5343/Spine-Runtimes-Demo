package g;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.gms.common.api.Scope;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import moe.shizuku.api.BinderContainer;

/* loaded from: classes3.dex */
public final class dud implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14813a;

    public /* synthetic */ dud(int i) {
        this.f14813a = i;
    }

    public static void b(dhw dhwVar, Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        int i2 = dhwVar.zzc;
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        int i3 = dhwVar.zzd;
        egh.aq(parcel, 2, 4);
        parcel.writeInt(i3);
        int i4 = dhwVar.zze;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i4);
        egh.p(parcel, 4, dhwVar.zzf);
        egh.az(parcel, 5, dhwVar.zzg);
        egh.ah(parcel, 6, dhwVar.zzh, i);
        egh.ac(parcel, 7, dhwVar.zzi);
        egh.u(parcel, 8, dhwVar.zzj, i);
        egh.ah(parcel, 10, dhwVar.zzk, i);
        egh.ah(parcel, 11, dhwVar.zzl, i);
        boolean z = dhwVar.zzm;
        egh.aq(parcel, 12, 4);
        parcel.writeInt(z ? 1 : 0);
        int i5 = dhwVar.zzn;
        egh.aq(parcel, 13, 4);
        parcel.writeInt(i5);
        boolean z2 = dhwVar.zzo;
        egh.aq(parcel, 14, 4);
        parcel.writeInt(z2 ? 1 : 0);
        egh.p(parcel, 15, dhwVar.zza());
        egh.s(parcel, af);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f14813a) {
            case 0:
                int bl = dyd.bl(parcel);
                Scope[] scopeArr = dhw.zza;
                Bundle bundle = new Bundle();
                cqg[] cqgVarArr = dhw.zzb;
                cqg[] cqgVarArr2 = cqgVarArr;
                String str = null;
                IBinder iBinder = null;
                Account account = null;
                String str2 = null;
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                boolean z = false;
                int i4 = 0;
                boolean z2 = false;
                while (parcel.dataPosition() < bl) {
                    int readInt = parcel.readInt();
                    switch ((char) readInt) {
                        case 1:
                            i = dyd.ay(parcel, readInt);
                            break;
                        case 2:
                            i2 = dyd.ay(parcel, readInt);
                            break;
                        case 3:
                            i3 = dyd.ay(parcel, readInt);
                            break;
                        case 4:
                            str = dyd.bd(parcel, readInt);
                            break;
                        case 5:
                            iBinder = dyd.bo(parcel, readInt);
                            break;
                        case 6:
                            scopeArr = (Scope[]) dyd.an(parcel, readInt, Scope.CREATOR);
                            break;
                        case 7:
                            bundle = dyd.ax(parcel, readInt);
                            break;
                        case '\b':
                            account = (Account) dyd.ab(parcel, readInt, Account.CREATOR);
                            break;
                        case '\t':
                        default:
                            dyd.ai(parcel, readInt);
                            break;
                        case '\n':
                            cqgVarArr = (cqg[]) dyd.an(parcel, readInt, cqg.CREATOR);
                            break;
                        case 11:
                            cqgVarArr2 = (cqg[]) dyd.an(parcel, readInt, cqg.CREATOR);
                            break;
                        case '\f':
                            z = dyd.ad(parcel, readInt);
                            break;
                        case '\r':
                            i4 = dyd.ay(parcel, readInt);
                            break;
                        case 14:
                            z2 = dyd.ad(parcel, readInt);
                            break;
                        case 15:
                            str2 = dyd.bd(parcel, readInt);
                            break;
                    }
                }
                dyd.ba(parcel, bl);
                return new dhw(i, i2, i3, str, iBinder, scopeArr, bundle, account, cqgVarArr, cqgVarArr2, z, i4, z2, str2);
            case 1:
                return new ejn(parcel);
            case 2:
                return new etm(parcel);
            case 3:
                return new fwx(parcel);
            case 4:
                return new ctg(parcel);
            case 5:
                return new ddq(parcel);
            case 6:
                return new androidx.fragment.app.s(parcel);
            case 7:
                return new androidx.fragment.app.w(parcel);
            case 8:
                return new cbf(parcel, 0);
            case 9:
                return new BinderContainer(parcel);
            case 10:
                return new avv(parcel);
            case 11:
                return new fxe(parcel);
            case 12:
                return new CrashDetailBean(parcel);
            case 13:
                return new gll(parcel);
            case 14:
                return new avj(parcel);
            case 15:
                return new fob(parcel);
            case 16:
                return new androidx.fragment.app.k(parcel);
            case 17:
                return new androidx.fragment.app.m(parcel);
            case 18:
                return new dgk(parcel);
            case 19:
                bff.p(parcel, "inParcel");
                return new czn(parcel);
            case 20:
                return new bhj(parcel, null);
            case 21:
                return new ekt(parcel, null);
            case 22:
                return edj.create(parcel.readInt(), parcel.readInt());
            case 23:
                return new bn(parcel);
            case 24:
                return new ParcelImpl(parcel);
            case 25:
                return new PlugInBean(parcel);
            case 26:
                return new blc(parcel);
            case 27:
                return new StrategyBean(parcel);
            case 28:
                return new jp(parcel);
            default:
                return new cgg(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        switch (this.f14813a) {
            case 0:
                return new dhw[i];
            case 1:
                return new ejn[i];
            case 2:
                return new etm[i];
            case 3:
                return new fwx[i];
            case 4:
                return new ctg[i];
            case 5:
                return new ddq[i];
            case 6:
                return new androidx.fragment.app.s[i];
            case 7:
                return new androidx.fragment.app.w[i];
            case 8:
                return new cbf[i];
            case 9:
                return new BinderContainer[i];
            case 10:
                return new avv[i];
            case 11:
                return new fxe[i];
            case 12:
                return new CrashDetailBean[i];
            case 13:
                return new gll[i];
            case 14:
                return new avj[i];
            case 15:
                return new fob[i];
            case 16:
                return new androidx.fragment.app.k[i];
            case 17:
                return new androidx.fragment.app.m[i];
            case 18:
                return new dgk[i];
            case 19:
                return new czn[i];
            case 20:
                return new bhj[i];
            case 21:
                return new ekt[i];
            case 22:
                return new edj[i];
            case 23:
                return new bn[i];
            case 24:
                return new ParcelImpl[i];
            case 25:
                return new PlugInBean[i];
            case 26:
                return new blc[i];
            case 27:
                return new StrategyBean[i];
            case 28:
                return new jp[i];
            default:
                return new cgg[i];
        }
    }
}
