package g;

/* loaded from: classes.dex */
public final class geg {

    /* renamed from: a, reason: collision with root package name */
    public static final geg f17981a = new geg();

    /* renamed from: b, reason: collision with root package name */
    public final azo[] f17982b = new azo[zz.f20423e.size()];

    public final azo c(zz zzVar) {
        return this.f17982b[zzVar.s];
    }

    public final int d() {
        int i = 0;
        for (azo azoVar : this.f17982b) {
            if (azoVar != null) {
                i++;
            }
        }
        return i;
    }

    public final String toString() {
        return "AttributesStorage{size=" + d() + '}';
    }
}
