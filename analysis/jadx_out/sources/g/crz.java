package g;

import android.widget.ImageView;

/* loaded from: classes.dex */
public abstract /* synthetic */ class crz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f13409a;

    static {
        int[] iArr = new int[ImageView.ScaleType.values().length];
        f13409a = iArr;
        try {
            iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f13409a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f13409a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f13409a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f13409a[ImageView.ScaleType.CENTER.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f13409a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f13409a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
