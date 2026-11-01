package g;

import android.text.TextPaint;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class fgx {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f16771b;

    /* renamed from: d, reason: collision with root package name */
    public asw f16773d;

    /* renamed from: f, reason: collision with root package name */
    public float f16775f;

    /* renamed from: c, reason: collision with root package name */
    public final TextPaint f16772c = new TextPaint(1);

    /* renamed from: e, reason: collision with root package name */
    public final eez f16774e = new eez(1, this);

    /* renamed from: a, reason: collision with root package name */
    public boolean f16770a = true;

    public fgx(bko bkoVar) {
        this.f16771b = new WeakReference(null);
        this.f16771b = new WeakReference(bkoVar);
    }

    public final float g(String str) {
        if (!this.f16770a) {
            return this.f16775f;
        }
        TextPaint textPaint = this.f16772c;
        this.f16775f = str == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : textPaint.measureText((CharSequence) str, 0, str.length());
        if (str != null) {
            Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.f16770a = false;
        return this.f16775f;
    }
}
