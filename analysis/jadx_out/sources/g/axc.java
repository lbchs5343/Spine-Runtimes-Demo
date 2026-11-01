package g;

import android.view.View;
import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes.dex */
public final /* synthetic */ class axc implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11014a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11015b;

    public /* synthetic */ axc(int i, Object obj) {
        this.f11014a = i;
        this.f11015b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        switch (this.f11014a) {
            case 0:
                ((ebw) this.f11015b).j();
                break;
            case 1:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) this.f11015b;
                if (i3 - i != i7 - i5 || i4 - i2 != i8 - i6) {
                    view.post(new fvi(6, carouselLayoutManager));
                    break;
                }
                break;
            default:
                ((anw) this.f11015b).an(i3 - i);
                break;
        }
    }
}
