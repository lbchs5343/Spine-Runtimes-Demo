package g;

import com.google.android.gms.internal.ads.zzgyx;
import com.google.android.gms.internal.ads.zzgzk;
import j$.util.concurrent.ConcurrentHashMap;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class gxd {

    /* renamed from: a, reason: collision with root package name */
    public static final gxd f18927a = new gxd();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f18929c = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final gtu f18928b = new gtu();

    public final ah d(Class cls) {
        ah y;
        Charset charset = zzgzk.f8688a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f18929c;
        ah ahVar = (ah) concurrentHashMap.get(cls);
        if (ahVar != null) {
            return ahVar;
        }
        gtu gtuVar = this.f18928b;
        gtuVar.getClass();
        com.google.android.gms.internal.ads.i iVar = com.google.android.gms.internal.ads.e.f3952a;
        zzgyx.class.isAssignableFrom(cls);
        cyk e2 = gtuVar.f18742b.e(cls);
        if ((e2.f13759a & 2) == 2) {
            com.google.android.gms.internal.ads.i iVar2 = com.google.android.gms.internal.ads.e.f3952a;
            com.google.android.gms.internal.ads.i iVar3 = erw.f16067a;
            y = new com.google.android.gms.internal.ads.x(iVar2, e2.f13760b);
        } else {
            int i = epa.f15929a;
            int i2 = bdy.f11356a;
            com.google.android.gms.internal.ads.i iVar4 = com.google.android.gms.internal.ads.e.f3952a;
            com.google.android.gms.internal.ads.i iVar5 = e2.e() + (-1) != 1 ? erw.f16067a : null;
            int i3 = adx.f10067a;
            y = com.google.android.gms.internal.ads.aj.y(e2, iVar4, iVar5);
        }
        ah ahVar2 = (ah) concurrentHashMap.putIfAbsent(cls, y);
        return ahVar2 == null ? y : ahVar2;
    }
}
