package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class ml {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f19655a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f19656b;

    static {
        int[] iArr = new int[dho.values().length];
        f19656b = iArr;
        try {
            iArr[dho.CONFLICT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f19656b[dho.WIDER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f19656b[dho.WIDER_BY_GENERIC.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f19656b[dho.NARROW.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f19656b[dho.NARROW_BY_GENERIC.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f19656b[dho.EQUAL.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr2 = new int[bjt.values().length];
        f19655a = iArr2;
        try {
            iArr2[bjt.BYTE.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f19655a[bjt.SHORT.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f19655a[bjt.CHAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f19655a[bjt.INT.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f19655a[bjt.LONG.ordinal()] = 5;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f19655a[bjt.FLOAT.ordinal()] = 6;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            f19655a[bjt.DOUBLE.ordinal()] = 7;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            f19655a[bjt.BOOLEAN.ordinal()] = 8;
        } catch (NoSuchFieldError unused14) {
        }
        try {
            f19655a[bjt.OBJECT.ordinal()] = 9;
        } catch (NoSuchFieldError unused15) {
        }
        try {
            f19655a[bjt.ARRAY.ordinal()] = 10;
        } catch (NoSuchFieldError unused16) {
        }
        try {
            f19655a[bjt.VOID.ordinal()] = 11;
        } catch (NoSuchFieldError unused17) {
        }
    }
}
