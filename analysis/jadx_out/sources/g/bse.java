package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class bse {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f12112a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f12113b;

    static {
        int[] iArr = new int[bvj.values().length];
        f12113b = iArr;
        try {
            iArr[bvj.ADD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f12113b[bvj.XOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[hay.values().length];
        f12112a = iArr2;
        try {
            iArr2[hay.ARITH.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f12112a[hay.IF.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f12112a[hay.TERNARY.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f12112a[hay.INVOKE.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f12112a[hay.IPUT.ordinal()] = 5;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f12112a[hay.SPUT.ordinal()] = 6;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f12112a[hay.CAST.ordinal()] = 7;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f12112a[hay.CHECK_CAST.ordinal()] = 8;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f12112a[hay.MOVE.ordinal()] = 9;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f12112a[hay.CONSTRUCTOR.ordinal()] = 10;
        } catch (NoSuchFieldError unused12) {
        }
    }
}
