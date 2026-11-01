package g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class dnm extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f14474a;

    public dnm(Drawable.ConstantState constantState) {
        this.f14474a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f14474a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f14474a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        ahf ahfVar = new ahf(null, 0);
        Drawable newDrawable = this.f14474a.newDrawable();
        ahfVar.l = newDrawable;
        newDrawable.setCallback(ahfVar.f10219f);
        return ahfVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        ahf ahfVar = new ahf(null, 0);
        Drawable newDrawable = this.f14474a.newDrawable(resources);
        ahfVar.l = newDrawable;
        newDrawable.setCallback(ahfVar.f10219f);
        return ahfVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        ahf ahfVar = new ahf(null, 0);
        Drawable newDrawable = this.f14474a.newDrawable(resources, theme);
        ahfVar.l = newDrawable;
        newDrawable.setCallback(ahfVar.f10219f);
        return ahfVar;
    }
}
