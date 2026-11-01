package g;

import android.util.JsonToken;

/* loaded from: classes.dex */
public abstract /* synthetic */ class we {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f20208a;

    static {
        int[] iArr = new int[JsonToken.values().length];
        f20208a = iArr;
        try {
            iArr[JsonToken.NUMBER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f20208a[JsonToken.BEGIN_ARRAY.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f20208a[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
