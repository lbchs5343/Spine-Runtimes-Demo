package com.bytedance.embedapplog;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface ig extends IInterface {

    public static abstract class dq extends Binder implements ig {

        /* renamed from: com.bytedance.embedapplog.ig$dq$dq, reason: collision with other inner class name */
        public static class C0028dq implements ig {
            public static ig dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f725d;

            public C0028dq(IBinder iBinder) {
                this.f725d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f725d;
            }

            @Override // com.bytedance.embedapplog.ig
            public String d() {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    if (this.f725d.transact(7, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().d();
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.ig
            public String d(String str) {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    obtain.writeString(str);
                    if (this.f725d.transact(2, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().d(str);
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.ig
            public String dq(String str) {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    obtain.writeString(str);
                    if (this.f725d.transact(1, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().dq(str);
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.ig
            public boolean dq() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    if (!this.f725d.transact(6, obtain, obtain2, 0) && dq.ox() != null) {
                        return dq.ox().dq();
                    }
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.ig
            public String ox(String str) {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    obtain.writeString(str);
                    if (this.f725d.transact(3, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().ox(str);
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.ig
            public String p(String str) {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    obtain.writeString(str);
                    if (this.f725d.transact(4, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().p(str);
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.bytedance.embedapplog.ig
            public String s(String str) {
                String readString;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    obtain.writeString(str);
                    if (this.f725d.transact(5, obtain, obtain2, 0) || dq.ox() == null) {
                        obtain2.readException();
                        readString = obtain2.readString();
                    } else {
                        readString = dq.ox().s(str);
                    }
                    return readString;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static ig dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ig)) ? new C0028dq(iBinder) : (ig) queryLocalInterface;
        }

        public static ig ox() {
            return C0028dq.dq;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.coolpad.deviceidsupport.IDeviceIdManager");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String dq = dq(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(dq);
                    return true;
                case 2:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String d2 = d(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(d2);
                    return true;
                case 3:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String ox = ox(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(ox);
                    return true;
                case 4:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String p = p(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(p);
                    return true;
                case 5:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String s = s(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(s);
                    return true;
                case 6:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    boolean dq2 = dq();
                    parcel2.writeNoException();
                    parcel2.writeInt(dq2 ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String d3 = d();
                    parcel2.writeNoException();
                    parcel2.writeString(d3);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String d();

    String d(String str);

    String dq(String str);

    boolean dq();

    String ox(String str);

    String p(String str);

    String s(String str);
}
