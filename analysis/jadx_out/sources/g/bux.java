package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class bux implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final Function f12248a;

    /* renamed from: b, reason: collision with root package name */
    public List f12249b;

    public bux(Function function) {
        this.f12248a = function;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f12249b.add(this.f12248a.apply(obj));
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    public final void c(int i) {
        this.f12249b = i == 0 ? Collections.EMPTY_LIST : new ArrayList(i);
    }
}
