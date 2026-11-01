package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class dcc extends fkb {

    /* renamed from: a, reason: collision with root package name */
    public final cxc f13948a;

    /* renamed from: b, reason: collision with root package name */
    public final List f13949b;

    public dcc(cgy cgyVar, cxc cxcVar, List list) {
        super(cgyVar);
        this.f13948a = cxcVar;
        this.f13949b = list;
    }

    @Override // g.fkb
    public final cro d() {
        return new fgi(this.j, 2);
    }

    @Override // g.fkb
    public final gvg e() {
        return null;
    }

    @Override // g.fkb
    public final fkb f(cgy cgyVar) {
        return new dcc(cgyVar, this.f13948a.g(), new ArrayList(this.f13949b));
    }

    @Override // g.fkb
    public final cxc g() {
        return this.f13948a;
    }

    @Override // g.fkb
    public final hco h() {
        return hco.READY_TO_COMPARE;
    }

    @Override // g.fkb
    public final boolean i() {
        return false;
    }
}
