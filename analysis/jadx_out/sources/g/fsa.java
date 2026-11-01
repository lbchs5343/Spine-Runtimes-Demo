package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.TypedValue;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public abstract class fsa {
    /* JADX INFO: Access modifiers changed from: private */
    public static Drawable b(Context context, int i) {
        ColorStateList colorStateList;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setShape(1);
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) gradientDrawable, i, i, i, i);
        ColorStateList valueOf = ColorStateList.valueOf(0);
        TypedValue i2 = bfc.i(context, R.attr.colorControlHighlight);
        if (i2 != null) {
            int i3 = i2.resourceId;
            colorStateList = i3 != 0 ? eyt.bh(context, i3) : ColorStateList.valueOf(i2.data);
        } else {
            colorStateList = null;
        }
        if (colorStateList != null) {
            valueOf = colorStateList;
        }
        return new RippleDrawable(valueOf, null, insetDrawable);
    }
}
