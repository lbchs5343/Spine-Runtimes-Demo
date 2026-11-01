package g;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes3.dex */
public final class fpp extends erl {

    /* renamed from: e, reason: collision with root package name */
    public final SideSheetBehavior f17206e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f17207f;

    public /* synthetic */ fpp(SideSheetBehavior sideSheetBehavior, int i) {
        this.f17207f = i;
        this.f17206e = sideSheetBehavior;
    }

    @Override // g.erl
    public final int be(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.f17207f) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // g.erl
    public final float bf(int i) {
        switch (this.f17207f) {
            case 0:
                float bm = bm();
                return (i - bm) / (br() - bm);
            default:
                float f2 = this.f17206e.f9068ab;
                return (f2 - i) / (f2 - br());
        }
    }

    @Override // g.erl
    public final void bg(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        switch (this.f17207f) {
            case 0:
                if (i <= this.f17206e.f9068ab) {
                    marginLayoutParams.leftMargin = i2;
                    break;
                }
                break;
            default:
                int i3 = this.f17206e.f9068ab;
                if (i <= i3) {
                    marginLayoutParams.rightMargin = i3 - i;
                    break;
                }
                break;
        }
    }

    @Override // g.erl
    public final int bh() {
        switch (this.f17207f) {
            case 0:
                return -this.f17206e.t;
            default:
                return br();
        }
    }

    @Override // g.erl
    public final boolean bi(float f2, float f3) {
        switch (this.f17207f) {
            case 0:
                if (Math.abs(f2) <= Math.abs(f3) || Math.abs(f2) <= 500) {
                }
                break;
            default:
                if (Math.abs(f2) <= Math.abs(f3) || Math.abs(f2) <= 500) {
                }
                break;
        }
        return false;
    }

    @Override // g.erl
    public final boolean bj(View view) {
        switch (this.f17207f) {
            case 0:
                if (view.getRight() < (br() - bm()) / 2) {
                }
                break;
            default:
                if (view.getLeft() > (br() + this.f17206e.f9068ab) / 2) {
                }
                break;
        }
        return false;
    }

    @Override // g.erl
    public final int bk(View view) {
        switch (this.f17207f) {
            case 0:
                return view.getRight() + this.f17206e.q;
            default:
                return view.getLeft() - this.f17206e.q;
        }
    }

    @Override // g.erl
    public final int bl(CoordinatorLayout coordinatorLayout) {
        switch (this.f17207f) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // g.erl
    public final int bm() {
        switch (this.f17207f) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f17206e;
                return (-sideSheetBehavior.t) - sideSheetBehavior.q;
            default:
                return this.f17206e.f9068ab;
        }
    }

    @Override // g.erl
    public final boolean bn(View view, float f2) {
        switch (this.f17207f) {
            case 0:
                float left = view.getLeft();
                SideSheetBehavior sideSheetBehavior = this.f17206e;
                float abs = Math.abs((f2 * sideSheetBehavior.p) + left);
                sideSheetBehavior.getClass();
                if (abs > 0.5f) {
                }
                break;
            default:
                float right = view.getRight();
                SideSheetBehavior sideSheetBehavior2 = this.f17206e;
                float abs2 = Math.abs((f2 * sideSheetBehavior2.p) + right);
                sideSheetBehavior2.getClass();
                if (abs2 > 0.5f) {
                }
                break;
        }
        return false;
    }

    @Override // g.erl
    public final boolean bo(float f2) {
        switch (this.f17207f) {
            case 0:
                if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                }
                break;
            default:
                if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                }
                break;
        }
        return false;
    }

    @Override // g.erl
    public final int bp() {
        switch (this.f17207f) {
            case 0:
                return this.f17206e.q;
            default:
                return this.f17206e.f9068ab;
        }
    }

    @Override // g.erl
    public final int bq() {
        switch (this.f17207f) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // g.erl
    public final int br() {
        switch (this.f17207f) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f17206e;
                return Math.max(0, sideSheetBehavior.r + sideSheetBehavior.q);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.f17206e;
                return Math.max(0, (sideSheetBehavior2.f9068ab - sideSheetBehavior2.t) - sideSheetBehavior2.q);
        }
    }
}
