package g;

import android.content.Context;

/* loaded from: classes.dex */
public final class zr extends avu implements bto {
    final /* synthetic */ Context $appContext;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zr(Context context, bdp bdpVar) {
        super(2, bdpVar);
        this.$appContext = context;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        eg.k(obj);
        bcd.a(this.$appContext, bmd.class, this.Z$0);
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        zr zrVar = (zr) e(bool, (bdp) obj2);
        dgi dgiVar = dgi.f14134a;
        zrVar.a(dgiVar);
        return dgiVar;
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        zr zrVar = new zr(this.$appContext, bdpVar);
        zrVar.Z$0 = ((Boolean) obj).booleanValue();
        return zrVar;
    }
}
