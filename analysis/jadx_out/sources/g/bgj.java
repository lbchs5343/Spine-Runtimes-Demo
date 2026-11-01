package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class bgj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f11514a;

    static {
        int[] iArr = new int[dtn.values().length];
        try {
            iArr[dtn.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[dtn.ON_START.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[dtn.ON_RESUME.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[dtn.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[dtn.ON_STOP.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[dtn.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[dtn.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        f11514a = iArr;
    }
}
