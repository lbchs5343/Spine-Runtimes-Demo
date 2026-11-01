package g;

import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class btn implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12194a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f12195b;

    public /* synthetic */ btn(int i, List list) {
        this.f12194a = i;
        this.f12195b = list;
    }

    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f12194a;
        return j$.util.function.m.$default$and(this, predicate);
    }

    public final /* synthetic */ Predicate negate() {
        switch (this.f12194a) {
        }
        return j$.util.function.m.$default$negate(this);
    }

    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f12194a;
        return j$.util.function.m.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean z;
        switch (this.f12194a) {
            case 0:
                fza fzaVar = (fza) obj;
                Iterator it = this.f12195b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                    } else if (ffb.ac((fza) it.next(), fzaVar)) {
                        z = true;
                    }
                }
                return !z;
            default:
                return this.f12195b.contains((fza) obj);
        }
    }
}
