package g;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.MultiInstanceInvalidationService;

/* loaded from: classes.dex */
public final class cmi extends Binder implements arc {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f13119b;

    public cmi(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f13119b = multiInstanceInvalidationService;
        attachInterface(this, arc.f10696a);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    public final int c(fuh fuhVar, String str) {
        bff.p(fuhVar, "callback");
        int i = 0;
        if (str == null) {
            return 0;
        }
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f13119b;
        synchronized (multiInstanceInvalidationService.f323a) {
            try {
                int i2 = multiInstanceInvalidationService.f325c + 1;
                multiInstanceInvalidationService.f325c = i2;
                if (multiInstanceInvalidationService.f323a.register(fuhVar, Integer.valueOf(i2))) {
                    multiInstanceInvalidationService.f326d.put(Integer.valueOf(i2), str);
                    i = i2;
                } else {
                    multiInstanceInvalidationService.f325c--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final void d(String[] strArr, int i) {
        bff.p(strArr, "tables");
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f13119b;
        synchronized (multiInstanceInvalidationService.f323a) {
            try {
                String str = (String) multiInstanceInvalidationService.f326d.get(Integer.valueOf(i));
                if (str == null) {
                    return;
                }
                int beginBroadcast = multiInstanceInvalidationService.f323a.beginBroadcast();
                for (int i2 = 0; i2 < beginBroadcast; i2++) {
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService.f323a.getBroadcastCookie(i2);
                        bff.ag(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                        Integer num = (Integer) broadcastCookie;
                        int intValue = num.intValue();
                        String str2 = (String) multiInstanceInvalidationService.f326d.get(num);
                        if (i != intValue && str.equals(str2)) {
                            try {
                                ((fuh) multiInstanceInvalidationService.f323a.getBroadcastItem(i2)).b(strArr);
                            } catch (RemoteException unused) {
                            }
                        }
                    } finally {
                        multiInstanceInvalidationService.f323a.finishBroadcast();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String str = arc.f10696a;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        fuh fuhVar = null;
        fuh fuhVar2 = null;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(fuh.f17431c);
                if (queryLocalInterface == null || !(queryLocalInterface instanceof fuh)) {
                    edo edoVar = new edo();
                    edoVar.f15366a = readStrongBinder;
                    fuhVar = edoVar;
                } else {
                    fuhVar = (fuh) queryLocalInterface;
                }
            }
            int c2 = c(fuhVar, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(c2);
            return true;
        }
        if (i != 2) {
            if (i != 3) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            d(parcel.createStringArray(), parcel.readInt());
            return true;
        }
        IBinder readStrongBinder2 = parcel.readStrongBinder();
        if (readStrongBinder2 != null) {
            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(fuh.f17431c);
            if (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof fuh)) {
                edo edoVar2 = new edo();
                edoVar2.f15366a = readStrongBinder2;
                fuhVar2 = edoVar2;
            } else {
                fuhVar2 = (fuh) queryLocalInterface2;
            }
        }
        int readInt = parcel.readInt();
        bff.p(fuhVar2, "callback");
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f13119b;
        synchronized (multiInstanceInvalidationService.f323a) {
            multiInstanceInvalidationService.f323a.unregister(fuhVar2);
        }
        parcel2.writeNoException();
        return true;
    }
}
