package g;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class by implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final List f12425a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f12426b;

    static {
        List list = Collections.EMPTY_LIST;
        Map map = Collections.EMPTY_MAP;
    }

    public by(List list, HashMap hashMap) {
        this.f12425a = list;
        this.f12426b = hashMap;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.av;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        return "ClassTypeVarsAttr{" + this.f12425a + ", super maps: " + this.f12426b + '}';
    }
}
