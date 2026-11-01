package g;

/* loaded from: classes.dex */
public final class adt extends djo {

    /* renamed from: a, reason: collision with root package name */
    public final bqt f10059a;

    public adt(int i, bqt bqtVar) {
        super(i);
        this.f10059a = bqtVar;
        if (bqtVar != bqt.SUSPEND) {
            if (i < 1) {
                throw new IllegalArgumentException(awf.b(i, "Buffered channel capacity must be at least 1, but ", " was specified").toString());
            }
        } else {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + bii.b(djo.class).f() + " instead").toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b8, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, boolean z) {
        bqt bqtVar = this.f10059a;
        bqt bqtVar2 = bqt.DROP_LATEST;
        dgi dgiVar = dgi.f14134a;
        if (bqtVar == bqtVar2) {
            Object e2 = super.e(obj);
            return (!(e2 instanceof dmq) || (e2 instanceof buf)) ? e2 : dgiVar;
        }
        gtx gtxVar = drx.f14687e;
        ggb ggbVar = (ggb) djo.s.get(this);
        while (true) {
            long andIncrement = djo.r.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean ao = ao(andIncrement, false);
            int i = drx.n;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            if (ggbVar.f17418b != j3) {
                ggb z2 = djo.z(this, j3, ggbVar);
                if (z2 != null) {
                    ggbVar = z2;
                } else if (ao) {
                    return new buf(am());
                }
            }
            int w = djo.w(this, ggbVar, i2, obj, j, gtxVar, ao);
            if (w == 0) {
                ggbVar.l();
                return dgiVar;
            }
            if (w == 1) {
                break;
            }
            if (w != 2) {
                if (w == 3) {
                    throw new IllegalStateException("unexpected");
                }
                if (w == 4) {
                    if (j < djo.n.get(this)) {
                        ggbVar.l();
                    }
                    return new buf(am());
                }
                if (w == 5) {
                    ggbVar.l();
                }
            } else {
                if (ao) {
                    ggbVar.c();
                    return new buf(am());
                }
                cjq cjqVar = gtxVar instanceof cjq ? (cjq) gtxVar : null;
                if (cjqVar != null) {
                    cjqVar.d(ggbVar, i2 + i);
                }
                al((ggbVar.f17418b * j2) + i2);
            }
        }
    }

    @Override // g.djo
    public final boolean c() {
        return this.f10059a == bqt.DROP_OLDEST;
    }

    @Override // g.djo, g.cvu
    public final Object d(Object obj, w wVar) {
        if (b(obj, true) instanceof buf) {
            throw am();
        }
        return dgi.f14134a;
    }

    @Override // g.djo, g.cvu
    public final Object e(Object obj) {
        return b(obj, false);
    }
}
