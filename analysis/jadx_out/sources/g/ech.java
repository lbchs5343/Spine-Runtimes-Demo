package g;

import android.graphics.Paint;
import android.graphics.Path;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class ech {

    /* renamed from: e, reason: collision with root package name */
    public final Paint f15302e;

    /* renamed from: f, reason: collision with root package name */
    public int f15303f;

    /* renamed from: g, reason: collision with root package name */
    public int f15304g;
    public final Paint h;
    public int i;
    public final Paint j;
    public final Paint k;
    public final Path l = new Path();

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f15300c = new int[3];

    /* renamed from: d, reason: collision with root package name */
    public static final float[] f15301d = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f15298a = new int[4];

    /* renamed from: b, reason: collision with root package name */
    public static final float[] f15299b = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0.5f, 1.0f};

    public ech() {
        Paint paint = new Paint();
        this.f15302e = paint;
        this.h = new Paint();
        m(-16777216);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.j = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.k = new Paint(paint2);
    }

    public final void m(int i) {
        this.f15303f = afr.c(i, 68);
        this.f15304g = afr.c(i, 20);
        this.i = afr.c(i, 0);
        this.h.setColor(this.f15303f);
    }
}
