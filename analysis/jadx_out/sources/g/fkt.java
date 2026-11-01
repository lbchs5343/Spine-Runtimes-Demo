package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class fkt {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f16946a;

    static {
        int[] iArr = new int[dho.values().length];
        f16946a = iArr;
        try {
            iArr[dho.NARROW.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f16946a[dho.NARROW_BY_GENERIC.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f16946a[dho.WIDER.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f16946a[dho.WIDER_BY_GENERIC.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f16946a[dho.CONFLICT.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f16946a[dho.CONFLICT_BY_GENERIC.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f16946a[dho.EQUAL.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f16946a[dho.UNKNOWN.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
