package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class gnc {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f18434a;

    static {
        int[] iArr = new int[geu.values().length];
        try {
            iArr[geu.ON_CONFIGURE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[geu.ON_CREATE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[geu.ON_UPGRADE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[geu.ON_DOWNGRADE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[geu.ON_OPEN.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        f18434a = iArr;
    }
}
