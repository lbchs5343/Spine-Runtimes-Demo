package g;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes3.dex */
public final class god extends androidx.recyclerview.widget.i {
    public final /* synthetic */ int y = 1;

    public /* synthetic */ god(Context context) {
        super(context);
    }

    public god(CarouselLayoutManager carouselLayoutManager, Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.i
    public float r(DisplayMetrics displayMetrics) {
        switch (this.y) {
            case 1:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return super.r(displayMetrics);
        }
    }

    @Override // androidx.recyclerview.widget.i
    public PointF t(int i) {
        switch (this.y) {
            case 0:
                return null;
            default:
                return super.t(i);
        }
    }

    @Override // androidx.recyclerview.widget.i
    public int v(View view, int i) {
        switch (this.y) {
            case 0:
                return 0;
            default:
                return super.v(view, i);
        }
    }

    @Override // androidx.recyclerview.widget.i
    public int w(View view, int i) {
        switch (this.y) {
            case 0:
                return 0;
            default:
                return super.w(view, i);
        }
    }
}
