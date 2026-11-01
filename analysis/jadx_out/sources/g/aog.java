package g;

/* loaded from: classes.dex */
public class aog extends bcx {

    /* renamed from: d, reason: collision with root package name */
    public final String f10565d;

    public aog(String str) {
        this.f10565d = str;
        this.az = str.hashCode();
    }

    @Override // g.cwx
    public boolean b(Object obj) {
        return this.f10565d.equals(((aog) obj).f10565d);
    }

    @Override // g.cwx
    public final bjt f() {
        return bjt.OBJECT;
    }

    @Override // g.cwx
    public final String l() {
        return this.f10565d;
    }

    @Override // g.cwx
    public final boolean m() {
        return true;
    }

    @Override // g.cwx
    public String toString() {
        return this.f10565d;
    }
}
