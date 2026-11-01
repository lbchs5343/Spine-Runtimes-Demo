package com.bytedance.embedapplog;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.bytedance.embedapplog.hf;

/* loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class dq extends Binder implements b {

        /* renamed from: com.bytedance.embedapplog.b$dq$dq, reason: collision with other inner class name */
        public static class C0024dq implements b {
            public static b dq;

            /* renamed from: d, reason: collision with root package name */
            private IBinder f707d;

            public C0024dq(IBinder iBinder) {
                this.f707d = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f707d;
            }

            @Override // com.bytedance.embedapplog.b
            public void d(hf hfVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    obtain.writeStrongBinder(hfVar != null ? hfVar.asBinder() : null);
                    if (this.f707d.transact(3, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                    } else {
                        dq.dq().d(hfVar);
                    }
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // com.bytedance.embedapplog.b
            public void dq(int i, long j, boolean z, float f2, double d2, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeFloat(f2);
                    obtain.writeDouble(d2);
                    obtain.writeString(str);
                    if (this.f707d.transact(1, obtain, obtain2, 0) || dq.dq() == null) {
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

            @Override // com.bytedance.embedapplog.b
            public void dq(hf hfVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    obtain.writeStrongBinder(hfVar != null ? hfVar.asBinder() : null);
                    if (this.f707d.transact(2, obtain, obtain2, 0) || dq.dq() == null) {
                        obtain2.readException();
                    } else {
                        dq.dq().dq(hfVar);
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

        public static b dq() {
            return C0024dq.dq;
        }

        public static b dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0024dq(iBinder) : (b) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                dq(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                dq(hf.dq.dq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDService");
                return true;
            }
            parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            d(hf.dq.dq(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }

    void d(hf hfVar);

    void dq(int i, long j, boolean z, float f2, double d2, String str);

    void dq(hf hfVar);
}
