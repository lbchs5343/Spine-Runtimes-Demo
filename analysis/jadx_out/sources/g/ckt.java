package g;

import java.io.IOException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class ckt extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final eya f13039a;
    public final Method ae;
    public final int af;

    public ckt(Method method, int i, eya eyaVar) {
        this.ae = method;
        this.af = i;
        this.f13039a = eyaVar;
    }

    @Override // g.kj
    public final void b(gea geaVar, Object obj) {
        int i = this.af;
        Method method = this.ae;
        if (obj == null) {
            throw aky.am(method, i, "Body parameter value must not be null.", new Object[0]);
        }
        try {
            geaVar.f17970d = (sz) this.f13039a.ak(obj);
        } catch (IOException e2) {
            throw aky.k(method, e2, i, "Unable to convert " + obj + " to RequestBody", new Object[0]);
        }
    }
}
