package g;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class dgf implements ebp {

    /* renamed from: a, reason: collision with root package name */
    public final int f14126a;
    public List k;
    public final List l;
    public final List m;
    public final ayu n;
    public cwx o;
    public final boolean p;

    public dgf(ebp ebpVar) {
        this.n = ebpVar.j();
        this.o = ebpVar.g();
        this.k = Collections.unmodifiableList(ebpVar.f());
        this.l = Collections.unmodifiableList(ebpVar.getTypeParameters());
        this.m = Collections.unmodifiableList(ebpVar.i());
        this.p = ebpVar.h();
        this.f14126a = ebpVar._cv();
    }

    @Override // g.ebp
    public final int _cv() {
        return this.f14126a;
    }

    @Override // g.eue
    public final String c() {
        return awf.aa(this) + " (mut)";
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.j;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // g.ebp
    public final List f() {
        return this.k;
    }

    @Override // g.ebp
    public final cwx g() {
        return this.o;
    }

    @Override // g.ebp
    public final List getTypeParameters() {
        return this.l;
    }

    @Override // g.ebp
    public final boolean h() {
        return this.p;
    }

    @Override // g.ebp
    public final List i() {
        return this.m;
    }

    @Override // g.ebp
    public final ayu j() {
        return this.n;
    }

    public final String toString() {
        return "Mutable" + c();
    }
}
