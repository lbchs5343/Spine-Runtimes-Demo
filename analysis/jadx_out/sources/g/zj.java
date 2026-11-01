package g;

/* loaded from: classes.dex */
public abstract /* synthetic */ class zj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f20401a;

    static {
        int[] iArr = new int[ftc.values().length];
        f20401a = iArr;
        try {
            iArr[ftc.WIFI.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f20401a[ftc.MOBILE_2G.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f20401a[ftc.MOBILE_3G.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f20401a[ftc.MOBILE_4G.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f20401a[ftc.MOBILE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
