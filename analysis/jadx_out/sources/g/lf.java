package g;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class lf extends kj {

    /* renamed from: a, reason: collision with root package name */
    public final int f19586a;
    public final /* synthetic */ int ae;
    public final Method af;

    public /* synthetic */ lf(Method method, int i, int i2) {
        this.ae = i2;
        this.af = method;
        this.f19586a = i;
    }

    @Override // g.kj
    public final void b(gea geaVar, Object obj) {
        switch (this.ae) {
            case 0:
                dvq dvqVar = (dvq) obj;
                if (dvqVar == null) {
                    throw aky.am(this.af, this.f19586a, "Headers parameter must not be null.", new Object[0]);
                }
                ais aisVar = geaVar.h;
                aisVar.getClass();
                int size = dvqVar.size();
                for (int i = 0; i < size; i++) {
                    aisVar.h(dvqVar.e(i), dvqVar.b(i));
                }
                return;
            default:
                if (obj == null) {
                    throw aky.am(this.af, this.f19586a, "@Url parameter is null.", new Object[0]);
                }
                geaVar.l = obj.toString();
                return;
        }
    }
}
