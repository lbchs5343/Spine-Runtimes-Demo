package com.google.android.gms.internal.ads;

import android.text.Spannable;
import android.text.style.RelativeSizeSpan;

/* loaded from: classes3.dex */
public final class zzcy {
    public static void zza(Spannable spannable, float f2, int i, int i2, int i3) {
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannable.getSpans(i, i2, RelativeSizeSpan.class)) {
            if (spannable.getSpanStart(relativeSizeSpan) <= i && spannable.getSpanEnd(relativeSizeSpan) >= i2) {
                f2 = relativeSizeSpan.getSizeChange() * f2;
            }
            if (spannable.getSpanStart(relativeSizeSpan) == i && spannable.getSpanEnd(relativeSizeSpan) == i2 && spannable.getSpanFlags(relativeSizeSpan) == 33) {
                spannable.removeSpan(relativeSizeSpan);
            }
        }
        spannable.setSpan(new RelativeSizeSpan(f2), i, i2, 33);
    }

    public static void zzb(Spannable spannable, Object obj, int i, int i2, int i3) {
        for (Object obj2 : spannable.getSpans(i, i2, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i && spannable.getSpanEnd(obj2) == i2 && spannable.getSpanFlags(obj2) == 33) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i, i2, 33);
    }
}
