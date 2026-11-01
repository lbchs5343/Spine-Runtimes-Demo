package g;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public final class fhn extends Binder implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eeo f16796a;

    public fhn(eeo eeoVar) {
        this.f16796a = eeoVar;
        attachInterface(this, "com.google.android.gms.appset.internal.IAppSetIdCallback");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        Parcelable.Creator<Status> creator = Status.CREATOR;
        int i3 = dfo.f14095a;
        Status createFromParcel = parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
        bc createFromParcel2 = parcel.readInt() == 0 ? null : bc.CREATOR.createFromParcel(parcel);
        fro froVar = createFromParcel2 != null ? new fro(createFromParcel2.zzb(), createFromParcel2.zza()) : null;
        chw chwVar = this.f16796a.f15402a;
        if (createFromParcel.isSuccess()) {
            chwVar.m(froVar);
            return true;
        }
        chwVar.l(createFromParcel.hasResolution() ? new dsh(createFromParcel) : new dmw(createFromParcel));
        return true;
    }
}
