package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class fjo {

    /* renamed from: a, reason: collision with root package name */
    public static final fjo f16893a = new fjo();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f16895c = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final aws f16894b = new aws();

    public final dxm d(Class cls) {
        dxm q;
        Charset charset = cua.f13515a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f16895c;
        dxm dxmVar = (dxm) concurrentHashMap.get(cls);
        if (dxmVar != null) {
            return dxmVar;
        }
        aws awsVar = this.f16894b;
        awsVar.getClass();
        cuf cufVar = gog.f18487a;
        fsu.class.isAssignableFrom(cls);
        hcu a2 = awsVar.f10995b.a(cls);
        if ((a2.f19233a & 2) == 2) {
            cuf cufVar2 = gog.f18487a;
            gpu gpuVar = dgp.f14146a;
            q = new gtm(cufVar2, a2.f19234b);
        } else {
            int i = cay.f12572a;
            int i2 = fah.f16468a;
            cuf cufVar3 = gog.f18487a;
            gpu gpuVar2 = a2.e() + (-1) != 1 ? dgp.f14146a : null;
            int i3 = ckc.f13013a;
            q = dei.q(a2, cufVar3, gpuVar2);
        }
        dxm dxmVar2 = (dxm) concurrentHashMap.putIfAbsent(cls, q);
        return dxmVar2 != null ? dxmVar2 : q;
    }
}
