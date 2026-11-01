package g;

/* loaded from: classes.dex */
public final class uu {
    public static dtn a(fqv fqvVar) {
        bff.p(fqvVar, "state");
        int i = evy.f16259a[fqvVar.ordinal()];
        if (i == 1) {
            return dtn.ON_DESTROY;
        }
        if (i == 2) {
            return dtn.ON_STOP;
        }
        if (i != 3) {
            return null;
        }
        return dtn.ON_PAUSE;
    }

    public static dtn b(fqv fqvVar) {
        bff.p(fqvVar, "state");
        int i = evy.f16259a[fqvVar.ordinal()];
        if (i == 1) {
            return dtn.ON_START;
        }
        if (i == 2) {
            return dtn.ON_RESUME;
        }
        if (i != 5) {
            return null;
        }
        return dtn.ON_CREATE;
    }
}
