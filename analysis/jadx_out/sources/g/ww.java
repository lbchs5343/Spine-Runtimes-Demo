package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class ww {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f20250a;

    static {
        int[] iArr = new int[frq.values().length];
        try {
            iArr[frq.PARKING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[frq.BLOCKING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[frq.CPU_ACQUIRED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[frq.DORMANT.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[frq.TERMINATED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        f20250a = iArr;
    }
}
