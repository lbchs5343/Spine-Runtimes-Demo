package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface s extends IInterface {

    public static abstract class dq extends Binder implements s {

        /* renamed from: com.ss.android.socialbase.downloader.depend.s$dq$dq, reason: collision with other inner class name */
        public static class C0244dq implements s {
            public static s dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9349d;

            public C0244dq(IBinder iBinder) {
                this.f9349d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9349d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.s
            public int dq(long j) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
                    obtain.writeLong(j);
                    if (this.f9349d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = dq.dq().dq(j);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
        }

        public static s dq() {
            return C0244dq.dq;
        }

        public static s dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof s)) ? new C0244dq(iBinder) : (s) queryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IChunkCntAidlCalculator");
            int dq = dq(parcel.readLong());
            parcel2.writeNoException();
            parcel2.writeInt(dq);
            return true;
        }
    }

    int dq(long j) throws RemoteException;
}
