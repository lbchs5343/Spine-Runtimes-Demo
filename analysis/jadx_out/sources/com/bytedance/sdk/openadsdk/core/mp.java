package com.bytedance.sdk.openadsdk.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface mp extends IInterface {

    public static abstract class dq extends Binder implements mp {

        /* renamed from: com.bytedance.sdk.openadsdk.core.mp$dq$dq, reason: collision with other inner class name */
        public static class C0172dq implements mp {
            public static mp dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f3173d;

            public C0172dq(IBinder iBinder) {
                this.f3173d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3173d;
            }

            @Override // com.bytedance.sdk.openadsdk.core.mp
            public IBinder dq(int i) throws RemoteException {
                IBinder readStrongBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.core.IBinderPool");
                    obtain.writeInt(i);
                    if (this.f3173d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                        readStrongBinder = obtain2.readStrongBinder();
                    } else {
                        readStrongBinder = dq.dq().dq(i);
                    }
                    return readStrongBinder;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public dq() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.core.IBinderPool");
        }

        public static mp dq() {
            return C0172dq.dq;
        }

        public static mp dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.core.IBinderPool");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof mp)) ? new C0172dq(iBinder) : (mp) queryLocalInterface;
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
                parcel2.writeString("com.bytedance.sdk.openadsdk.core.IBinderPool");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.core.IBinderPool");
            IBinder dq = dq(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(dq);
            return true;
        }
    }

    IBinder dq(int i) throws RemoteException;
}
