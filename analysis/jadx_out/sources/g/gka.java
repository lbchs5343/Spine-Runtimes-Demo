package g;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class gka extends bke {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ri f18296b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ehe f18297c;

    /* renamed from: d, reason: collision with root package name */
    public volatile bke f18298d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f18299e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ eem f18300f;

    public gka(ehe eheVar, boolean z, eem eemVar, ri riVar) {
        this.f18297c = eheVar;
        this.f18299e = z;
        this.f18300f = eemVar;
        this.f18296b = riVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
    
        if (r6 == r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005f, code lost:
    
        if (r6 == r1) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0083 A[SYNTHETIC] */
    @Override // g.bke
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(fwg fwgVar, Object obj) {
        Iterator it;
        if (this.f18299e) {
            fwgVar.af();
            return;
        }
        bke bkeVar = this.f18298d;
        if (bkeVar == null) {
            eem eemVar = this.f18300f;
            ehe eheVar = this.f18297c;
            ri riVar = this.f18296b;
            qd qdVar = eemVar.f15399e;
            qdVar.getClass();
            ConcurrentHashMap concurrentHashMap = qdVar.f19850c;
            if (eheVar != qd.f19848a) {
                Class cls = riVar.f19901a;
                dsb dsbVar = (dsb) concurrentHashMap.get(cls);
                if (dsbVar == null) {
                    esz eszVar = (esz) cls.getAnnotation(esz.class);
                    if (eszVar != null) {
                        Class value = eszVar.value();
                        if (dsb.class.isAssignableFrom(value)) {
                            dsb dsbVar2 = (dsb) qdVar.f19849b.j(new ri(value)).ao();
                            dsb dsbVar3 = (dsb) concurrentHashMap.putIfAbsent(cls, dsbVar2);
                            if (dsbVar3 != null) {
                                dsbVar2 = dsbVar3;
                            }
                        }
                    }
                    it = eemVar.f15400f.iterator();
                    boolean z = false;
                    while (true) {
                        if (!it.hasNext()) {
                            dsb dsbVar4 = (dsb) it.next();
                            if (z) {
                                bke j = dsbVar4.j(eemVar, riVar);
                                if (j != null) {
                                    bkeVar = j;
                                    break;
                                }
                            } else if (dsbVar4 == eheVar) {
                                z = true;
                            }
                        } else {
                            if (z) {
                                throw new IllegalArgumentException("GSON cannot serialize or deserialize " + riVar);
                            }
                            bkeVar = eemVar.n(riVar);
                        }
                    }
                    this.f18298d = bkeVar;
                }
            }
            eheVar = qdVar;
            it = eemVar.f15400f.iterator();
            boolean z2 = false;
            while (true) {
                if (!it.hasNext()) {
                }
            }
            this.f18298d = bkeVar;
        }
        bkeVar.a(fwgVar, obj);
    }
}
