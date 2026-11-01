package com.bytedance.embedapplog;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface fw extends IInterface {

    public static abstract class dq extends Binder implements fw {

        /* renamed from: com.bytedance.embedapplog.fw$dq$dq, reason: collision with other inner class name */
        public static class C0026dq implements fw {
            public static fw dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f716d;

            public C0026dq(IBinder iBinder) {
                this.f716d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f716d;
            }

            @Override // com.bytedance.embedapplog.fw
            public String d() {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f716d.transact(2, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.mn().d();
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.fw
            public String dq() {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f716d.transact(1, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.mn().dq();
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.fw
            public void iw() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f716d.transact(6, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                    } else {
                        dq.mn().iw();
                    }
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.fw
            public String ox() {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f716d.transact(3, obtain, obtain2, 0) || dq.mn() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.mn().ox();
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.fw
            public boolean p() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f716d.transact(4, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().p();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.fw
            public boolean s() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f716d.transact(5, obtain, obtain2, 0) && dq.mn() != null) {
                        return dq.mn().s();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static fw dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof fw)) ? new C0026dq(iBinder) : (fw) queryLocalInterface;
        }

        public static fw mn() {
            return C0026dq.dq;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.bun.lib.MsaIdInterface");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String dq = dq();
                    parcel2.writeNoException();
                    parcel2.writeString(dq);
                    return true;
                case 2:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String d2 = d();
                    parcel2.writeNoException();
                    parcel2.writeString(d2);
                    return true;
                case 3:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String ox = ox();
                    parcel2.writeNoException();
                    parcel2.writeString(ox);
                    return true;
                case 4:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean p = p();
                    parcel2.writeNoException();
                    parcel2.writeInt(p ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean s = s();
                    parcel2.writeNoException();
                    parcel2.writeInt(s ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    iw();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String d();

    String dq();

    void iw();

    String ox();

    boolean p();

    boolean s();
}
