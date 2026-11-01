package g;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ejj extends dzm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15656a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15657b;
    public final /* synthetic */ WeakReference bf;
    public final /* synthetic */ cic bg;

    public ejj(cic cicVar, int i, int i2, WeakReference weakReference) {
        this.bg = cicVar;
        this.f15656a = i;
        this.f15657b = i2;
        this.bf = weakReference;
    }

    @Override // g.dzm
    public final void c(int i) {
    }

    @Override // g.dzm
    public final void d(Typeface typeface) {
        int i;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.f15656a) != -1) {
            typeface = fwi.a(typeface, i, (this.f15657b & 2) != 0);
        }
        cic cicVar = this.bg;
        if (cicVar.h) {
            cicVar.f12917d = typeface;
            TextView textView = (TextView) this.bf.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new hdo(textView, typeface, cicVar.k, 1));
                } else {
                    textView.setTypeface(typeface, cicVar.k);
                }
            }
        }
    }
}
