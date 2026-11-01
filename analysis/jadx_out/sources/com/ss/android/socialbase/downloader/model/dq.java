package com.ss.android.socialbase.downloader.model;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.e;
import com.ss.android.socialbase.downloader.depend.f;
import com.ss.android.socialbase.downloader.depend.i;
import com.ss.android.socialbase.downloader.depend.ia;
import com.ss.android.socialbase.downloader.depend.ig;
import com.ss.android.socialbase.downloader.depend.iw;
import com.ss.android.socialbase.downloader.depend.kk;
import com.ss.android.socialbase.downloader.depend.mn;
import com.ss.android.socialbase.downloader.depend.n;
import com.ss.android.socialbase.downloader.depend.o;
import com.ss.android.socialbase.downloader.depend.s;
import com.ss.android.socialbase.downloader.depend.u;

/* loaded from: classes.dex */
public interface dq extends IInterface {

    /* renamed from: com.ss.android.socialbase.downloader.model.dq$dq, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0252dq extends Binder implements dq {

        /* renamed from: com.ss.android.socialbase.downloader.model.dq$dq$dq, reason: collision with other inner class name */
        public static class C0253dq implements dq {
            public static dq dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9445d;

            public C0253dq(IBinder iBinder) {
                this.f9445d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9445d;
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public kk d(int i) throws RemoteException {
                kk dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i);
                    if (this.f9445d.transact(5, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = kk.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().d(i);
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.s d() throws RemoteException {
                com.ss.android.socialbase.downloader.depend.s dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(2, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = s.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().d();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public int dq(int i) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i);
                    if (this.f9445d.transact(3, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = AbstractBinderC0252dq.mp().dq(i);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public kk dq(int i, int i2) throws RemoteException {
                kk dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f9445d.transact(4, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = kk.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().dq(i, i2);
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public DownloadInfo dq() throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(1, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = AbstractBinderC0252dq.mp().dq();
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public u ia() throws RemoteException {
                u dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(11, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = u.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().ia();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public int ig() throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(15, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = AbstractBinderC0252dq.mp().ig();
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public iw iw() throws RemoteException {
                iw dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(9, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = iw.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().iw();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public f kk() throws RemoteException {
                f dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(12, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = f.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().kk();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public i mn() throws RemoteException {
                i dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(10, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = i.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().mn();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public mn no() throws RemoteException {
                mn dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(14, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = mn.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().no();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public o o() throws RemoteException {
                o dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(13, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = o.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().o();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public e ox() throws RemoteException {
                e dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(6, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = e.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().ox();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public ig ox(int i) throws RemoteException {
                ig dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    obtain.writeInt(i);
                    if (this.f9445d.transact(16, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = ig.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().ox(i);
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public n p() throws RemoteException {
                n dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(7, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = n.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().p();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public ia s() throws RemoteException {
                ia dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f9445d.transact(8, obtain, obtain2, 0) || AbstractBinderC0252dq.mp() == null) {
                        obtain2.readException();
                        dq2 = ia.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = AbstractBinderC0252dq.mp().s();
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0252dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.model.DownloadAidlTask");
        }

        public static dq dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof dq)) ? new C0253dq(iBinder) : (dq) queryLocalInterface;
        }

        public static dq mp() {
            return C0253dq.dq;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    DownloadInfo dq = dq();
                    parcel2.writeNoException();
                    if (dq != null) {
                        parcel2.writeInt(1);
                        dq.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    com.ss.android.socialbase.downloader.depend.s d2 = d();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(d2 != null ? d2.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    int dq2 = dq(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(dq2);
                    return true;
                case 4:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    kk dq3 = dq(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(dq3 != null ? dq3.asBinder() : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    kk d3 = d(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(d3 != null ? d3.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    e ox = ox();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ox != null ? ox.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    n p = p();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(p != null ? p.asBinder() : null);
                    return true;
                case 8:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    ia s = s();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(s != null ? s.asBinder() : null);
                    return true;
                case 9:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    iw iw = iw();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iw != null ? iw.asBinder() : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    i mn = mn();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(mn != null ? mn.asBinder() : null);
                    return true;
                case 11:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    u ia = ia();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ia != null ? ia.asBinder() : null);
                    return true;
                case 12:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    f kk = kk();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(kk != null ? kk.asBinder() : null);
                    return true;
                case 13:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    o o = o();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(o != null ? o.asBinder() : null);
                    return true;
                case 14:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    mn no = no();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(no != null ? no.asBinder() : null);
                    return true;
                case 15:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    int ig = ig();
                    parcel2.writeNoException();
                    parcel2.writeInt(ig);
                    return true;
                case 16:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    ig ox2 = ox(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ox2 != null ? ox2.asBinder() : null);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    kk d(int i) throws RemoteException;

    com.ss.android.socialbase.downloader.depend.s d() throws RemoteException;

    int dq(int i) throws RemoteException;

    kk dq(int i, int i2) throws RemoteException;

    DownloadInfo dq() throws RemoteException;

    u ia() throws RemoteException;

    int ig() throws RemoteException;

    iw iw() throws RemoteException;

    f kk() throws RemoteException;

    i mn() throws RemoteException;

    mn no() throws RemoteException;

    o o() throws RemoteException;

    e ox() throws RemoteException;

    ig ox(int i) throws RemoteException;

    n p() throws RemoteException;

    ia s() throws RemoteException;
}
