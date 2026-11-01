package g;

import android.content.Context;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class cmh {

    /* renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f13117f;

    /* renamed from: g, reason: collision with root package name */
    public Object f13118g;
    public final gkr h;
    public final Context i;
    public final Object j;

    public cmh(Context context, gkr gkrVar) {
        this.h = gkrVar;
        Context applicationContext = context.getApplicationContext();
        bff.e(applicationContext, "context.applicationContext");
        this.i = applicationContext;
        this.j = new Object();
        this.f13117f = new LinkedHashSet();
    }

    public abstract void c();

    public abstract Object d();

    public abstract void e();

    public final void k(Object obj) {
        synchronized (this.j) {
            Object obj2 = this.f13118g;
            if (obj2 == null || !obj2.equals(obj)) {
                this.f13118g = obj;
                ((bxc) this.h.f18323c).execute(new dsf(gsv.bf(this.f13117f), 5, this));
            }
        }
    }
}
