package g;

import android.app.Notification;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class afb {

    /* renamed from: a, reason: collision with root package name */
    public final String f10135a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10136b;

    /* renamed from: c, reason: collision with root package name */
    public final Notification f10137c;

    public afb(String str, int i, Notification notification) {
        this.f10135a = str;
        this.f10136b = i;
        this.f10137c = notification;
    }

    public final void d(rc rcVar) {
        String str = this.f10135a;
        int i = this.f10136b;
        bxz bxzVar = (bxz) rcVar;
        bxzVar.getClass();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(rc.f19892a);
            obtain.writeString(str);
            obtain.writeInt(i);
            obtain.writeString(null);
            Notification notification = this.f10137c;
            if (notification != null) {
                obtain.writeInt(1);
                notification.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            bxzVar.f12424b.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotifyTask[packageName:");
        sb.append(this.f10135a);
        sb.append(", id:");
        return awf.x(sb, this.f10136b, ", tag:null]");
    }
}
