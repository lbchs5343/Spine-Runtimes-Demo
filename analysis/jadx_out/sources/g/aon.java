package g;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class aon implements xx {

    /* renamed from: a, reason: collision with root package name */
    public static final aon f10577a = new aon();

    /* renamed from: c, reason: collision with root package name */
    public static final cec f10578c;

    static {
        gqc ad = gqc.ad();
        ad.f18566ab = 1;
        bnd bg = ad.bg();
        HashMap hashMap = new HashMap();
        hashMap.put(bkv.class, bg);
        f10578c = new cec("storageMetrics", Collections.unmodifiableMap(new HashMap(hashMap)));
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        ((dmp) obj2).i(f10578c, ((fnn) obj).f17087a);
    }
}
