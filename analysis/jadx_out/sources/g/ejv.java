package g;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public abstract class ejv extends Binder implements anf {
    public static final /* synthetic */ int o = 0;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("b.e.f");
        }
        if (i == 1598968902) {
            parcel2.writeString("b.e.f");
            return true;
        }
        if (i == 1) {
            Bundle l = ((b.c.e) this).l(parcel.readString());
            parcel2.writeNoException();
            erl.ah(parcel2, l);
            return true;
        }
        if (i == 2) {
            ParcelFileDescriptor h = ((b.c.e) this).h(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
            parcel2.writeNoException();
            erl.ah(parcel2, h);
            return true;
        }
        if (i == 3) {
            Bundle k = ((b.c.e) this).k();
            parcel2.writeNoException();
            erl.ah(parcel2, k);
            return true;
        }
        if (i == 4) {
            Bundle m = ((b.c.e) this).m();
            parcel2.writeNoException();
            erl.ah(parcel2, m);
            return true;
        }
        if (i != 16777115) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        int callingUid = Binder.getCallingUid();
        if (callingUid != ((b.c.e) this).f364e && callingUid != 0 && callingUid != 2000) {
            throw new SecurityException("Unexpected caller");
        }
        System.exit(0);
        parcel2.writeNoException();
        return true;
    }
}
