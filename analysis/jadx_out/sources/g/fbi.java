package g;

import android.animation.AnimatorSet;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fbi extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public tl f16509a;

    /* renamed from: b, reason: collision with root package name */
    public eia f16510b;

    /* renamed from: c, reason: collision with root package name */
    public AnimatorSet f16511c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f16512d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }
}
