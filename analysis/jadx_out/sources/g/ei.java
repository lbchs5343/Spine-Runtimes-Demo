package g;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ei implements ebp {

    /* renamed from: a, reason: collision with root package name */
    public final ayu f15572a;

    public ei(ayu ayuVar) {
        this.f15572a = ayuVar;
    }

    @Override // g.ebp
    public final int _cv() {
        return 1;
    }

    @Override // g.eue
    public final String c() {
        return awf.aa(this) + " (s)";
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
        return this.f15572a.f11075c;
    }

    @Override // g.ebp
    public final cwx g() {
        return this.f15572a.f11079g;
    }

    @Override // g.ebp
    public final List getTypeParameters() {
        return Collections.EMPTY_LIST;
    }

    @Override // g.ebp
    public final boolean h() {
        return false;
    }

    @Override // g.ebp
    public final List i() {
        return Collections.EMPTY_LIST;
    }

    @Override // g.ebp
    public final ayu j() {
        return this.f15572a;
    }

    public final String toString() {
        return "SimpleMethodDetails{" + this.f15572a + '}';
    }
}
