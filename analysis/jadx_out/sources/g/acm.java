package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class acm extends avu implements bto {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ bvw this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public acm(bvw bvwVar, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = bvwVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            ayw aywVar = (ayw) this.L$0;
            bvw bvwVar = this.this$0;
            edv edvVar = new edv(bvwVar, aywVar);
            cmh cmhVar = bvwVar.f12291d;
            cmhVar.getClass();
            synchronized (cmhVar.j) {
                try {
                    if (cmhVar.f13117f.add(edvVar)) {
                        if (cmhVar.f13117f.size() == 1) {
                            cmhVar.f13118g = cmhVar.d();
                            cyl f2 = cyl.f();
                            int i2 = hg.f19365a;
                            Objects.toString(cmhVar.f13118g);
                            f2.getClass();
                            cmhVar.e();
                        }
                        edvVar.c(cmhVar.f13118g);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            emh emhVar = new emh(this.this$0, edvVar);
            this.label = 1;
            if (acw.ao(aywVar, emhVar, this) == cxrVar) {
                return cxrVar;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
        }
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((acm) e((ayw) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        acm acmVar = new acm(this.this$0, bdpVar);
        acmVar.L$0 = obj;
        return acmVar;
    }
}
