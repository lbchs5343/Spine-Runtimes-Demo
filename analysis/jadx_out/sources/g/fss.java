package g;

import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class fss implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17349a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17350b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17351c;

    public /* synthetic */ fss(Object obj, int i, Object obj2) {
        this.f17349a = i;
        this.f17350b = obj;
        this.f17351c = obj2;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f17349a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f17349a) {
            case 0:
                hay hayVar = (hay) this.f17350b;
                Set set = (Set) this.f17351c;
                eek eekVar = (eek) obj;
                if (eekVar.ah == hayVar && set.contains((dsj) ((adz) eekVar).f10070a)) {
                    return Boolean.TRUE;
                }
                return null;
            case 1:
                emr emrVar = (emr) this.f17350b;
                hed hedVar = (hed) this.f17351c;
                cwx cwxVar = (cwx) obj;
                emrVar.getClass();
                emr.q(hedVar, cwxVar);
                return cwxVar;
            default:
                cwx cwxVar2 = (cwx) obj;
                cwx ac = ((emr) this.f17350b).ac(cwxVar2, (Map) this.f17351c);
                return ac == null ? cwxVar2 : ac;
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f17349a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
