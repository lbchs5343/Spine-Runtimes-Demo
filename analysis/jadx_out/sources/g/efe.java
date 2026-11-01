package g;

import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class efe implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15429a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f15430b;

    public /* synthetic */ efe(int i, ArrayList arrayList) {
        this.f15429a = i;
        this.f15430b = arrayList;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f15429a) {
            case 0:
                this.f15430b.addAll(((fza) obj).ac);
                break;
            case 1:
                this.f15430b.add((gay) obj);
                break;
            case 2:
                this.f15430b.addAll(((cih) obj).c());
                break;
            case 3:
                this.f15430b.add((cwx) obj);
                break;
            default:
                this.f15430b.add((fza) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f15429a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
