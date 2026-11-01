package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class ejx {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15691a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f15692b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int[] f15693c;

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int[] f15694d;

    static {
        int[] iArr = new int[gys.values().length];
        try {
            iArr[gys.ENQUEUED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[gys.RUNNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[gys.SUCCEEDED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[gys.FAILED.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[gys.BLOCKED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[gys.CANCELLED.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        f15692b = iArr;
        int[] iArr2 = new int[ay.values().length];
        try {
            iArr2[ay.EXPONENTIAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[ay.LINEAR.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        f15693c = iArr2;
        int[] iArr3 = new int[dnx.values().length];
        try {
            iArr3[dnx.NOT_REQUIRED.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr3[dnx.CONNECTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr3[dnx.UNMETERED.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr3[dnx.NOT_ROAMING.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr3[dnx.METERED.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        f15694d = iArr3;
        int[] iArr4 = new int[ahc.values().length];
        try {
            iArr4[ahc.RUN_AS_NON_EXPEDITED_WORK_REQUEST.ordinal()] = 1;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            iArr4[ahc.DROP_WORK_REQUEST.ordinal()] = 2;
        } catch (NoSuchFieldError unused15) {
        }
        f15691a = iArr4;
    }
}
