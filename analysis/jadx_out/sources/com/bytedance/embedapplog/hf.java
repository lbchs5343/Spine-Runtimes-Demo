package com.bytedance.embedapplog;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface hf extends IInterface {

    public static abstract class dq extends Binder implements hf {

        /* renamed from: com.bytedance.embedapplog.hf$dq$dq, reason: collision with other inner class name */
        public static class C0027dq implements hf {
            public static hf dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f720d;

            public C0027dq(IBinder iBinder) {
                this.f720d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f720d;
            }

            @Override // com.bytedance.embedapplog.hf
            public void dq(int i, long j, boolean z, float f2, double d2, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeFloat(f2);
                    obtain.writeDouble(d2);
                    obtain.writeString(str);
                    if (this.f720d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                    } else {
                        dq.dq().dq(i, j, z, f2, d2, str);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.bytedance.embedapplog.hf
            public void dq(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (this.f720d.transact(2, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                    } else {
                        dq.dq().dq(i, bundle);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }

        public dq() {
            attachInterface(this, "com.hihonor.cloudservice.oaid.IOAIDCallBack");
        }

        public static hf dq() {
            return C0027dq.dq;
        }

        public static hf dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof hf)) ? new C0027dq(iBinder) : (hf) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                dq(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDCallBack");
                return true;
            }
            parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDCallBack");
            dq(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void dq(int i, long j, boolean z, float f2, double d2, String str);

    void dq(int i, Bundle bundle);
}
