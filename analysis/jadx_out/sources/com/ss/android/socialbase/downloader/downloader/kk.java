package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.ce;
import com.ss.android.socialbase.downloader.depend.e;
import com.ss.android.socialbase.downloader.depend.kk;
import com.ss.android.socialbase.downloader.depend.mn;
import com.ss.android.socialbase.downloader.depend.n;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.dq;
import java.util.List;

/* loaded from: classes.dex */
public interface kk extends IInterface {

    public static abstract class dq extends Binder implements kk {

        /* renamed from: com.ss.android.socialbase.downloader.downloader.kk$dq$dq, reason: collision with other inner class name */
        public static class C0246dq implements kk {
            public static kk dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f9358d;

            public C0246dq(IBinder iBinder) {
                this.f9358d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9358d;
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public n cd(int i) throws RemoteException {
                n dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(52, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        dq2 = n.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = dq.mn().cd(i);
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public DownloadInfo d(String str, String str2) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (this.f9358d.transact(15, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.mn().d(str, str2);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<DownloadInfo> d() throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (this.f9358d.transact(19, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().d();
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<DownloadInfo> d(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (this.f9358d.transact(16, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().d(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void d(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(kkVar != null ? kkVar.asBinder() : null);
                    obtain.writeInt(i3);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(26, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().d(i, i2, kkVar, i3, z);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (this.f9358d.transact(48, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().d(i, list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void d(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(22, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().d(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void d(List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStringList(list);
                    if (this.f9358d.transact(21, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().d(list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean d(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (!this.f9358d.transact(4, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().d(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean d(DownloadInfo downloadInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f9358d.transact(39, obtain, obtain2, 0) && dq.mn() != null) {
                        boolean d2 = dq.mn().d(downloadInfo);
                        obtain2.recycle();
                        obtain.recycle();
                        return d2;
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

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public int dq(String str, String str2) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    if (this.f9358d.transact(14, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = dq.mn().dq(str, str2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<DownloadInfo> dq(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (this.f9358d.transact(12, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().dq(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (this.f9358d.transact(7, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(2, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (this.f9358d.transact(50, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, i2);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, int i2, int i3, int i4) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    if (this.f9358d.transact(44, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, i2, i3, i4);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, int i2, int i3, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeLong(j);
                    if (this.f9358d.transact(43, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, i2, i3, j);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, int i2, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeLong(j);
                    if (this.f9358d.transact(42, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, i2, j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(kkVar != null ? kkVar.asBinder() : null);
                    obtain.writeInt(i3);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(25, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, i2, kkVar, i3, z);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z, boolean z2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeStrongBinder(kkVar != null ? kkVar.asBinder() : null);
                    obtain.writeInt(i3);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(z2 ? 1 : 0);
                    if (this.f9358d.transact(27, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, i2, kkVar, i3, z, z2);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (this.f9358d.transact(56, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, j);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f9358d.transact(29, obtain, null, 1) || dq.mn() == null) {
                        obtain.recycle();
                    } else {
                        dq.mn().dq(i, notification);
                        obtain.recycle();
                    }
                } catch (Throwable th) {
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, e eVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(eVar != null ? eVar.asBinder() : null);
                    if (this.f9358d.transact(53, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, eVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeTypedList(list);
                    if (this.f9358d.transact(47, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(3, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(ce ceVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStrongBinder(ceVar != null ? ceVar.asBinder() : null);
                    if (this.f9358d.transact(49, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(ceVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (dVar != null) {
                        obtain.writeInt(1);
                        dVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f9358d.transact(38, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(dVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(com.ss.android.socialbase.downloader.model.dq dqVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStrongBinder(dqVar != null ? dqVar.asBinder() : null);
                    if (this.f9358d.transact(1, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(dqVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeStringList(list);
                    if (this.f9358d.transact(20, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().dq(list);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void dq(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(30, obtain, null, 1) || dq.mn() == null) {
                        return;
                    }
                    dq.mn().dq(z);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean dq(DownloadInfo downloadInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (downloadInfo != null) {
                        obtain.writeInt(1);
                        downloadInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f9358d.transact(28, obtain, obtain2, 0) && dq.mn() != null) {
                        boolean dq2 = dq.mn().dq(downloadInfo);
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

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean f(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (!this.f9358d.transact(45, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().f(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public e fw(int i) throws RemoteException {
                e dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(51, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        dq2 = e.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = dq.mn().fw(i);
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public com.ss.android.socialbase.downloader.depend.mn gh(int i) throws RemoteException {
                com.ss.android.socialbase.downloader.depend.mn dq2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(54, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        dq2 = mn.dq.dq(obtain2.readStrongBinder());
                    } else {
                        dq2 = dq.mn().gh(i);
                    }
                    return dq2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public DownloadInfo ia(int i) throws RemoteException {
                DownloadInfo createFromParcel;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(11, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createFromParcel = obtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        createFromParcel = dq.mn().ia(i);
                    }
                    return createFromParcel;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void ig(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(34, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().ig(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public int iw(int i) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(9, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = dq.mn().iw(i);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean iw() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f9358d.transact(55, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().iw();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void jy(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(41, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().jy(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<com.ss.android.socialbase.downloader.model.d> kk(int i) throws RemoteException {
                List<com.ss.android.socialbase.downloader.model.d> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(13, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(com.ss.android.socialbase.downloader.model.d.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().kk(i);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean mn(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (!this.f9358d.transact(10, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().mn(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public int mp(int i) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(37, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    } else {
                        readInt = dq.mn().mp(i);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean no(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (!this.f9358d.transact(33, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().no(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void o(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(24, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().o(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<DownloadInfo> ox(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (this.f9358d.transact(17, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().ox(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void ox(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(5, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().ox(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void ox(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(23, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().ox(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean ox() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f9358d.transact(31, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().ox();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<DownloadInfo> p(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (this.f9358d.transact(18, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().p(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void p(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(6, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().p(i);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void p(int i, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (this.f9358d.transact(36, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().p(i, z);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean p() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f9358d.transact(35, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().p();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public boolean q(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (!this.f9358d.transact(40, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().q(i);
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public long s(int i) throws RemoteException {
                long readLong;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeInt(i);
                    if (this.f9358d.transact(8, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readLong = obtain2.readLong();
                    } else {
                        readLong = dq.mn().s(i);
                    }
                    return readLong;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public List<DownloadInfo> s(String str) throws RemoteException {
                List<DownloadInfo> createTypedArrayList;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    obtain.writeString(str);
                    if (this.f9358d.transact(32, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        createTypedArrayList = obtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        createTypedArrayList = dq.mn().s(str);
                    }
                    return createTypedArrayList;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.ss.android.socialbase.downloader.downloader.kk
            public void s() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (this.f9358d.transact(46, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().s();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
        }

        public static kk dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof kk)) ? new C0246dq(iBinder) : (kk) queryLocalInterface;
        }

        public static kk mn() {
            return C0246dq.dq;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(dq.AbstractBinderC0252dq.dq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean d2 = d(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(d2 ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    ox(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    p(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    long s = s(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(s);
                    return true;
                case 9:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int iw = iw(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iw);
                    return true;
                case 10:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean mn = mn(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mn ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    DownloadInfo ia = ia(parcel.readInt());
                    parcel2.writeNoException();
                    if (ia != null) {
                        parcel2.writeInt(1);
                        ia.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> dq = dq(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(dq);
                    return true;
                case 13:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<com.ss.android.socialbase.downloader.model.d> kk = kk(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(kk);
                    return true;
                case 14:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int dq2 = dq(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(dq2);
                    return true;
                case 15:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    DownloadInfo d3 = d(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (d3 != null) {
                        parcel2.writeInt(1);
                        d3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 16:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> d4 = d(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(d4);
                    return true;
                case 17:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> ox = ox(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(ox);
                    return true;
                case 18:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> p = p(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(p);
                    return true;
                case 19:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> d5 = d();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(d5);
                    return true;
                case 20:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    d(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    d(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    ox(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    o(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt(), kk.dq.dq(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    d(parcel.readInt(), parcel.readInt(), kk.dq.dq(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt(), kk.dq.dq(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean dq3 = dq(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(dq3 ? 1 : 0);
                    return true;
                case 29:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 30:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt() != 0);
                    return true;
                case 31:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean ox2 = ox();
                    parcel2.writeNoException();
                    parcel2.writeInt(ox2 ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> s2 = s(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(s2);
                    return true;
                case 33:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean no = no(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(no ? 1 : 0);
                    return true;
                case 34:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    ig(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean p2 = p();
                    parcel2.writeNoException();
                    parcel2.writeInt(p2 ? 1 : 0);
                    return true;
                case 36:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    p(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int mp = mp(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mp);
                    return true;
                case 38:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt() != 0 ? com.ss.android.socialbase.downloader.model.d.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean d6 = d(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(d6 ? 1 : 0);
                    return true;
                case 40:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean q = q(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(q ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    jy(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean f2 = f(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(f2 ? 1 : 0);
                    return true;
                case 46:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    s();
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.createTypedArrayList(com.ss.android.socialbase.downloader.model.d.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    d(parcel.readInt(), parcel.createTypedArrayList(com.ss.android.socialbase.downloader.model.d.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(ce.dq.dq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    e fw = fw(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(fw != null ? fw.asBinder() : null);
                    return true;
                case 52:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    n cd = cd(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(cd != null ? cd.asBinder() : null);
                    return true;
                case 53:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), e.dq.dq(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    com.ss.android.socialbase.downloader.depend.mn gh = gh(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(gh != null ? gh.asBinder() : null);
                    return true;
                case 55:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean iw2 = iw();
                    parcel2.writeNoException();
                    parcel2.writeInt(iw2 ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    dq(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    n cd(int i) throws RemoteException;

    DownloadInfo d(String str, String str2) throws RemoteException;

    List<DownloadInfo> d() throws RemoteException;

    List<DownloadInfo> d(String str) throws RemoteException;

    void d(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z) throws RemoteException;

    void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException;

    void d(int i, boolean z) throws RemoteException;

    void d(List<String> list) throws RemoteException;

    boolean d(int i) throws RemoteException;

    boolean d(DownloadInfo downloadInfo) throws RemoteException;

    int dq(String str, String str2) throws RemoteException;

    List<DownloadInfo> dq(String str) throws RemoteException;

    void dq() throws RemoteException;

    void dq(int i) throws RemoteException;

    void dq(int i, int i2) throws RemoteException;

    void dq(int i, int i2, int i3, int i4) throws RemoteException;

    void dq(int i, int i2, int i3, long j) throws RemoteException;

    void dq(int i, int i2, long j) throws RemoteException;

    void dq(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z) throws RemoteException;

    void dq(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z, boolean z2) throws RemoteException;

    void dq(int i, long j) throws RemoteException;

    void dq(int i, Notification notification) throws RemoteException;

    void dq(int i, e eVar) throws RemoteException;

    void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException;

    void dq(int i, boolean z) throws RemoteException;

    void dq(ce ceVar) throws RemoteException;

    void dq(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException;

    void dq(com.ss.android.socialbase.downloader.model.dq dqVar) throws RemoteException;

    void dq(List<String> list) throws RemoteException;

    void dq(boolean z) throws RemoteException;

    boolean dq(DownloadInfo downloadInfo) throws RemoteException;

    boolean f(int i) throws RemoteException;

    e fw(int i) throws RemoteException;

    com.ss.android.socialbase.downloader.depend.mn gh(int i) throws RemoteException;

    DownloadInfo ia(int i) throws RemoteException;

    void ig(int i) throws RemoteException;

    int iw(int i) throws RemoteException;

    boolean iw() throws RemoteException;

    void jy(int i) throws RemoteException;

    List<com.ss.android.socialbase.downloader.model.d> kk(int i) throws RemoteException;

    boolean mn(int i) throws RemoteException;

    int mp(int i) throws RemoteException;

    boolean no(int i) throws RemoteException;

    void o(int i) throws RemoteException;

    List<DownloadInfo> ox(String str) throws RemoteException;

    void ox(int i) throws RemoteException;

    void ox(int i, boolean z) throws RemoteException;

    boolean ox() throws RemoteException;

    List<DownloadInfo> p(String str) throws RemoteException;

    void p(int i) throws RemoteException;

    void p(int i, boolean z) throws RemoteException;

    boolean p() throws RemoteException;

    boolean q(int i) throws RemoteException;

    long s(int i) throws RemoteException;

    List<DownloadInfo> s(String str) throws RemoteException;

    void s() throws RemoteException;
}
