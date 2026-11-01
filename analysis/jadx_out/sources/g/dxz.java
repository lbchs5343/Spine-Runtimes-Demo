package g;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class dxz implements xx {

    /* renamed from: a, reason: collision with root package name */
    public static final cec f15053a;

    /* renamed from: c, reason: collision with root package name */
    public static final cec f15054c;

    /* renamed from: d, reason: collision with root package name */
    public static final dxz f15055d = new dxz();

    /* renamed from: e, reason: collision with root package name */
    public static final cec f15056e;

    /* renamed from: f, reason: collision with root package name */
    public static final cec f15057f;

    static {
        gqc ad = gqc.ad();
        ad.f18566ab = 1;
        bnd bg = ad.bg();
        HashMap hashMap = new HashMap();
        hashMap.put(bkv.class, bg);
        f15056e = new cec("window", Collections.unmodifiableMap(new HashMap(hashMap)));
        gqc ad2 = gqc.ad();
        ad2.f18566ab = 2;
        bnd bg2 = ad2.bg();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(bkv.class, bg2);
        f15057f = new cec("logSourceMetrics", Collections.unmodifiableMap(new HashMap(hashMap2)));
        gqc ad3 = gqc.ad();
        ad3.f18566ab = 3;
        bnd bg3 = ad3.bg();
        HashMap hashMap3 = new HashMap();
        hashMap3.put(bkv.class, bg3);
        f15053a = new cec("globalMetrics", Collections.unmodifiableMap(new HashMap(hashMap3)));
        gqc ad4 = gqc.ad();
        ad4.f18566ab = 4;
        bnd bg4 = ad4.bg();
        HashMap hashMap4 = new HashMap();
        hashMap4.put(bkv.class, bg4);
        f15054c = new cec("appNamespace", Collections.unmodifiableMap(new HashMap(hashMap4)));
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        dwq dwqVar = (dwq) obj;
        dmp dmpVar = (dmp) obj2;
        dmpVar.i(f15056e, dwqVar.f14966c);
        dmpVar.i(f15057f, dwqVar.f14967d);
        dmpVar.i(f15053a, dwqVar.f14968e);
        dmpVar.i(f15054c, dwqVar.f14965b);
    }
}
