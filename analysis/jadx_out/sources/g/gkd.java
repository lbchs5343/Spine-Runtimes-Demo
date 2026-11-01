package g;

import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class gkd implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18304a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18305b;

    public /* synthetic */ gkd(int i, int i2) {
        this.f18304a = i2;
        this.f18305b = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f18304a) {
            case 0:
                ArrayList arrayList = ((fza) obj).ac;
                int size = arrayList.size();
                arrayList.subList(size - this.f18305b, size).clear();
                break;
            default:
                ((fqt) obj).f17262c += this.f18305b;
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f18304a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
