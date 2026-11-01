package com.bytedance.sdk.openadsdk.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface q extends IInterface {

    public static abstract class dq extends Binder implements q {

        /* renamed from: com.bytedance.sdk.openadsdk.core.q$dq$dq, reason: collision with other inner class name */
        public static class C0183dq implements q {
            public static q dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f3413d;

            public C0183dq(IBinder iBinder) {
                this.f3413d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3413d;
            }

            @Override // com.bytedance.sdk.openadsdk.core.q
            public void d() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                    if (this.f3413d.transact(2, obtain, obtain2, 0) || dq.p() == null) {
                        obtain2.readException();
                    } else {
                        dq.p().d();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.q
            public void dq() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                    if (this.f3413d.transact(1, obtain, obtain2, 0) || dq.p() == null) {
                        obtain2.readException();
                    } else {
                        dq.p().dq();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.q
            public void ox() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                    if (this.f3413d.transact(3, obtain, obtain2, 0) || dq.p() == null) {
                        obtain2.readException();
                    } else {
                        dq.p().ox();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
        }

        public static q dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof q)) ? new C0183dq(iBinder) : (q) queryLocalInterface;
        }

        public static q p() {
            return C0183dq.dq;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                dq();
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                d();
                parcel2.writeNoException();
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.ICommonDialogListener");
            ox();
            parcel2.writeNoException();
            return true;
        }
    }

    void d() throws RemoteException;

    void dq() throws RemoteException;

    void ox() throws RemoteException;
}
