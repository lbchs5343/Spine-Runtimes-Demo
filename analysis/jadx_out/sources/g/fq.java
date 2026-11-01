package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class fq extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public PorterDuff.Mode f17223a;

    /* renamed from: b, reason: collision with root package name */
    public int f17224b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable.ConstantState f17225c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f17226d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i = this.f17224b;
        Drawable.ConstantState constantState = this.f17225c;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        brt brtVar = new brt();
        brtVar.f12091d = this;
        Drawable.ConstantState constantState = this.f17225c;
        if (constantState != null) {
            brtVar.p(constantState.newDrawable(resources));
        }
        if (brt.f12088a == null) {
            try {
                brt.f12088a = Drawable.class.getDeclaredMethod("isProjected", null);
            } catch (Exception unused) {
            }
        }
        return brtVar;
    }
}
