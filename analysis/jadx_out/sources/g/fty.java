package g;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* loaded from: classes3.dex */
public final class fty extends exk {
    public static final Parcelable.Creator<fty> CREATOR = new rj(11);
    final int zaa;
    private final Account zab;
    private final int zac;
    private final GoogleSignInAccount zad;

    public fty(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.zaa = i;
        this.zab = account;
        this.zac = i2;
        this.zad = googleSignInAccount;
    }

    public fty(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zaa;
        int af = egh.af(parcel, 20293);
        egh.aq(parcel, 1, 4);
        parcel.writeInt(i2);
        egh.u(parcel, 2, this.zab, i);
        int i3 = this.zac;
        egh.aq(parcel, 3, 4);
        parcel.writeInt(i3);
        egh.u(parcel, 4, this.zad, i);
        egh.s(parcel, af);
    }
}
