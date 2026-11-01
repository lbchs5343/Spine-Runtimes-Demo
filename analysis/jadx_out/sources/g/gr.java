package g;

import java.util.HashSet;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class gr implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18624a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashSet f18625b;

    public /* synthetic */ gr(HashSet hashSet, int i) {
        this.f18624a = i;
        this.f18625b = hashSet;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f18624a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        cwx cwxVar = (cwx) obj;
        switch (this.f18624a) {
            case 0:
                cwxVar.getClass();
                if (cwxVar instanceof btl) {
                    this.f18625b.add(cwxVar.l());
                    break;
                }
                break;
            default:
                cwxVar.getClass();
                if (cwxVar instanceof btl) {
                    this.f18625b.add(cwxVar.l());
                    break;
                }
                break;
        }
        return null;
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f18624a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
