package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class fws {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f17534a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f17535b;

    static {
        int[] iArr = new int[dnd.values().length];
        f17535b = iArr;
        try {
            iArr[dnd.ENCODED_FIELD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f17535b[dnd.ENCODED_ANNOTATION.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f17535b[dnd.ENCODED_ARRAY.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[hay.values().length];
        f17534a = iArr2;
        try {
            iArr2[hay.NOP.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f17534a[hay.MONITOR_ENTER.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f17534a[hay.MONITOR_EXIT.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f17534a[hay.MOVE_EXCEPTION.ordinal()] = 4;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f17534a[hay.CONSTRUCTOR.ordinal()] = 5;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f17534a[hay.MOVE.ordinal()] = 6;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f17534a[hay.CONST.ordinal()] = 7;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f17534a[hay.CAST.ordinal()] = 8;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f17534a[hay.IF.ordinal()] = 9;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f17534a[hay.FILLED_NEW_ARRAY.ordinal()] = 10;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f17534a[hay.APUT.ordinal()] = 11;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f17534a[hay.ARITH.ordinal()] = 12;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f17534a[hay.INVOKE.ordinal()] = 13;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f17534a[hay.ARRAY_LENGTH.ordinal()] = 14;
        } catch (NoSuchFieldError unused17) {
        }
    }
}
