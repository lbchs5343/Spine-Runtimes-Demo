package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class cns {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f13196a;

    static {
        int[] iArr = new int[dho.values().length];
        f13196a = iArr;
        try {
            iArr[dho.EQUAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f13196a[dho.WIDER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f13196a[dho.NARROW.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f13196a[dho.WIDER_BY_GENERIC.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f13196a[dho.NARROW_BY_GENERIC.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f13196a[dho.CONFLICT.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f13196a[dho.CONFLICT_BY_GENERIC.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f13196a[dho.UNKNOWN.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
