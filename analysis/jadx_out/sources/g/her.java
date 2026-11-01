package g;

/* loaded from: classes.dex */
public class her extends blj {

    /* renamed from: a, reason: collision with root package name */
    public static final bli f19354a = new bli(6);

    /* renamed from: b, reason: collision with root package name */
    public final gob f19355b = new gob();

    /* renamed from: c, reason: collision with root package name */
    public boolean f19356c = false;

    @Override // g.blj
    public final void j() {
        gob gobVar = this.f19355b;
        int j = gobVar.j();
        for (int i = 0; i < j; i++) {
            ((fm) gobVar.i(i)).y(true);
        }
        int i2 = gobVar.f18483b;
        Object[] objArr = gobVar.f18482a;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        gobVar.f18483b = 0;
        gobVar.f18484c = false;
    }
}
