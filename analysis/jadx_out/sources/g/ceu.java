package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class ceu extends RatingBar {

    /* renamed from: a, reason: collision with root package name */
    public final akj f12760a;

    public ceu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.ratingBarStyle);
        fgt.i(getContext(), this);
        akj akjVar = new akj(this);
        this.f12760a = akjVar;
        akjVar.w(attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap bitmap = (Bitmap) this.f12760a.f10384f;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
