package g;

import java.net.Proxy;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class aej {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f10095a;

    static {
        int[] iArr = new int[Proxy.Type.values().length];
        try {
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f10095a = iArr;
    }
}
