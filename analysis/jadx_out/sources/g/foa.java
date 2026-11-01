package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class foa {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f17122a;

    static {
        int[] iArr = new int[gdn.values().length];
        f17122a = iArr;
        try {
            iArr[gdn.GONE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f17122a[gdn.INVISIBLE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f17122a[gdn.REMOVED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f17122a[gdn.VISIBLE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
