package g;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class eej extends axr implements and {
    final /* synthetic */ androidx.activity.b this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eej(androidx.activity.b bVar) {
        super(1);
        this.this$0 = bVar;
    }

    @Override // g.and
    public final Object invoke(Object obj) {
        Object obj2;
        bff.p((dqa) obj, "backEvent");
        androidx.activity.b bVar = this.this$0;
        fbz fbzVar = bVar.f26e;
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
        bVar.f27f = (bcn) obj2;
        return dgi.f14134a;
    }
}
