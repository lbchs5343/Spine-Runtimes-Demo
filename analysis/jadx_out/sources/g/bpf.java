package g;

import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class bpf implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11951a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Set f11952b;

    public /* synthetic */ bpf(int i, Set set) {
        this.f11951a = i;
        this.f11952b = set;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f11951a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        cwx cwxVar = (cwx) obj;
        switch (this.f11951a) {
            case 0:
                cwxVar.getClass();
                if (!(cwxVar instanceof btl) || this.f11952b.contains(cwxVar)) {
                    return null;
                }
                return Boolean.TRUE;
            default:
                cwxVar.getClass();
                if (!(cwxVar instanceof btl) || this.f11952b.contains(cwxVar)) {
                    return null;
                }
                return cwxVar;
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f11951a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
