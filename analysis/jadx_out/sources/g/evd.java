package g;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes3.dex */
public final class evd extends fso {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f16216a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextPaint f16217b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fso f16218c;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ asw f16219f;

    public evd(asw aswVar, Context context, TextPaint textPaint, fso fsoVar) {
        this.f16219f = aswVar;
        this.f16216a = context;
        this.f16217b = textPaint;
        this.f16218c = fsoVar;
    }

    @Override // g.fso
    public final void d(int i) {
        this.f16218c.d(i);
    }

    @Override // g.fso
    public final void e(Typeface typeface, boolean z) {
        this.f16219f.t(this.f16216a, this.f16217b, typeface);
        this.f16218c.e(typeface, z);
    }
}
