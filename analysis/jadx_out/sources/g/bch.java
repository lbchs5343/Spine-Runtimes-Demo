package g;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class bch extends Binder implements IInterface {
    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            bundle.getInt("shizuku:attach-reply-uid", -1);
            IBinder iBinder = gwn.f18889f;
            gwn.l = bundle.getInt("shizuku:attach-reply-version", -1);
            bundle.getInt("shizuku:attach-reply-patch-version", -1);
            IBinder iBinder2 = gwn.f18889f;
            bundle.getString("shizuku:attach-reply-secontext");
            gwn.f18886c = bundle.getBoolean("shizuku:attach-reply-permission-granted", false);
            gwn.f18888e = bundle.getBoolean("shizuku:attach-reply-should-show-request-permission-rationale", false);
            gwn.n();
            return true;
        }
        if (i != 3) {
            if (i != 10001) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("moe.shizuku.server.IShizukuApplication");
                return true;
            }
            parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
            parcel.readInt();
            parcel.readInt();
            parcel.readString();
            parcel.readInt();
            parcel2.writeNoException();
            return true;
        }
        parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
        final int readInt = parcel.readInt();
        final int i3 = (parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null).getBoolean("shizuku:request-permission-reply-allowed", false) ? 0 : -1;
        synchronized (gwn.k) {
            try {
                Iterator it = gwn.f18887d.iterator();
                while (it.hasNext()) {
                    final iv ivVar = (iv) it.next();
                    ivVar.getClass();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((cxq) ivVar.f19443a).b(readInt, i3);
                    } else {
                        gwn.h.post(new Runnable() { // from class: g.drb
                            @Override // java.lang.Runnable
                            public final void run() {
                                ((cxq) iv.this.f19443a).b(readInt, i3);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }
}
