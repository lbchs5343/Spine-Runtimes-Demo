package com.ss.android.socialbase.downloader.depend;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public interface e extends IInterface {

    public static abstract class dq extends Binder implements e {

        /* renamed from: com.ss.android.socialbase.downloader.depend.e$dq$dq, reason: collision with other inner class name */
        public static class C0232dq implements e {
            public static e dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9337d;

            public C0232dq(IBinder iBinder) {
                this.f9337d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9337d;
            }

            @Override // com.ss.android.socialbase.downloader.depend.e
            public String dq() throws RemoteException {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                    if (this.f9337d.transact(3, obtain, obtain2, 0) || dq.d() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.d().dq();
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.e
            public void dq(int i, DownloadInfo downloadInfo, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                    obtain.writeInt(i);
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (this.f9337d.transact(1, obtain, obtain2, 0) || dq.d() == null) {
                        obtain2.readException();
                    } else {
                        dq.d().dq(i, downloadInfo, str, str2);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.e
            public boolean dq(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                    obtain.writeInt(z ? 1 : 0);
                    if (!this.f9337d.transact(2, obtain, obtain2, 0) && dq.d() != null) {
                        return dq.d().dq(z);
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
            attachInterface(this, "com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
        }

        public static e d() {
            return C0232dq.dq;
        }

        public static e dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof e)) ? new C0232dq(iBinder) : (e) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                dq(parcel.readInt(), parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                boolean dq = dq(parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeInt(dq ? 1 : 0);
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
                return true;
            }
            parcel.enforceInterface("com.ss.android.socialbase.downloader.depend.IDownloadNotificationEventAidlListener");
            String dq2 = dq();
            parcel2.writeNoException();
            parcel2.writeString(dq2);
            return true;
        }
    }

    String dq() throws RemoteException;

    void dq(int i, DownloadInfo downloadInfo, String str, String str2) throws RemoteException;

    boolean dq(boolean z) throws RemoteException;
}
