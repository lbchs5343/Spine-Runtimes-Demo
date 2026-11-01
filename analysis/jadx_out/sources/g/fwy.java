package g;

import android.webkit.ConsoleMessage;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class fwy {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f17553a;

    static {
        int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
        f17553a = iArr;
        try {
            iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f17553a[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f17553a[ConsoleMessage.MessageLevel.LOG.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f17553a[ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f17553a[ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
