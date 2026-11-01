package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class guw implements ggc, IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f18791a;

    public guw(IBinder iBinder) {
        this.f18791a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f18791a;
    }

    public final Parcel b(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f18791a.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e2) {
                obtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }
}
