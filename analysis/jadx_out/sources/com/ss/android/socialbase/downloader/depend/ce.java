package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ce extends IInterface {

    public static abstract class dq extends Binder implements ce {

        /* renamed from: com.ss.android.socialbase.downloader.depend.ce$dq$dq, reason: collision with other inner class name */
        public static class C0231dq implements ce {
            public static ce dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9336d;

            public C0231dq(IBinder iBinder) {
                this.f9336d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9336d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.ce
            public void dq(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f9336d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                    } else {
                        dq.dq().dq(i, i2);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
        }

        public static ce dq() {
            return C0231dq.dq;
        }

        public static ce dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ce)) ? new C0231dq(iBinder) : (ce) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.ProcessAidlCallback");
            dq(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void dq(int i, int i2) throws RemoteException;
}
