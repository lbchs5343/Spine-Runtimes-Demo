package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface u extends IInterface {

    public static abstract class dq extends Binder implements u {

        /* renamed from: com.ss.android.socialbase.downloader.depend.u$dq$dq, reason: collision with other inner class name */
        public static class C0245dq implements u {
            public static u dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9350d;

            public C0245dq(IBinder iBinder) {
                this.f9350d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9350d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.u
            public long dq(int i, int i2) throws RemoteException {
                long readLong;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f9350d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                        readLong = obtain2.readLong();
                    } else {
                        readLong = dq.dq().dq(i, i2);
                    }
                    return readLong;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
        }

        public static u dq() {
            return C0245dq.dq;
        }

        public static u dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof u)) ? new C0245dq(iBinder) : (u) queryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IRetryDelayTimeAidlCalculator");
            long dq = dq(parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeLong(dq);
            return true;
        }
    }

    long dq(int i, int i2) throws RemoteException;
}
