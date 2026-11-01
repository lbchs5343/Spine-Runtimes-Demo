package g;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class yx extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public boolean f20370a;

    /* renamed from: b, reason: collision with root package name */
    public androidx.recyclerview.widget.p f20371b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f20372c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f20373d;

    public yx(int i, int i2) {
        super(i, i2);
        this.f20372c = new Rect();
        this.f20373d = true;
        this.f20370a = false;
    }

    public yx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20372c = new Rect();
        this.f20373d = true;
        this.f20370a = false;
    }

    public yx(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f20372c = new Rect();
        this.f20373d = true;
        this.f20370a = false;
    }

    public yx(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f20372c = new Rect();
        this.f20373d = true;
        this.f20370a = false;
    }

    public yx(yx yxVar) {
        super((ViewGroup.LayoutParams) yxVar);
        this.f20372c = new Rect();
        this.f20373d = true;
        this.f20370a = false;
    }
}
