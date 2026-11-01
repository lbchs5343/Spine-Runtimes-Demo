package g;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class edo implements fuh {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f15366a;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f15366a;
    }

    @Override // g.fuh
    public final void b(String[] strArr) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(fuh.f17431c);
            obtain.writeStringArray(strArr);
            this.f15366a.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
