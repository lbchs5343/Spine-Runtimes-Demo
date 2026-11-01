package g;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class cfo extends Binder implements ch {

    /* renamed from: b, reason: collision with root package name */
    public final Handler f12792b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ gwy f12793c;

    public cfo(gwy gwyVar) {
        this.f12793c = gwyVar;
        attachInterface(this, ch.f12866a);
        this.f12792b = new Handler(Looper.getMainLooper());
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String str = ch.f12866a;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        Handler handler = this.f12792b;
        gwy gwyVar = this.f12793c;
        switch (i) {
            case 2:
                int readInt = parcel.readInt();
                Bundle bundle = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new hdo(this, readInt, bundle, 5));
                    return true;
                }
                return true;
            case 3:
                String readString = parcel.readString();
                Bundle bundle2 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new fht(this, readString, bundle2, 0));
                    return true;
                }
                return true;
            case 4:
                Bundle bundle3 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new bck(this, bundle3, 1));
                }
                parcel2.writeNoException();
                return true;
            case 5:
                String readString2 = parcel.readString();
                Bundle bundle4 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new fht(this, readString2, bundle4, 1));
                }
                parcel2.writeNoException();
                return true;
            case 6:
                int readInt2 = parcel.readInt();
                Uri uri = (Uri) bff.r(parcel, Uri.CREATOR);
                boolean z = parcel.readInt() != 0;
                Bundle bundle5 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new fil(this, readInt2, uri, z, bundle5));
                    return true;
                }
                return true;
            case 7:
                Bundle extraCallbackWithResult = gwyVar == null ? null : gwyVar.extraCallbackWithResult(parcel.readString(), (Bundle) bff.r(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                if (extraCallbackWithResult == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                extraCallbackWithResult.writeToParcel(parcel2, 1);
                return true;
            case 8:
                int readInt3 = parcel.readInt();
                int readInt4 = parcel.readInt();
                Bundle bundle6 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new djn(this, readInt3, readInt4, bundle6));
                    return true;
                }
                return true;
            case 9:
                Bundle bundle7 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new bck(this, bundle7, 2));
                    return true;
                }
                return true;
            case 10:
                int readInt5 = parcel.readInt();
                int readInt6 = parcel.readInt();
                int readInt7 = parcel.readInt();
                int readInt8 = parcel.readInt();
                int readInt9 = parcel.readInt();
                Bundle bundle8 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new dxd(this, readInt5, readInt6, readInt7, readInt8, readInt9, bundle8));
                    return true;
                }
                return true;
            case 11:
                Bundle bundle9 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new bck(this, bundle9, 3));
                    return true;
                }
                return true;
            case 12:
                Bundle bundle10 = (Bundle) bff.r(parcel, Bundle.CREATOR);
                if (gwyVar != null) {
                    handler.post(new bck(this, bundle10, 0));
                    return true;
                }
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
