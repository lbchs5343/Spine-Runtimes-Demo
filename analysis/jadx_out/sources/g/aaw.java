package g;

import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public final class aaw extends aog {

    /* renamed from: a, reason: collision with root package name */
    public final List f9882a;

    public aaw(String str, List list) {
        super(str);
        Objects.requireNonNull(list);
        List list2 = list;
        this.f9882a = list2;
        this.az = (list2.hashCode() * 31) + str.hashCode();
    }

    @Override // g.aog, g.cwx
    public final boolean b(Object obj) {
        if (super.b(obj)) {
            return Objects.equals(this.f9882a, ((aaw) obj).f9882a);
        }
        return false;
    }

    @Override // g.cwx
    public final List c() {
        return this.f9882a;
    }

    @Override // g.aog, g.cwx
    public final String toString() {
        return this.f10565d + '<' + evh.h(", ", this.f9882a) + '>';
    }
}
