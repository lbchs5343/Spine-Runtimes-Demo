package g;

/* loaded from: classes.dex */
public final class bsb extends cav {
    public static float a(flj fljVar, float f2) {
        Object obj = fljVar.p;
        if (obj == null || fljVar.r == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (fljVar.o == -3987645.8f) {
            fljVar.o = ((Float) obj).floatValue();
        }
        float f3 = fljVar.o;
        if (fljVar.q == -3987645.8f) {
            fljVar.q = ((Float) fljVar.r).floatValue();
        }
        return din.d(f3, fljVar.q, f2);
    }

    @Override // g.cej
    public final Object b(flj fljVar, float f2) {
        return Float.valueOf(a(fljVar, f2));
    }

    public final float c() {
        return a(n(), k());
    }
}
