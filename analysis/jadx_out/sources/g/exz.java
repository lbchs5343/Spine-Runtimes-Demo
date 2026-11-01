package g;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import cn.trinea.android.lib.alliance.view.UsefulAppsRecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.carousel.CarouselLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class exz extends fji {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16346b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f16347c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f16348d;

    public exz() {
        this.f16346b = 0;
        Paint paint = new Paint();
        this.f16347c = paint;
        this.f16348d = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    public exz(UsefulAppsRecyclerView usefulAppsRecyclerView) {
        this.f16346b = 1;
        this.f16348d = usefulAppsRecyclerView;
        this.f16347c = new Paint();
    }

    @Override // g.fji
    public final void ak(Canvas canvas, RecyclerView recyclerView, aqz aqzVar) {
        Paint paint;
        int eq;
        int fj;
        int i;
        int i2;
        int i3 = this.f16346b;
        Object obj = this.f16348d;
        switch (i3) {
            case 0:
                float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
                Paint paint2 = this.f16347c;
                paint2.setStrokeWidth(dimension);
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    ((bdw) it.next()).getClass();
                    ThreadLocal threadLocal = afr.f10152a;
                    float f2 = 1.0f - TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    paint2.setColor(Color.argb((int) ((Color.alpha(-16776961) * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (Color.alpha(-65281) * f2)), (int) ((Color.red(-16776961) * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (Color.red(-65281) * f2)), (int) ((Color.green(-16776961) * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (Color.green(-65281) * f2)), (int) ((Color.blue(-16776961) * TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) + (Color.blue(-65281) * f2))));
                    if (((CarouselLayoutManager) recyclerView.getLayoutManager()).d()) {
                        cph cphVar = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f9029b;
                        switch (cphVar.f13271b) {
                            case 0:
                                i = 0;
                                break;
                            default:
                                i = cphVar.f13272c.fd();
                                break;
                        }
                        float f3 = i;
                        cph cphVar2 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f9029b;
                        switch (cphVar2.f13271b) {
                            case 0:
                                i2 = cphVar2.f13272c.dn;
                                break;
                            default:
                                CarouselLayoutManager carouselLayoutManager = cphVar2.f13272c;
                                i2 = carouselLayoutManager.dn - carouselLayoutManager.er();
                                break;
                        }
                        paint = paint2;
                        canvas.drawLine(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i2, paint);
                    } else {
                        paint = paint2;
                        cph cphVar3 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f9029b;
                        switch (cphVar3.f13271b) {
                            case 0:
                                eq = cphVar3.f13272c.eq();
                                break;
                            default:
                                eq = 0;
                                break;
                        }
                        float f4 = eq;
                        cph cphVar4 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).f9029b;
                        switch (cphVar4.f13271b) {
                            case 0:
                                CarouselLayoutManager carouselLayoutManager2 = cphVar4.f13272c;
                                fj = carouselLayoutManager2.f0do - carouselLayoutManager2.fj();
                                break;
                            default:
                                fj = cphVar4.f13272c.f0do;
                                break;
                        }
                        canvas.drawLine(f4, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, fj, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, paint);
                    }
                    paint2 = paint;
                }
                break;
            default:
                int bs = eyt.bs(R.attr.colorOnSurface, recyclerView);
                Paint paint3 = this.f16347c;
                paint3.setColor(bs);
                paint3.setAlpha(Math.round(12.75f));
                UsefulAppsRecyclerView usefulAppsRecyclerView = (UsefulAppsRecyclerView) obj;
                float f5 = usefulAppsRecyclerView.getResources().getDisplayMetrics().density * 16.0f;
                float f6 = usefulAppsRecyclerView.getResources().getDisplayMetrics().density;
                for (int i4 = 0; i4 < recyclerView.getChildCount(); i4++) {
                    View childAt = recyclerView.getChildAt(i4);
                    int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
                    if (childAdapterPosition != -1 && childAdapterPosition < aqzVar.p() - 1) {
                        float translationY = childAt.getTranslationY() + childAt.getBottom();
                        canvas.drawRect(f5, translationY - f6, recyclerView.getWidth() - f5, translationY, paint3);
                    }
                }
                break;
        }
    }
}
