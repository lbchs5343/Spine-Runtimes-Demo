package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class aao extends avu implements bto {
    final /* synthetic */ fkj $workSpec;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aao(fkj fkjVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$workSpec = fkjVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        eg.k(obj);
        String str = goy.f18524a;
        fkj fkjVar = this.$workSpec;
        cyl f2 = cyl.f();
        Objects.toString(fkjVar);
        f2.getClass();
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        aao aaoVar = (aao) e((bfx) obj, (bdp) obj2);
        dgi dgiVar = dgi.f14134a;
        aaoVar.a(dgiVar);
        return dgiVar;
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new aao(this.$workSpec, bdpVar);
    }
}
