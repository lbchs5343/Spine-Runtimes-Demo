package g;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class axf {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f11018a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f11019b;

    static {
        int[] iArr = new int[deh.values().length];
        f11019b = iArr;
        try {
            iArr[deh.OK.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f11019b[deh.BAD_CONFIG.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f11019b[deh.AUTH_ERROR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[of.values().length];
        f11018a = iArr2;
        try {
            iArr2[of.OK.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f11018a[of.BAD_CONFIG.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
