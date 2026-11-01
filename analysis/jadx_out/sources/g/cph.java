package g;

import com.google.android.material.carousel.CarouselLayoutManager;

/* loaded from: classes3.dex */
public final class cph {

    /* renamed from: a, reason: collision with root package name */
    public final int f13270a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13271b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CarouselLayoutManager f13272c;

    public cph(int i) {
        this.f13270a = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public cph(CarouselLayoutManager carouselLayoutManager, int i) {
        this(1);
        this.f13271b = i;
        switch (i) {
            case 1:
                this.f13272c = carouselLayoutManager;
                this(0);
                break;
            default:
                this.f13272c = carouselLayoutManager;
                break;
        }
    }

    public final int d() {
        switch (this.f13271b) {
            case 0:
                return 0;
            default:
                CarouselLayoutManager carouselLayoutManager = this.f13272c;
                if (carouselLayoutManager.e()) {
                    return carouselLayoutManager.f0do;
                }
                return 0;
        }
    }
}
