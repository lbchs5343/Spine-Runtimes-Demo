package g;

import android.os.Build;
import android.os.LocaleList;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class bsr {

    /* renamed from: a, reason: collision with root package name */
    public final int f12139a;

    /* renamed from: b, reason: collision with root package name */
    public final TextPaint f12140b;

    /* renamed from: c, reason: collision with root package name */
    public final TextDirectionHeuristic f12141c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12142d;

    public bsr(PrecomputedText.Params params) {
        TextPaint textPaint;
        TextDirectionHeuristic textDirection;
        int breakStrategy;
        int hyphenationFrequency;
        textPaint = params.getTextPaint();
        this.f12140b = textPaint;
        textDirection = params.getTextDirection();
        this.f12141c = textDirection;
        breakStrategy = params.getBreakStrategy();
        this.f12142d = breakStrategy;
        hyphenationFrequency = params.getHyphenationFrequency();
        this.f12139a = hyphenationFrequency;
    }

    public bsr(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i2) {
        PrecomputedText.Params.Builder breakStrategy;
        PrecomputedText.Params.Builder hyphenationFrequency;
        PrecomputedText.Params.Builder textDirection;
        if (Build.VERSION.SDK_INT >= 29) {
            breakStrategy = ezg.b(textPaint).setBreakStrategy(i);
            hyphenationFrequency = breakStrategy.setHyphenationFrequency(i2);
            textDirection = hyphenationFrequency.setTextDirection(textDirectionHeuristic);
            textDirection.build();
        }
        this.f12140b = textPaint;
        this.f12141c = textDirectionHeuristic;
        this.f12142d = i;
        this.f12139a = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0088, code lost:
    
        if (r1 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009e, code lost:
    
        if (r3.getTypeface() != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
    
        if (r5.getTypeface() == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b7, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b3, code lost:
    
        if (r3.getTypeface().equals(r5.getTypeface()) != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0097, code lost:
    
        if (r3.getTextLocale().equals(r5.getTextLocale()) == false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        LocaleList textLocales;
        LocaleList textLocales2;
        boolean equals;
        if (obj != this) {
            if (obj instanceof bsr) {
                bsr bsrVar = (bsr) obj;
                int i = Build.VERSION.SDK_INT;
                if (i < 23 || (this.f12142d == bsrVar.f12142d && this.f12139a == bsrVar.f12139a)) {
                    TextPaint textPaint = this.f12140b;
                    float textSize = textPaint.getTextSize();
                    TextPaint textPaint2 = bsrVar.f12140b;
                    if (textSize == textPaint2.getTextSize() && textPaint.getTextScaleX() == textPaint2.getTextScaleX() && textPaint.getTextSkewX() == textPaint2.getTextSkewX() && textPaint.getLetterSpacing() == textPaint2.getLetterSpacing() && TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()) && textPaint.getFlags() == textPaint2.getFlags()) {
                        if (i >= 24) {
                            textLocales = textPaint.getTextLocales();
                            textLocales2 = textPaint2.getTextLocales();
                            equals = textLocales.equals(textLocales2);
                        }
                    }
                }
                boolean z = false;
                if (z && this.f12141c == bsrVar.f12141c) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        LocaleList textLocales;
        int i = Build.VERSION.SDK_INT;
        TextDirectionHeuristic textDirectionHeuristic = this.f12141c;
        int i2 = this.f12139a;
        int i3 = this.f12142d;
        TextPaint textPaint = this.f12140b;
        if (i < 24) {
            return Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
        }
        Float valueOf = Float.valueOf(textPaint.getTextSize());
        Float valueOf2 = Float.valueOf(textPaint.getTextScaleX());
        Float valueOf3 = Float.valueOf(textPaint.getTextSkewX());
        Float valueOf4 = Float.valueOf(textPaint.getLetterSpacing());
        Integer valueOf5 = Integer.valueOf(textPaint.getFlags());
        textLocales = textPaint.getTextLocales();
        return Objects.hash(valueOf, valueOf2, valueOf3, valueOf4, valueOf5, textLocales, textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i3), Integer.valueOf(i2));
    }

    public final String toString() {
        String fontVariationSettings;
        LocaleList textLocales;
        StringBuilder sb = new StringBuilder("{");
        StringBuilder sb2 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f12140b;
        sb2.append(textPaint.getTextSize());
        sb.append(sb2.toString());
        sb.append(", textScaleX=" + textPaint.getTextScaleX());
        sb.append(", textSkewX=" + textPaint.getTextSkewX());
        int i = Build.VERSION.SDK_INT;
        sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        if (i >= 24) {
            StringBuilder sb3 = new StringBuilder(", textLocale=");
            textLocales = textPaint.getTextLocales();
            sb3.append(textLocales);
            sb.append(sb3.toString());
        } else {
            sb.append(", textLocale=" + textPaint.getTextLocale());
        }
        sb.append(", typeface=" + textPaint.getTypeface());
        if (i >= 26) {
            StringBuilder sb4 = new StringBuilder(", variationSettings=");
            fontVariationSettings = textPaint.getFontVariationSettings();
            sb4.append(fontVariationSettings);
            sb.append(sb4.toString());
        }
        sb.append(", textDir=" + this.f12141c);
        sb.append(", breakStrategy=" + this.f12142d);
        sb.append(", hyphenationFrequency=" + this.f12139a);
        sb.append("}");
        return sb.toString();
    }
}
