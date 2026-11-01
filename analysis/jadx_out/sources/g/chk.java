package g;

import android.content.Context;

/* loaded from: classes3.dex */
public final class chk {

    /* renamed from: a, reason: collision with root package name */
    public static final chk f12874a;

    /* renamed from: b, reason: collision with root package name */
    public ccb f12875b;

    static {
        chk chkVar = new chk();
        chkVar.f12875b = null;
        f12874a = chkVar;
    }

    public static ccb c(Context context) {
        ccb ccbVar;
        chk chkVar = f12874a;
        synchronized (chkVar) {
            try {
                if (chkVar.f12875b == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    chkVar.f12875b = new ccb(context);
                }
                ccbVar = chkVar.f12875b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ccbVar;
    }
}
