package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class rv {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f19930a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f19931b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int[] f19932c;

    static {
        int[] iArr = new int[hay.values().length];
        f19932c = iArr;
        try {
            iArr[hay.INVOKE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f19932c[hay.SGET.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f19932c[hay.IGET.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f19932c[hay.AGET.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f19932c[hay.CONST.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f19932c[hay.ARRAY_LENGTH.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr2 = new int[bvj.values().length];
        f19931b = iArr2;
        try {
            iArr2[bvj.ADD.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f19931b[bvj.SUB.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f19931b[bvj.MUL.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f19931b[bvj.DIV.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f19931b[bvj.REM.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
        int[] iArr3 = new int[ath.values().length];
        f19930a = iArr3;
        try {
            iArr3[ath.COMPARE.ordinal()] = 1;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f19930a[ath.TERNARY.ordinal()] = 2;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f19930a[ath.NOT.ordinal()] = 3;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f19930a[ath.AND.ordinal()] = 4;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f19930a[ath.OR.ordinal()] = 5;
        } catch (NoSuchFieldError unused16) {
        }
    }
}
