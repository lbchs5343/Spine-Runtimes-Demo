package com.bytedance.sdk.openadsdk.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface jy extends IInterface {

    public static abstract class dq extends Binder implements jy {

        /* renamed from: com.bytedance.sdk.openadsdk.core.jy$dq$dq, reason: collision with other inner class name */
        public static class C0165dq implements jy {
            public static jy dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f3118d;

            public C0165dq(IBinder iBinder) {
                this.f3118d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3118d;
            }

            @Override // com.bytedance.sdk.openadsdk.core.jy
            public void dq() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                    if (this.f3118d.transact(1, obtain, obtain2, 0) || dq.d() == null) {
                        obtain2.readException();
                    } else {
                        dq.d().dq();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.jy
            public void dq(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                    obtain.writeString(str);
                    if (this.f3118d.transact(2, obtain, obtain2, 0) || dq.d() == null) {
                        obtain2.readException();
                    } else {
                        dq.d().dq(str);
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
        }

        public static jy d() {
            return C0165dq.dq;
        }

        public static jy dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof jy)) ? new C0165dq(iBinder) : (jy) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                dq();
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonPermissionListener");
            dq(parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void dq() throws RemoteException;

    void dq(String str) throws RemoteException;
}
