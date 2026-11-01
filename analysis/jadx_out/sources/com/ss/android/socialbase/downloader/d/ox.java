package com.ss.android.socialbase.downloader.d;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.d.d;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.List;

/* loaded from: classes.dex */
public interface ox extends IInterface {

    public static abstract class dq extends Binder implements ox {

        /* renamed from: com.ss.android.socialbase.downloader.d.ox$dq$dq, reason: collision with other inner class name */
        public static class C0230dq implements ox {
            public static ox dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9324d;

            public C0230dq(IBinder iBinder) {
                this.f9324d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9324d;
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo d(int i) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(3, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().d(i);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo d(int i, long j) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(24, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().d(i, j);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public List<DownloadInfo> d() throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (this.f9324d.transact(8, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.iw().d();
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public List<DownloadInfo> d(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeString(str);
                    if (this.f9324d.transact(5, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.iw().d(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (this.f9324d.transact(35, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().d(i, list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void d(DownloadInfo downloadInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f9324d.transact(33, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().d(downloadInfo);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void d(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (dVar != null) {
                        obtain.writeInt(1);
                        dVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f9324d.transact(12, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().d(dVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo dq(int i, int i2) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f9324d.transact(16, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().dq(i, i2);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo dq(int i, long j) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(23, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().dq(i, j);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo dq(int i, long j, String str, String str2) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (this.f9324d.transact(22, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().dq(i, j, str, str2);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public List<DownloadInfo> dq(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeString(str);
                    if (this.f9324d.transact(4, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.iw().dq(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (this.f9324d.transact(1, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq(int i, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    if (this.f9324d.transact(15, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq(i, i2, i3, i4);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq(int i, int i2, int i3, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(14, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq(i, i2, i3, j);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq(int i, int i2, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(13, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq(i, i2, j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (this.f9324d.transact(34, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq(i, list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq(d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeStrongBinder(dVar != null ? dVar.asBinder() : null);
                    if (this.f9324d.transact(36, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq(dVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void dq(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (dVar != null) {
                        obtain.writeInt(1);
                        dVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f9324d.transact(11, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().dq(dVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public boolean dq(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (!this.f9324d.transact(2, obtain, obtain2, 0) && dq.iw() != null) {
                        return dq.iw().dq(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public boolean dq(DownloadInfo downloadInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f9324d.transact(17, obtain, obtain2, 0) && dq.iw() != null) {
                        boolean dq2 = dq.iw().dq(downloadInfo);
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

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo ia(int i) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(25, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().ia(i);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public boolean iw(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (!this.f9324d.transact(19, obtain, obtain2, 0) && dq.iw() != null) {
                        return dq.iw().iw(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo kk(int i) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(29, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().kk(i);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo mn(int i) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(21, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().mn(i);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo o(int i) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(30, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().o(i);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo ox(int i, long j) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(26, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().ox(i, j);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public List<com.ss.android.socialbase.downloader.model.d> ox(int i) throws RemoteException {
                List<com.ss.android.socialbase.downloader.model.d> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(9, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(com.ss.android.socialbase.downloader.model.d.CREATOR);
                    } else {
                        createTypedArrayList = dq.iw().ox(i);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public List<DownloadInfo> ox(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeString(str);
                    if (this.f9324d.transact(6, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.iw().ox(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void ox() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (this.f9324d.transact(20, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().ox();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo p(int i, long j) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(27, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().p(i, j);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public List<DownloadInfo> p(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeString(str);
                    if (this.f9324d.transact(7, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.iw().p(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public void p(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (this.f9324d.transact(10, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                    } else {
                        dq.iw().p(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public boolean p() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (!this.f9324d.transact(31, obtain, obtain2, 0) && dq.iw() != null) {
                        return dq.iw().p();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public DownloadInfo s(int i, long j) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f9324d.transact(28, obtain, obtain2, 0) || dq.iw() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.iw().s(i, j);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public boolean s() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (!this.f9324d.transact(32, obtain, obtain2, 0) && dq.iw() != null) {
                        return dq.iw().s();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.d.ox
            public boolean s(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    obtain.writeInt(i);
                    if (!this.f9324d.transact(18, obtain, obtain2, 0) && dq.iw() != null) {
                        return dq.iw().s(i);
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
            attachInterface(this, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
        }

        public static ox dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ox)) ? new C0230dq(iBinder) : (ox) queryLocalInterface;
        }

        public static ox iw() {
            return C0230dq.dq;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean dq = dq(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(dq ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo d2 = d(parcel.readInt());
                    parcel2.writeNoException();
                    if (d2 != null) {
                        parcel2.writeInt(1);
                        d2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> dq2 = dq(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(dq2);
                    return true;
                case 5:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> d3 = d(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(d3);
                    return true;
                case 6:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> ox = ox(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(ox);
                    return true;
                case 7:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> p = p(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(p);
                    return true;
                case 8:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> d4 = d();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(d4);
                    return true;
                case 9:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<com.ss.android.socialbase.downloader.model.d> ox2 = ox(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(ox2);
                    return true;
                case 10:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    p(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq(parcel.readInt() != 0 ? com.ss.android.socialbase.downloader.model.d.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    d(parcel.readInt() != 0 ? com.ss.android.socialbase.downloader.model.d.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq(parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo dq3 = dq(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (dq3 != null) {
                        parcel2.writeInt(1);
                        dq3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean dq4 = dq(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(dq4 ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean s = s(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(s ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean iw = iw(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iw ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    ox();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo mn = mn(parcel.readInt());
                    parcel2.writeNoException();
                    if (mn != null) {
                        parcel2.writeInt(1);
                        mn.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 22:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo dq5 = dq(parcel.readInt(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (dq5 != null) {
                        parcel2.writeInt(1);
                        dq5.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 23:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo dq6 = dq(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (dq6 != null) {
                        parcel2.writeInt(1);
                        dq6.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 24:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo d5 = d(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (d5 != null) {
                        parcel2.writeInt(1);
                        d5.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 25:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo ia = ia(parcel.readInt());
                    parcel2.writeNoException();
                    if (ia != null) {
                        parcel2.writeInt(1);
                        ia.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 26:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo ox3 = ox(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (ox3 != null) {
                        parcel2.writeInt(1);
                        ox3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 27:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo p2 = p(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (p2 != null) {
                        parcel2.writeInt(1);
                        p2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 28:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo s2 = s(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (s2 != null) {
                        parcel2.writeInt(1);
                        s2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 29:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo kk = kk(parcel.readInt());
                    parcel2.writeNoException();
                    if (kk != null) {
                        parcel2.writeInt(1);
                        kk.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 30:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo o = o(parcel.readInt());
                    parcel2.writeNoException();
                    if (o != null) {
                        parcel2.writeInt(1);
                        o.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 31:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean p3 = p();
                    parcel2.writeNoException();
                    parcel2.writeInt(p3 ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean s3 = s();
                    parcel2.writeNoException();
                    parcel2.writeInt(s3 ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    d(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq(parcel.readInt(), parcel.createTypedArrayList(com.ss.android.socialbase.downloader.model.d.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    d(parcel.readInt(), parcel.createTypedArrayList(com.ss.android.socialbase.downloader.model.d.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    dq(d.dq.dq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    DownloadInfo d(int i) throws RemoteException;

    DownloadInfo d(int i, long j) throws RemoteException;

    List<DownloadInfo> d() throws RemoteException;

    List<DownloadInfo> d(String str) throws RemoteException;

    void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException;

    void d(DownloadInfo downloadInfo) throws RemoteException;

    void d(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException;

    DownloadInfo dq(int i, int i2) throws RemoteException;

    DownloadInfo dq(int i, long j) throws RemoteException;

    DownloadInfo dq(int i, long j, String str, String str2) throws RemoteException;

    List<DownloadInfo> dq(String str) throws RemoteException;

    void dq() throws RemoteException;

    void dq(int i, int i2, int i3, int i4) throws RemoteException;

    void dq(int i, int i2, int i3, long j) throws RemoteException;

    void dq(int i, int i2, long j) throws RemoteException;

    void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException;

    void dq(d dVar) throws RemoteException;

    void dq(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException;

    boolean dq(int i) throws RemoteException;

    boolean dq(DownloadInfo downloadInfo) throws RemoteException;

    DownloadInfo ia(int i) throws RemoteException;

    boolean iw(int i) throws RemoteException;

    DownloadInfo kk(int i) throws RemoteException;

    DownloadInfo mn(int i) throws RemoteException;

    DownloadInfo o(int i) throws RemoteException;

    DownloadInfo ox(int i, long j) throws RemoteException;

    List<com.ss.android.socialbase.downloader.model.d> ox(int i) throws RemoteException;

    List<DownloadInfo> ox(String str) throws RemoteException;

    void ox() throws RemoteException;

    DownloadInfo p(int i, long j) throws RemoteException;

    List<DownloadInfo> p(String str) throws RemoteException;

    void p(int i) throws RemoteException;

    boolean p() throws RemoteException;

    DownloadInfo s(int i, long j) throws RemoteException;

    boolean s() throws RemoteException;

    boolean s(int i) throws RemoteException;
}
