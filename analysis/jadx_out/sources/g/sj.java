package g;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class sj implements anf {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f19976a;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f19976a;
    }

    @Override // g.anf
    public final ParcelFileDescriptor h(int i, String str, boolean z) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("b.e.f");
            obtain.writeString(str);
            obtain.writeInt(i);
            obtain.writeInt(z ? 1 : 0);
            this.f19976a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return (ParcelFileDescriptor) (obtain2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // g.anf
    public final Bundle k() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("b.e.f");
            this.f19976a.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            return (Bundle) (obtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(obtain2) : null);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // g.anf
    public final Bundle l(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("b.e.f");
            obtain.writeString(str);
            this.f19976a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return (Bundle) (obtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(obtain2) : null);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // g.anf
    public final Bundle m() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("b.e.f");
            this.f19976a.transact(4, obtain, obtain2, 0);
            obtain2.readException();
            return (Bundle) (obtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(obtain2) : null);
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
