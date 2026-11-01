package g;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class fab extends axr implements cvw {
    final /* synthetic */ androidx.activity.b this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fab(androidx.activity.b bVar) {
        super(0);
        this.this$0 = bVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        Object obj;
        androidx.activity.b bVar = this.this$0;
        fbz fbzVar = bVar.f26e;
        ListIterator listIterator = fbzVar.listIterator(fbzVar.j());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            }
            obj = listIterator.previous();
            if (((bcn) obj).f11285c) {
                break;
            }
        }
        bVar.f27f = null;
        return dgi.f14134a;
    }
}
