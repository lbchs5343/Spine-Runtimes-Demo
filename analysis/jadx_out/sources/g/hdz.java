package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class hdz extends avu implements bto {
    final /* synthetic */ bto $block;
    final /* synthetic */ eje $completer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hdz(bto btoVar, eje ejeVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$block = btoVar;
        this.$completer = ejeVar;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                eg.k(obj);
                hcc hccVar = (hcc) this.L$0;
                bto btoVar = this.$block;
                this.label = 1;
                obj = btoVar.d(hccVar, this);
                if (obj == cxrVar) {
                    return cxrVar;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eg.k(obj);
            }
            this.$completer.e(obj);
        } catch (CancellationException unused) {
            eje ejeVar = this.$completer;
            ejeVar.f15639a = true;
            gbb gbbVar = ejeVar.f15641c;
            if (gbbVar != null && gbbVar.f17842b.cancel(true)) {
                ejeVar.f15640b = null;
                ejeVar.f15641c = null;
                ejeVar.f15642d = null;
            }
        } catch (Throwable th) {
            this.$completer.f(th);
        }
        return dgi.f14134a;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((hdz) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        hdz hdzVar = new hdz(this.$block, this.$completer, bdpVar);
        hdzVar.L$0 = obj;
        return hdzVar;
    }
}
