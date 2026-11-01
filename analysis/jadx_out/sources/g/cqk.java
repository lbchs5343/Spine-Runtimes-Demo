package g;

import java.util.function.Supplier;

/* loaded from: classes.dex */
public final /* synthetic */ class cqk implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13333a;

    public /* synthetic */ cqk(int i) {
        this.f13333a = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f13333a) {
            case 0:
                return new IllegalArgumentException("Empty ConstantType enum");
            case 1:
                return new ald(0);
            default:
                return new ald(1);
        }
    }
}
