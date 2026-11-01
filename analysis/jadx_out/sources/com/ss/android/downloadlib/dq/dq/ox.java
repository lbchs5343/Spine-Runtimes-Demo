package com.ss.android.downloadlib.dq.dq;

import android.annotation.SuppressLint;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.dq.dq.p;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface ox extends IInterface {

    public static abstract class dq extends Binder implements ox {
        private static String dq = "";

        /* renamed from: com.ss.android.downloadlib.dq.dq.ox$dq$dq, reason: collision with other inner class name */
        public static class C0218dq implements ox {
            private IBinder dq;

            public C0218dq(IBinder iBinder) {
                if (TextUtils.isEmpty(dq.dq)) {
                    JSONObject kk = no.kk();
                    String unused = dq.dq = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("r"), kk.optString("s"));
                }
                this.dq = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.dq;
            }

            @Override // com.ss.android.downloadlib.dq.dq.ox
            public void dq(d dVar, p pVar) throws RemoteException {
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
                    obtain.writeStrongBinder(pVar != null ? pVar.asBinder() : null);
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

        public static ox dq(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(dq);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ox)) ? new C0218dq(iBinder) : (ox) queryLocalInterface;
        }

        @Override // android.os.Binder
        @SuppressLint({"WrongConstant"})
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(dq);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(dq);
            dq(parcel.readInt() != 0 ? d.CREATOR.createFromParcel(parcel) : null, p.dq.dq(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }

    void dq(d dVar, p pVar) throws RemoteException;
}
