package g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.AppCompatImageView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class ena extends AppCompatImageView implements di {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ esf f15833d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ena(esf esfVar, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f15833d = esfVar;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        ffb.ay(this, getContentDescription());
        setOnTouchListener(new gbu(this, this));
    }

    @Override // g.di
    public final boolean n() {
        return false;
    }

    @Override // g.di
    public final boolean o() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f15833d.ag();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
