package g;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class gms extends cqb implements bto {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gms(View view, bdp bdpVar) {
        super(bdpVar);
        this.$this_allViews = view;
    }

    @Override // g.bry
    public final Object a(Object obj) {
        Object obj2;
        Object obj3 = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            wu wuVar = (wu) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = wuVar;
            this.label = 1;
            wuVar.f20248d = view;
            wuVar.f20247c = 3;
            wuVar.f20246b = this;
            return obj3;
        }
        Object obj4 = dgi.f14134a;
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eg.k(obj);
            return obj4;
        }
        wu wuVar2 = (wu) this.L$0;
        eg.k(obj);
        View view2 = this.$this_allViews;
        if (view2 instanceof ViewGroup) {
            this.L$0 = null;
            this.label = 2;
            wuVar2.getClass();
            ky kyVar = new ky(new bve(3, (ViewGroup) view2));
            if (((Iterator) kyVar.f19576c).hasNext()) {
                wuVar2.f20245a = kyVar;
                wuVar2.f20247c = 2;
                wuVar2.f20246b = this;
                obj2 = obj3;
            } else {
                obj2 = obj4;
            }
            if (obj2 != obj3) {
                obj2 = obj4;
            }
            if (obj2 == obj3) {
                return obj3;
            }
        }
        return obj4;
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((gms) e((wu) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        gms gmsVar = new gms(this.$this_allViews, bdpVar);
        gmsVar.L$0 = obj;
        return gmsVar;
    }
}
