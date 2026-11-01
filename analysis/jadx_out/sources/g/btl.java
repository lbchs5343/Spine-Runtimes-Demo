package g;

import java.util.List;

/* loaded from: classes.dex */
public final class btl extends aog {

    /* renamed from: a, reason: collision with root package name */
    public List f12193a;

    public btl(String str, List list) {
        super(str);
        this.f12193a = list;
    }

    @Override // g.aog, g.cwx
    public final boolean b(Object obj) {
        return super.b(obj) && this.f12193a.equals(((btl) obj).f12193a);
    }

    @Override // g.cwx
    public final void p(List list) {
        this.f12193a = list;
    }

    @Override // g.cwx
    public final List q() {
        return this.f12193a;
    }

    @Override // g.aog, g.cwx
    public final String toString() {
        List list = this.f12193a;
        boolean isEmpty = list.isEmpty();
        String str = this.f10565d;
        if (isEmpty) {
            return str;
        }
        return str + " extends " + evh.h(" & ", list);
    }
}
