package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class ob implements IInterface {
    public final /* synthetic */ int _ca;
    public final IBinder _cb;

    /* renamed from: c, reason: collision with root package name */
    public final String f19749c;

    public /* synthetic */ ob(IBinder iBinder, String str, int i) {
        this._ca = i;
        this._cb = iBinder;
        this.f19749c = str;
    }

    public Parcel _cc() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f19749c);
        return obtain;
    }

    public Parcel _cd() {
        switch (this._ca) {
            case 1:
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken(this.f19749c);
                return obtain;
            default:
                Parcel obtain2 = Parcel.obtain();
                obtain2.writeInterfaceToken(this.f19749c);
                return obtain2;
        }
    }

    public Parcel _ce(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this._cb.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e2) {
                obtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }

    public Parcel _cf(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this._cb.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e2) {
                obtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        switch (this._ca) {
        }
        return this._cb;
    }

    public Parcel h(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this._cb.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e2) {
                obtain.recycle();
                throw e2;
            }
        } finally {
            parcel.recycle();
        }
    }

    public void i(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            this._cb.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
