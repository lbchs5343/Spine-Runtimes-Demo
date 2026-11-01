package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface r extends IInterface {

    public static abstract class dq extends Binder implements r {

        /* renamed from: com.ss.android.socialbase.downloader.depend.r$dq$dq, reason: collision with other inner class name */
        public static class C0243dq implements r {
            public static r dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9348d;

            public C0243dq(IBinder iBinder) {
                this.f9348d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9348d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.r
            public void dq(List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                    obtain.writeStringList(list);
                    if (this.f9348d.transact(1, obtain, obtain2, 0) || dq.d() == null) {
                        obtain2.readException();
                    } else {
                        dq.d().dq(list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.r
            public boolean dq() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                    if (!this.f9348d.transact(2, obtain, obtain2, 0) && dq.d() != null) {
                        return dq.d().dq();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
        }

        public static r d() {
            return C0243dq.dq;
        }

        public static r dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof r)) ? new C0243dq(iBinder) : (r) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                dq(parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlCallback");
            boolean dq = dq();
            parcel2.writeNoException();
            parcel2.writeInt(dq ? 1 : 0);
            return true;
        }
    }

    void dq(List<String> list) throws RemoteException;

    boolean dq() throws RemoteException;
}
