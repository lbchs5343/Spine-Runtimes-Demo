package g;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class giy extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18224a = 0;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f18225b;

    public /* synthetic */ giy() {
    }

    public giy(Looper looper, ank ankVar) {
        super(looper);
        this.f18225b = new WeakReference(ankVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (this.f18224a) {
            case 0:
                int i = message.what;
                if (i != -3 && i != -2 && i != -1) {
                    if (i == 1) {
                        ((DialogInterface) message.obj).dismiss();
                        break;
                    }
                } else {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f18225b.get(), message.what);
                    break;
                }
                break;
            default:
                ank ankVar = (ank) this.f18225b.get();
                if (ankVar != null && message != null) {
                    ankVar.dq(message);
                    break;
                }
                break;
        }
    }
}
