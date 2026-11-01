package g;

import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class eb {

    /* renamed from: a, reason: collision with root package name */
    public final aij f15215a;

    public eb(aij aijVar) {
        this.f15215a = aijVar;
    }

    public static final eb b(Context context) {
        hn hnVar;
        Object systemService;
        Object systemService2;
        bff.p(context, "context");
        int i = Build.VERSION.SDK_INT;
        qw qwVar = qw.f19883a;
        if ((i >= 30 ? qwVar.b() : 0) >= 5) {
            systemService2 = context.getSystemService((Class<Object>) fvr.l());
            bff.e(systemService2, "context.getSystemService…opicsManager::class.java)");
            hnVar = new hn(fvr.b(systemService2), 1);
        } else {
            if ((i >= 30 ? qwVar.b() : 0) == 4) {
                systemService = context.getSystemService((Class<Object>) fvr.l());
                bff.e(systemService, "context.getSystemService…opicsManager::class.java)");
                hnVar = new hn(fvr.b(systemService), 0);
            } else {
                hnVar = null;
            }
        }
        if (hnVar != null) {
            return new eb(hnVar);
        }
        return null;
    }

    public dcy c(eph ephVar) {
        bff.p(ephVar, "request");
        nt ntVar = uj.f20095a;
        return awt.ae(baf.ba(aky.q(hcw.f19238a), new bzy(this, ephVar, null)));
    }
}
