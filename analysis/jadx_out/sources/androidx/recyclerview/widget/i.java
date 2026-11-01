package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aqz;
import g.wp;
import g.yx;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public final LinearInterpolator f286a;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f287b;

    /* renamed from: c, reason: collision with root package name */
    public int f288c;

    /* renamed from: d, reason: collision with root package name */
    public int f289d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f290e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f291f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f292g;
    public int h = -1;
    public View i;
    public float j;
    public final DecelerateInterpolator k;
    public RecyclerView l;
    public PointF m;
    public b n;
    public final c o;

    public i(Context context) {
        c cVar = new c();
        cVar.f260a = -1;
        cVar.f263d = false;
        cVar.f266g = 0;
        cVar.f262c = 0;
        cVar.f264e = 0;
        cVar.f265f = Integer.MIN_VALUE;
        cVar.f261b = null;
        this.o = cVar;
        this.f286a = new LinearInterpolator();
        this.k = new DecelerateInterpolator();
        this.f291f = false;
        this.f289d = 0;
        this.f288c = 0;
        this.f287b = context.getResources().getDisplayMetrics();
    }

    public static int p(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void q(View view, c cVar) {
        int i;
        PointF pointF;
        int ceil;
        PointF pointF2 = this.m;
        int i2 = 0;
        if (pointF2 != null) {
            float f2 = pointF2.x;
            if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                i = f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 1 : -1;
                int v = v(view, i);
                pointF = this.m;
                if (pointF != null) {
                    float f3 = pointF.y;
                    if (f3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        i2 = f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 1 : -1;
                    }
                }
                int w = w(view, i2);
                ceil = (int) Math.ceil(s((int) Math.sqrt((w * w) + (v * v))) / 0.3356d);
                if (ceil <= 0) {
                    cVar.f262c = -v;
                    cVar.f264e = -w;
                    cVar.f265f = ceil;
                    cVar.f261b = this.k;
                    cVar.f263d = true;
                    return;
                }
                return;
            }
        }
        i = 0;
        int v2 = v(view, i);
        pointF = this.m;
        if (pointF != null) {
        }
        int w2 = w(view, i2);
        ceil = (int) Math.ceil(s((int) Math.sqrt((w2 * w2) + (v2 * v2))) / 0.3356d);
        if (ceil <= 0) {
        }
    }

    public float r(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int s(int i) {
        float abs = Math.abs(i);
        if (!this.f291f) {
            this.j = r(this.f287b);
            this.f291f = true;
        }
        return (int) Math.ceil(abs * this.j);
    }

    public PointF t(int i) {
        Object obj = this.n;
        if (obj instanceof wp) {
            return ((wp) obj).cf(i);
        }
        return null;
    }

    public final void u() {
        if (this.f292g) {
            this.f292g = false;
            this.f288c = 0;
            this.f289d = 0;
            this.m = null;
            this.l.mState.f10687g = -1;
            this.i = null;
            this.h = -1;
            this.f290e = false;
            b bVar = this.n;
            if (bVar.dr == this) {
                bVar.dr = null;
            }
            this.n = null;
            this.l = null;
        }
    }

    public int v(View view, int i) {
        b bVar = this.n;
        if (bVar == null || !bVar.ca()) {
            return 0;
        }
        yx yxVar = (yx) view.getLayoutParams();
        return p((view.getLeft() - ((yx) view.getLayoutParams()).f20372c.left) - ((ViewGroup.MarginLayoutParams) yxVar).leftMargin, view.getRight() + ((yx) view.getLayoutParams()).f20372c.right + ((ViewGroup.MarginLayoutParams) yxVar).rightMargin, bVar.eq(), bVar.f0do - bVar.fj(), i);
    }

    public int w(View view, int i) {
        b bVar = this.n;
        if (bVar == null || !bVar.cd()) {
            return 0;
        }
        yx yxVar = (yx) view.getLayoutParams();
        return p((view.getTop() - ((yx) view.getLayoutParams()).f20372c.top) - ((ViewGroup.MarginLayoutParams) yxVar).topMargin, view.getBottom() + ((yx) view.getLayoutParams()).f20372c.bottom + ((ViewGroup.MarginLayoutParams) yxVar).bottomMargin, bVar.fd(), bVar.dn - bVar.er(), i);
    }

    public final void x(int i, int i2) {
        PointF t;
        RecyclerView recyclerView = this.l;
        if (this.h == -1 || recyclerView == null) {
            u();
        }
        if (this.f290e && this.i == null && this.n != null && (t = t(this.h)) != null) {
            float f2 = t.x;
            if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || t.y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                recyclerView.scrollStep((int) Math.signum(f2), (int) Math.signum(t.y), null);
            }
        }
        this.f290e = false;
        View view = this.i;
        c cVar = this.o;
        if (view != null) {
            if (this.l.getChildLayoutPosition(view) == this.h) {
                View view2 = this.i;
                aqz aqzVar = recyclerView.mState;
                q(view2, cVar);
                cVar.h(recyclerView);
                u();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.i = null;
            }
        }
        if (this.f292g) {
            aqz aqzVar2 = recyclerView.mState;
            if (this.l.mLayout.et() == 0) {
                u();
            } else {
                int i3 = this.f289d;
                int i4 = i3 - i;
                if (i3 * i4 <= 0) {
                    i4 = 0;
                }
                this.f289d = i4;
                int i5 = this.f288c;
                int i6 = i5 - i2;
                if (i5 * i6 <= 0) {
                    i6 = 0;
                }
                this.f288c = i6;
                if (i4 == 0 && i6 == 0) {
                    PointF t2 = t(this.h);
                    if (t2 != null) {
                        if (t2.x != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || t2.y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            float f3 = t2.y;
                            float sqrt = (float) Math.sqrt((f3 * f3) + (r9 * r9));
                            float f4 = t2.x / sqrt;
                            t2.x = f4;
                            float f5 = t2.y / sqrt;
                            t2.y = f5;
                            this.m = t2;
                            this.f289d = (int) (f4 * 10000.0f);
                            this.f288c = (int) (f5 * 10000.0f);
                            int s = s(10000);
                            cVar.f262c = (int) (this.f289d * 1.2f);
                            cVar.f264e = (int) (this.f288c * 1.2f);
                            cVar.f265f = (int) (s * 1.2f);
                            cVar.f261b = this.f286a;
                            cVar.f263d = true;
                        }
                    }
                    cVar.f260a = this.h;
                    u();
                }
            }
            boolean z = cVar.f260a >= 0;
            cVar.h(recyclerView);
            if (z && this.f292g) {
                this.f290e = true;
                recyclerView.mViewFlinger.i();
            }
        }
    }
}
