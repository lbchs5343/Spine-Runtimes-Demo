package g;

import android.net.Uri;

/* loaded from: classes.dex */
public final class xz extends avu implements bto {
    final /* synthetic */ Uri $trigger;
    int label;
    final /* synthetic */ cev this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xz(cev cevVar, Uri uri, bdp bdpVar) {
        super(2, bdpVar);
        this.this$0 = cevVar;
        this.$trigger = uri;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            fuk fukVar = this.this$0.f12761a;
            Uri uri = this.$trigger;
            this.label = 1;
            if (fukVar.b(uri, this) == cxrVar) {
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
        return ((xz) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new xz(this.this$0, this.$trigger, bdpVar);
    }
}
