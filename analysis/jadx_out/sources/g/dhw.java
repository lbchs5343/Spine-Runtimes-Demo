package g;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes3.dex */
public class dhw extends exk {
    public static final Parcelable.Creator<dhw> CREATOR = new dud(0);
    static final Scope[] zza = new Scope[0];
    static final cqg[] zzb = new cqg[0];
    final int zzc;
    final int zzd;
    final int zze;
    String zzf;
    IBinder zzg;
    Scope[] zzh;
    Bundle zzi;
    Account zzj;
    cqg[] zzk;
    cqg[] zzl;
    final boolean zzm;
    final int zzn;
    boolean zzo;
    private final String zzp;

    public dhw(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, cqg[] cqgVarArr, cqg[] cqgVarArr2, boolean z, int i4, boolean z2, String str2) {
        Scope[] scopeArr2 = scopeArr == null ? zza : scopeArr;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        cqg[] cqgVarArr3 = cqgVarArr == null ? zzb : cqgVarArr;
        cqg[] cqgVarArr4 = cqgVarArr2 == null ? zzb : cqgVarArr2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        if ("com.google.android.gms".equals(str)) {
            this.zzf = "com.google.android.gms";
        } else {
            this.zzf = str;
        }
        if (i < 2) {
            Account account2 = null;
            if (iBinder != null) {
                int i5 = drn.f14673a;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                fmp caqVar = queryLocalInterface instanceof fmp ? (fmp) queryLocalInterface : new caq(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 1);
                if (caqVar != null) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        caq caqVar2 = (caq) caqVar;
                        Parcel _ce = caqVar2._ce(caqVar2._cd(), 2);
                        Account account3 = (Account) bon.b(_ce, Account.CREATOR);
                        _ce.recycle();
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        account2 = account3;
                    } catch (RemoteException unused) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th;
                    }
                }
            }
            this.zzj = account2;
        } else {
            this.zzg = iBinder;
            this.zzj = account;
        }
        this.zzh = scopeArr2;
        this.zzi = bundle2;
        this.zzk = cqgVarArr3;
        this.zzl = cqgVarArr4;
        this.zzm = z;
        this.zzn = i4;
        this.zzo = z2;
        this.zzp = str2;
    }

    public Bundle getExtraArgs() {
        return this.zzi;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        dud.b(this, parcel, i);
    }

    public final String zza() {
        return this.zzp;
    }
}
