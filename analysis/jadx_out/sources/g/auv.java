package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class auv {

    /* renamed from: a, reason: collision with root package name */
    public static final auv f10895a = new auv();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f10897c = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final dcq f10896b = new dcq(2);

    public final ciw d(Class cls) {
        ciw w;
        Class cls2;
        Charset charset = dhz.f14209a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f10897c;
        ciw ciwVar = (ciw) concurrentHashMap.get(cls);
        if (ciwVar != null) {
            return ciwVar;
        }
        dcq dcqVar = this.f10896b;
        dcqVar.getClass();
        Class cls3 = ave.f10911b;
        if (!cys.class.isAssignableFrom(cls) && (cls2 = ave.f10911b) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        eqc c2 = ((fhz) dcqVar.f13976f).c(cls);
        int i = c2.f15974a;
        cir cirVar = c2.f15975b;
        if ((i & 2) == 2) {
            if (cys.class.isAssignableFrom(cls)) {
                w = new wo(ave.f10910a, ccs.f12648a, cirVar);
            } else {
                czj czjVar = ave.f10912c;
                gnz gnzVar = ccs.f12649b;
                if (gnzVar == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                w = new wo(czjVar, gnzVar, cirVar);
            }
        } else if (cys.class.isAssignableFrom(cls)) {
            if ((c2.f15974a & 1) == 1) {
                int i2 = dss.f14738a;
                w = ecy.w(c2, dgb.f14121b, ave.f10910a, ccs.f12648a, dcs.f13981b);
            } else {
                int i3 = dss.f14738a;
                w = ecy.w(c2, dgb.f14121b, ave.f10910a, null, dcs.f13981b);
            }
        } else if ((c2.f15974a & 1) == 1) {
            int i4 = dss.f14738a;
            exj exjVar = dgb.f14120a;
            czj czjVar2 = ave.f10912c;
            gnz gnzVar2 = ccs.f12649b;
            if (gnzVar2 == null) {
                throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
            }
            w = ecy.w(c2, exjVar, czjVar2, gnzVar2, dcs.f13980a);
        } else {
            int i5 = dss.f14738a;
            w = ecy.w(c2, dgb.f14120a, ave.f10913d, null, dcs.f13980a);
        }
        ciw ciwVar2 = (ciw) concurrentHashMap.putIfAbsent(cls, w);
        return ciwVar2 == null ? w : ciwVar2;
    }
}
