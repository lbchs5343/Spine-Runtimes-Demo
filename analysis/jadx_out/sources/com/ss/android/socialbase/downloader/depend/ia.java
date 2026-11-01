package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ia extends IInterface {

    public static abstract class dq extends Binder implements ia {

        /* renamed from: com.ss.android.socialbase.downloader.depend.ia$dq$dq, reason: collision with other inner class name */
        public static class C0235dq implements ia {
            public static ia dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9340d;

            public C0235dq(IBinder iBinder) {
                this.f9340d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9340d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.ia
            public boolean dq() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
                    if (!this.f9340d.transact(1, obtain, obtain2, 0) && dq.d() != null) {
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
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
        }

        public static ia d() {
            return C0235dq.dq;
        }

        public static ia dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ia)) ? new C0235dq(iBinder) : (ia) queryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlInterceptor");
            boolean dq = dq();
            parcel2.writeNoException();
            parcel2.writeInt(dq ? 1 : 0);
            return true;
        }
    }

    boolean dq() throws RemoteException;
}
