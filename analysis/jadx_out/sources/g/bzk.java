package g;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class bzk implements xx {

    /* renamed from: a, reason: collision with root package name */
    public static final bzk f12507a = new bzk();

    /* renamed from: c, reason: collision with root package name */
    public static final cec f12508c;

    /* renamed from: d, reason: collision with root package name */
    public static final cec f12509d;

    static {
        gqc ad = gqc.ad();
        ad.f18566ab = 1;
        bnd bg = ad.bg();
        HashMap hashMap = new HashMap();
        hashMap.put(bkv.class, bg);
        f12508c = new cec("logSource", Collections.unmodifiableMap(new HashMap(hashMap)));
        gqc ad2 = gqc.ad();
        ad2.f18566ab = 2;
        bnd bg2 = ad2.bg();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(bkv.class, bg2);
        f12509d = new cec("logEventDropped", Collections.unmodifiableMap(new HashMap(hashMap2)));
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        azl azlVar = (azl) obj;
        dmp dmpVar = (dmp) obj2;
        dmpVar.i(f12508c, azlVar.f11117b);
        dmpVar.i(f12509d, azlVar.f11118c);
    }
}
