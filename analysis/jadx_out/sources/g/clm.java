package g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Arrays;

/* loaded from: classes.dex */
public class clm extends fji {

    /* renamed from: b, reason: collision with root package name */
    public final float f13064b;

    /* renamed from: c, reason: collision with root package name */
    public final GradientDrawable f13065c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f13066d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13067e;

    public clm(Context context) {
        this.f13067e = Math.round(context.getResources().getDisplayMetrics().density * 16.0f);
        this.f13065c = (GradientDrawable) fso.ai(context, R.drawable.setting_section_background).mutate();
        this.f13064b = context.getResources().getDimension(R.dimen.setting_section_corner_radius);
        this.f13066d = fso.ai(context, R.drawable.setting_section_divider);
    }

    @Override // g.fji
    public final void a(Canvas canvas, RecyclerView recyclerView) {
        char c2;
        char c3;
        char c4;
        if (recyclerView.getAdapter() instanceof dbv) {
            dbv dbvVar = (dbv) recyclerView.getAdapter();
            for (int i = 0; i < recyclerView.getChildCount(); i++) {
                View childAt = recyclerView.getChildAt(i);
                int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
                if (f(dbvVar, childAdapterPosition)) {
                    boolean f2 = f(dbvVar, childAdapterPosition - 1);
                    float f3 = this.f13064b;
                    float f4 = f2 ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : f3;
                    boolean f5 = f(dbvVar, childAdapterPosition + 1);
                    if (f5) {
                        f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    }
                    if (childAt.getBackground() instanceof RippleDrawable) {
                        float[] fArr = {f4, f4, f4, f4, f3, f3, f3, f3};
                        c2 = 7;
                        c3 = 6;
                        Object tag = childAt.getTag(R.id.app_section_feedback_corners);
                        c4 = 5;
                        if (!(tag instanceof float[]) || !Arrays.equals((float[]) tag, fArr)) {
                            Drawable findDrawableByLayerId = ((RippleDrawable) childAt.getBackground().mutate()).findDrawableByLayerId(android.R.id.mask);
                            if (findDrawableByLayerId instanceof GradientDrawable) {
                                ((GradientDrawable) findDrawableByLayerId).setCornerRadii(fArr);
                                childAt.setTag(R.id.app_section_feedback_corners, fArr);
                            }
                        }
                    } else {
                        c2 = 7;
                        c3 = 6;
                        c4 = 5;
                    }
                    Drawable drawable = this.f13066d;
                    int intrinsicHeight = (!f5 || drawable == null) ? 0 : drawable.getIntrinsicHeight();
                    float[] fArr2 = new float[8];
                    fArr2[0] = f4;
                    fArr2[1] = f4;
                    fArr2[2] = f4;
                    fArr2[3] = f4;
                    fArr2[4] = f3;
                    fArr2[c4] = f3;
                    fArr2[c3] = f3;
                    fArr2[c2] = f3;
                    GradientDrawable gradientDrawable = this.f13065c;
                    gradientDrawable.setCornerRadii(fArr2);
                    int round = Math.round(childAt.getTranslationY());
                    gradientDrawable.setBounds(childAt.getLeft(), childAt.getTop() + round, childAt.getRight(), childAt.getBottom() + round + intrinsicHeight);
                    gradientDrawable.draw(canvas);
                    if (f5 && drawable != null) {
                        int left = childAt.getLeft();
                        int i2 = this.f13067e;
                        drawable.setBounds(left + i2, childAt.getBottom() + round, childAt.getRight() - i2, drawable.getIntrinsicHeight() + childAt.getBottom() + round);
                        drawable.draw(canvas);
                    }
                }
            }
        }
    }

    public boolean f(dbv dbvVar, int i) {
        if (i < 0 || i >= acw.bo(dbvVar.f13943c)) {
            return false;
        }
        cng f2 = dbvVar.f(i);
        return ((f2 instanceof edn) || (f2 instanceof dpj)) ? false : true;
    }

    @Override // g.fji
    public final void g(Rect rect, View view, RecyclerView recyclerView, aqz aqzVar) {
        Drawable drawable;
        if (recyclerView.getAdapter() instanceof dbv) {
            dbv dbvVar = (dbv) recyclerView.getAdapter();
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            if (f(dbvVar, childAdapterPosition) && f(dbvVar, childAdapterPosition + 1) && (drawable = this.f13066d) != null) {
                rect.bottom = drawable.getIntrinsicHeight();
            }
        }
    }
}
