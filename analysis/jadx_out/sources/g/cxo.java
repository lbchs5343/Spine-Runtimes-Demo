package g;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class cxo implements xx {

    /* renamed from: a, reason: collision with root package name */
    public static final cxo f13698a = new cxo();

    /* renamed from: c, reason: collision with root package name */
    public static final cec f13699c;

    /* renamed from: d, reason: collision with root package name */
    public static final cec f13700d;

    static {
        gqc ad = gqc.ad();
        ad.f18566ab = 1;
        bnd bg = ad.bg();
        HashMap hashMap = new HashMap();
        hashMap.put(bkv.class, bg);
        f13699c = new cec("eventsDroppedCount", Collections.unmodifiableMap(new HashMap(hashMap)));
        gqc ad2 = gqc.ad();
        ad2.f18566ab = 3;
        bnd bg2 = ad2.bg();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(bkv.class, bg2);
        f13700d = new cec(MediationConstant.KEY_REASON, Collections.unmodifiableMap(new HashMap(hashMap2)));
    }

    @Override // g.box
    public final void b(Object obj, Object obj2) {
        gvb gvbVar = (gvb) obj;
        dmp dmpVar = (dmp) obj2;
        dmpVar.l(f13699c, gvbVar.f18796a);
        dmpVar.i(f13700d, gvbVar.f18797b);
    }
}
