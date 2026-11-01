package g;

import java.util.HashSet;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class bbm implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11227a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashSet f11228b;

    public /* synthetic */ bbm(HashSet hashSet, int i) {
        this.f11227a = i;
        this.f11228b = hashSet;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        String name;
        switch (this.f11227a) {
            case 0:
                epk epkVar = (gsh) obj;
                if ((epkVar instanceof ehh) && (name = ((ehh) epkVar).getName()) != null) {
                    this.f11228b.add(name);
                    break;
                }
                break;
            case 1:
                this.f11228b.remove((String) obj);
                break;
            case 2:
                this.f11228b.remove((gks) obj);
                break;
            default:
                ((cwx) obj).bh(new gr(this.f11228b, 1));
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f11227a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}
