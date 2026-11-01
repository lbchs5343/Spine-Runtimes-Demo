package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface o extends IInterface {

    public static abstract class dq extends Binder implements o {

        /* renamed from: com.ss.android.socialbase.downloader.depend.o$dq$dq, reason: collision with other inner class name */
        public static class C0242dq implements o {
            public static o dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9347d;

            public C0242dq(IBinder iBinder) {
                this.f9347d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9347d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.o
            public int[] d() throws RemoteException {
                int[] createIntArray;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                    if (this.f9347d.transact(3, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        createIntArray = obtain2.createIntArray();
                    } else {
                        createIntArray = dq.ox().d();
                    }
                    return createIntArray;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.o
            public String dq() throws RemoteException {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                    if (this.f9347d.transact(2, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().dq();
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.o
            public void dq(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                    obtain.writeString(str);
                    if (this.f9347d.transact(1, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                    } else {
                        dq.ox().dq(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
        }

        public static o dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof o)) ? new C0242dq(iBinder) : (o) queryLocalInterface;
        }

        public static o ox() {
            return C0242dq.dq;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                dq(parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                String dq = dq();
                parcel2.writeNoException();
                parcel2.writeString(dq);
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlMonitorDepend");
            int[] d2 = d();
            parcel2.writeNoException();
            parcel2.writeIntArray(d2);
            return true;
        }
    }

    int[] d() throws RemoteException;

    String dq() throws RemoteException;

    void dq(String str) throws RemoteException;
}
