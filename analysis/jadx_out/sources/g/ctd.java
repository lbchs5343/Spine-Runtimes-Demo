package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public final class ctd implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f13459a;

    public ctd(IBinder iBinder) {
        this.f13459a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f13459a;
    }

    public final void b(cj cjVar, dhw dhwVar) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(cjVar);
            obtain.writeInt(1);
            dud.b(dhwVar, obtain, 0);
            this.f13459a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
