package com.bytedance.sdk.openadsdk.core;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface cd extends IInterface {

    public static abstract class dq extends Binder implements cd {

        /* renamed from: com.bytedance.sdk.openadsdk.core.cd$dq$dq, reason: collision with other inner class name */
        public static class C0137dq implements cd {
            public static cd dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f2505d;

            public C0137dq(IBinder iBinder) {
                this.f2505d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2505d;
            }

            @Override // com.bytedance.sdk.openadsdk.core.cd
            public Bundle dq(int i) throws RemoteException {
                Bundle bundle;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
                    obtain.writeInt(i);
                    if (this.f2505d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                        bundle = obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                    } else {
                        bundle = dq.dq().dq(i);
                    }
                    return bundle;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
        }

        public static cd dq() {
            return C0137dq.dq;
        }

        public static cd dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof cd)) ? new C0137dq(iBinder) : (cd) queryLocalInterface;
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
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IRewardAdCustomPlayAgainListener");
            Bundle dq = dq(parcel.readInt());
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

    Bundle dq(int i) throws RemoteException;
}
