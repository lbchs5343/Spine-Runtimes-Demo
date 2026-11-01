package g;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.textfield.TextInputLayout;
import java.lang.reflect.Constructor;

/* loaded from: classes3.dex */
public final class cla {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f13049a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f13050b;

    /* renamed from: c, reason: collision with root package name */
    public static Constructor f13051c;

    /* renamed from: d, reason: collision with root package name */
    public static TextDirectionHeuristic f13052d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13054f;

    /* renamed from: g, reason: collision with root package name */
    public int f13055g;
    public CharSequence j;
    public aoi l;
    public final TextPaint n;
    public final int p;
    public Layout.Alignment i = Layout.Alignment.ALIGN_NORMAL;
    public int k = he.UNDEFINED_ITEM_ID;
    public float q = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: e, reason: collision with root package name */
    public float f13053e = 1.0f;
    public int m = f13050b;
    public boolean o = true;
    public TextUtils.TruncateAt h = null;

    static {
        f13050b = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    public cla(CharSequence charSequence, TextPaint textPaint, int i) {
        this.j = charSequence;
        this.n = textPaint;
        this.p = i;
        this.f13055g = charSequence.length();
    }

    public final StaticLayout r() {
        StaticLayout.Builder obtain;
        StaticLayout build;
        int breakStrategy;
        if (this.j == null) {
            this.j = "";
        }
        int max = Math.max(0, this.p);
        CharSequence charSequence = this.j;
        int i = this.k;
        TextPaint textPaint = this.n;
        if (i == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.h);
        }
        int min = Math.min(charSequence.length(), this.f13055g);
        this.f13055g = min;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            if (!f13049a) {
                try {
                    f13052d = this.f13054f && i2 >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                    Class cls = Integer.TYPE;
                    Class cls2 = Float.TYPE;
                    Constructor declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
                    f13051c = declaredConstructor;
                    declaredConstructor.setAccessible(true);
                    f13049a = true;
                } catch (Exception e2) {
                    throw new gkz(e2);
                }
            }
            try {
                Constructor constructor = f13051c;
                constructor.getClass();
                Integer valueOf = Integer.valueOf(this.f13055g);
                Integer valueOf2 = Integer.valueOf(max);
                Layout.Alignment alignment = this.i;
                TextDirectionHeuristic textDirectionHeuristic = f13052d;
                textDirectionHeuristic.getClass();
                return (StaticLayout) constructor.newInstance(charSequence, 0, valueOf, textPaint, valueOf2, alignment, textDirectionHeuristic, Float.valueOf(1.0f), Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT), Boolean.valueOf(this.o), null, Integer.valueOf(max), Integer.valueOf(this.k));
            } catch (Exception e3) {
                throw new gkz(e3);
            }
        }
        if (this.f13054f && this.k == 1) {
            this.i = Layout.Alignment.ALIGN_OPPOSITE;
        }
        obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.i);
        obtain.setIncludePad(this.o);
        obtain.setTextDirection(this.f13054f ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.h;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.k);
        float f2 = this.q;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || this.f13053e != 1.0f) {
            obtain.setLineSpacing(f2, this.f13053e);
        }
        if (this.k > 1) {
            obtain.setHyphenationFrequency(this.m);
        }
        aoi aoiVar = this.l;
        if (aoiVar != null) {
            TextInputLayout textInputLayout = (TextInputLayout) aoiVar.f10570b;
            if (i2 >= 23) {
                breakStrategy = textInputLayout.ac.getBreakStrategy();
                obtain.setBreakStrategy(breakStrategy);
            } else {
                int[][] iArr = TextInputLayout.f9076a;
            }
        }
        build = obtain.build();
        return build;
    }
}
