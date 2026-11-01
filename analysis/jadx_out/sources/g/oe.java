package g;

import java.util.Collection;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class oe implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f19751a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19752b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19753c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f19754d;

    public /* synthetic */ oe(Object obj, Object obj2, Object obj3, int i) {
        this.f19752b = i;
        this.f19753c = obj;
        this.f19754d = obj2;
        this.f19751a = obj3;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f19752b;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f19752b) {
            case 0:
                cqv cqvVar = (cqv) this.f19753c;
                String str = (String) this.f19754d;
                byte[] bArr = (byte[]) this.f19751a;
                cqvVar.getClass();
                return cqvVar.g(str, ((Integer) obj).intValue(), bArr);
            case 1:
                emr emrVar = (emr) this.f19753c;
                cwx cwxVar = (cwx) this.f19754d;
                return emrVar.z(cwxVar, cwxVar, (cwx) ((List) this.f19751a).get(((Integer) obj).intValue()));
            default:
                Collection<cwx> collection = (Collection) this.f19753c;
                ebh ebhVar = (ebh) this.f19754d;
                cwx cwxVar2 = (cwx) this.f19751a;
                cwx cwxVar3 = (cwx) obj;
                cwxVar3.getClass();
                if (!(cwxVar3 instanceof btl)) {
                    return null;
                }
                String l = cwxVar3.l();
                for (cwx cwxVar4 : collection) {
                    if (cwxVar4.l().equals(l)) {
                        cwxVar3.p(cwxVar4.q());
                        return null;
                    }
                }
                ebhVar.bu("Unknown type variable: " + l + " in type: " + cwxVar2);
                return null;
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f19752b;
        return j$.util.function.k.$default$compose(this, function);
    }
}
