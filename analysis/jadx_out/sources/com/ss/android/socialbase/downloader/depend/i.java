package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.r;

/* loaded from: classes.dex */
public interface i extends IInterface {

    public static abstract class dq extends Binder implements i {

        /* renamed from: com.ss.android.socialbase.downloader.depend.i$dq$dq, reason: collision with other inner class name */
        public static class C0234dq implements i {
            public static i dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9339d;

            public C0234dq(IBinder iBinder) {
                this.f9339d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9339d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.i
            public boolean dq(r rVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
                    obtain.writeStrongBinder(rVar != null ? rVar.asBinder() : null);
                    if (!this.f9339d.transact(1, obtain, obtain2, 0) && dq.dq() != null) {
                        boolean dq2 = dq.dq().dq(rVar);
                        obtain2.recycle();
                        obtain.recycle();
                        return dq2;
                    }
                    obtain2.readException();
                    boolean z = obtain2.readInt() != 0;
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
        }

        public static i dq() {
            return C0234dq.dq;
        }

        public static i dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof i)) ? new C0234dq(iBinder) : (i) queryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadForbiddenAidlHandler");
            boolean dq = dq(r.dq.dq(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(dq ? 1 : 0);
            return true;
        }
    }

    boolean dq(r rVar) throws RemoteException;
}
