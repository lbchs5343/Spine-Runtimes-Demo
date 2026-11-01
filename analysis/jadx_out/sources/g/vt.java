package g;

import android.view.View;
import java.util.List;

/* loaded from: classes.dex */
public final class vt extends ctp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eid f20191a;

    public vt(eid eidVar, cit citVar) {
        this.f20191a = eidVar;
        this.f13479c = false;
        this.f13480d = citVar;
    }

    @Override // g.ctp
    public final void b(int i, View view) {
        List list;
        eid eidVar = this.f20191a;
        if (eidVar.f15583g == null || i < 0 || (list = eidVar.f15581a) == null || i >= list.size()) {
            return;
        }
        eidVar.f15583g.dq(i, view, (co) eidVar.f15581a.get(i));
    }
}
