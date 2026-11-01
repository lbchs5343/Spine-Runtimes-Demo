package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class gtz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f18746a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f18747b;

    static {
        int[] iArr = new int[dkk.values().length];
        f18747b = iArr;
        try {
            iArr[dkk.ADDING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f18747b[dkk.REMOVING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f18747b[dkk.NONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[gdn.values().length];
        f18746a = iArr2;
        try {
            iArr2[gdn.REMOVED.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f18746a[gdn.VISIBLE.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f18746a[gdn.GONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f18746a[gdn.INVISIBLE.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
