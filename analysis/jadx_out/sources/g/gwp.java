package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class gwp {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f18892a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f18893b;

    static {
        int[] iArr = new int[hay.values().length];
        f18893b = iArr;
        try {
            iArr[hay.CMP_L.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f18893b[hay.CMP_G.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f18893b[hay.ARITH.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[ath.values().length];
        f18892a = iArr2;
        try {
            iArr2[ath.COMPARE.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f18892a[ath.TERNARY.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f18892a[ath.NOT.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f18892a[ath.AND.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f18892a[ath.OR.ordinal()] = 5;
        } catch (NoSuchFieldError unused8) {
        }
    }
}
