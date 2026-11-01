package com.ss.android.downloadlib.dq.dq;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.no;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface p extends IInterface {

    public static abstract class dq extends Binder implements p {
        private static String dq = "";

        /* renamed from: com.ss.android.downloadlib.dq.dq.p$dq$dq, reason: collision with other inner class name */
        public static class C0219dq implements p {
            private IBinder dq;

            public C0219dq(IBinder iBinder) {
                if (TextUtils.isEmpty(dq.dq)) {
                    JSONObject kk = no.kk();
                    String unused = dq.dq = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("t"), kk.optString("s"));
                }
                this.dq = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.dq;
            }

            @Override // com.ss.android.downloadlib.dq.dq.p
            public void dq(d dVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(dq.dq);
                    if (dVar != null) {
                        obtain.writeInt(1);
                        dVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.dq.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    obtain2.recycle();
                    obtain.recycle();
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }

        public static p dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(dq);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof p)) ? new C0219dq(iBinder) : (p) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(dq);
                dq(parcel.readInt() != 0 ? d.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(dq);
            return true;
        }
    }

    void dq(d dVar) throws RemoteException;
}
