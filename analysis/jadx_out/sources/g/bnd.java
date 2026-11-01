package g;

/* loaded from: classes3.dex */
public final class bnd implements bkv {

    /* renamed from: a, reason: collision with root package name */
    public final int f11863a;

    /* renamed from: b, reason: collision with root package name */
    public final bld f11864b;

    public bnd(int i, bld bldVar) {
        this.f11863a = i;
        this.f11864b = bldVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return bkv.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bkv)) {
            return false;
        }
        bnd bndVar = (bnd) ((bkv) obj);
        return this.f11863a == bndVar.f11863a && this.f11864b.equals(bndVar.f11864b);
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (14552422 ^ this.f11863a) + (this.f11864b.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f11863a + "intEncoding=" + this.f11864b + ')';
    }
}
