package g;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public abstract class alm {

    /* renamed from: a, reason: collision with root package name */
    public final int f10444a;

    public alm(int i) {
        this.f10444a = i;
    }

    public static /* bridge */ /* synthetic */ Status b(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void c(Exception exc);

    public abstract void d(fbd fbdVar);

    public abstract boolean e(fbd fbdVar);

    public abstract void f(clx clxVar, boolean z);

    public abstract cqg[] g(fbd fbdVar);

    public abstract void h(Status status);
}
