package g;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class goq extends axr implements and {
    final /* synthetic */ androidx.activity.b this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public goq(androidx.activity.b bVar) {
        super(1);
        this.this$0 = bVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        Object obj2;
        bff.p((dqa) obj, "backEvent");
        fbz fbzVar = this.this$0.f26e;
        ListIterator listIterator = fbzVar.listIterator(fbzVar.j());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj2 = null;
                break;
            }
            obj2 = listIterator.previous();
            if (((bcn) obj2).f11285c) {
                break;
            }
        }
        return dgi.f14134a;
    }
}
