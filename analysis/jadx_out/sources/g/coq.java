package g;

import j$.util.Collection;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class coq implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13236a;

    public /* synthetic */ coq(int i) {
        this.f13236a = i;
    }

    public final /* synthetic */ Function andThen(Function function) {
        int i = this.f13236a;
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f13236a) {
            case 0:
                return ((cci) obj).ak;
            case 1:
                return String.valueOf((cwx) obj);
            case 2:
                cff cffVar = cwx.an;
                return new btl((String) obj, Collections.EMPTY_LIST);
            case 3:
                return ((gsh) obj).d();
            case 4:
                return ((gsh) obj).b();
            case 5:
                return ((adk) obj).f10048b;
            case 6:
                return obj == eln.f15770g ? "default" : obj.toString();
            case 7:
                return new ArrayList(2);
            case 8:
                return new ArrayList(1);
            case 9:
                return "#" + ((guv) obj).h;
            case 10:
                return Collection.b.stream(((bfm) obj).f11453b);
            default:
                return Objects.toString(obj);
        }
    }

    public final /* synthetic */ Function compose(Function function) {
        int i = this.f13236a;
        return j$.util.function.k.$default$compose(this, function);
    }
}
