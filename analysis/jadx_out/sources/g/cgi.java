package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class cgi extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public PorterDuff.Mode f12832a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12833b;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f12834c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f12835d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12836e;

    /* renamed from: f, reason: collision with root package name */
    public int f12837f;

    /* renamed from: g, reason: collision with root package name */
    public Bitmap f12838g;
    public int h;
    public qs i;
    public boolean j;
    public ColorStateList k;
    public ColorStateList l;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f12837f;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new eia(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new eia(this);
    }
}
