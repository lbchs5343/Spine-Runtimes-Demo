package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class lq extends fkb {

    /* renamed from: a, reason: collision with root package name */
    public final fza f19610a;

    /* renamed from: b, reason: collision with root package name */
    public final cxc f19611b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19612c;

    public lq(cgy cgyVar, cxc cxcVar, ArrayList arrayList, fza fzaVar) {
        super(cgyVar);
        this.f19612c = arrayList;
        this.f19610a = fzaVar;
        this.f19611b = cxcVar;
    }

    @Override // g.fkb
    public final cro d() {
        return new fgi(this.j, 1);
    }

    @Override // g.fkb
    public final gvg e() {
        return null;
    }

    @Override // g.fkb
    public final fkb f(cgy cgyVar) {
        return new lq(cgyVar, this.f19611b, this.f19612c, this.f19610a);
    }

    @Override // g.fkb
    public final cxc g() {
        return this.f19611b;
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
