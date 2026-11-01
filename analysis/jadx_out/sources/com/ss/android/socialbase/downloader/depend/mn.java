package com.ss.android.socialbase.downloader.depend;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface mn extends IInterface {

    public static abstract class dq extends Binder implements mn {

        /* renamed from: com.ss.android.socialbase.downloader.depend.mn$dq$dq, reason: collision with other inner class name */
        public static class C0240dq implements mn {
            public static mn dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9345d;

            public C0240dq(IBinder iBinder) {
                this.f9345d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9345d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.mn
            public Uri dq(String str, String str2) throws RemoteException {
                Uri uri;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (this.f9345d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                        uri = obtain2.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        uri = dq.dq().dq(str, str2);
                    }
                    return uri;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
        }

        public static mn dq() {
            return C0240dq.dq;
        }

        public static mn dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof mn)) ? new C0240dq(iBinder) : (mn) queryLocalInterface;
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
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadAidlFileProvider");
            Uri dq = dq(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            if (dq != null) {
                parcel2.writeInt(1);
                dq.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    Uri dq(String str, String str2) throws RemoteException;
}
