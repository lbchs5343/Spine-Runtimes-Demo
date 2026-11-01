package g;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class cds implements xx {

    /* renamed from: a, reason: collision with root package name */
    public static final cds f12710a = new cds();

    /* renamed from: c, reason: collision with root package name */
    public static final cec f12711c;

    /* renamed from: d, reason: collision with root package name */
    public static final cec f12712d;

    static {
        gqc ad = gqc.ad();
        ad.f18566ab = 1;
        bnd bg = ad.bg();
        HashMap hashMap = new HashMap();
        hashMap.put(bkv.class, bg);
        f12711c = new cec("startMs", Collections.unmodifiableMap(new HashMap(hashMap)));
        gqc ad2 = gqc.ad();
        ad2.f18566ab = 2;
        bnd bg2 = ad2.bg();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(bkv.class, bg2);
        f12712d = new cec("endMs", Collections.unmodifiableMap(new HashMap(hashMap2)));
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        byy byyVar = (byy) obj;
        dmp dmpVar = (dmp) obj2;
        dmpVar.l(f12711c, byyVar.f12474a);
        dmpVar.l(f12712d, byyVar.f12475b);
    }
}
