package g;

import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class blt {
    public static boolean a(TextView textView, String str) {
        return textView.setFontVariationSettings(str);
    }

    public static int b(TextView textView) {
        return textView.getAutoSizeStepGranularity();
    }

    public static void c(TextView textView, int i, int i2, int i3, int i4) {
        textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
    }

    public static void d(TextView textView, int[] iArr, int i) {
        textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
    }
}
