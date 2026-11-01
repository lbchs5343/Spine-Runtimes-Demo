package g;

import android.widget.ImageView;

/* loaded from: classes.dex */
public abstract /* synthetic */ class frj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f17291a;

    static {
        int[] iArr = new int[ImageView.ScaleType.values().length];
        f17291a = iArr;
        try {
            iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f17291a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f17291a[ImageView.ScaleType.CENTER.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f17291a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
