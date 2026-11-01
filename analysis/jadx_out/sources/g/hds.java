package g;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class hds implements byi {

    /* renamed from: b, reason: collision with root package name */
    public IBinder f19292b;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f19292b;
    }

    public final boolean c() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(byi.f12449a);
            obtain.writeLong(0L);
            this.f19292b.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final int d(cfo cfoVar, String str, Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(byi.f12449a);
            obtain.writeStrongInterface(cfoVar);
            obtain.writeString(str);
            acw.ad(obtain, bundle);
            this.f19292b.transact(8, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final boolean e(cfo cfoVar, Uri uri, Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(byi.f12449a);
            obtain.writeStrongInterface(cfoVar);
            acw.ad(obtain, uri);
            acw.ad(obtain, bundle);
            this.f19292b.transact(11, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final boolean f(cfo cfoVar) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(byi.f12449a);
            obtain.writeStrongInterface(cfoVar);
            this.f19292b.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final boolean g(cfo cfoVar, Uri uri) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(byi.f12449a);
            obtain.writeStrongInterface(cfoVar);
            acw.ad(obtain, uri);
            this.f19292b.transact(7, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
