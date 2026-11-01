package g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* loaded from: classes.dex */
public final class geb extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f17974a;

    public geb(Drawable.ConstantState constantState) {
        this.f17974a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f17974a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f17974a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        eia eiaVar = new eia();
        eiaVar.l = (VectorDrawable) this.f17974a.newDrawable();
        return eiaVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        eia eiaVar = new eia();
        eiaVar.l = (VectorDrawable) this.f17974a.newDrawable(resources);
        return eiaVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        eia eiaVar = new eia();
        eiaVar.l = (VectorDrawable) this.f17974a.newDrawable(resources, theme);
        return eiaVar;
    }
}
