package g;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gri {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f18638a;

    /* renamed from: b, reason: collision with root package name */
    public int f18639b;

    /* renamed from: c, reason: collision with root package name */
    public int f18640c;

    /* renamed from: d, reason: collision with root package name */
    public final ConstraintLayout f18641d;

    /* renamed from: e, reason: collision with root package name */
    public int f18642e;

    /* renamed from: f, reason: collision with root package name */
    public int f18643f;

    /* renamed from: g, reason: collision with root package name */
    public int f18644g;
    public int h;

    public gri(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f18638a = constraintLayout;
        this.f18641d = constraintLayout2;
    }

    public static boolean i(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }
        return false;
    }

    public final void j(brh brhVar, dcu dcuVar) {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int max;
        int max2;
        int baseline;
        int i;
        int childMeasureSpec;
        if (brhVar == null) {
            return;
        }
        hac hacVar = brhVar.br;
        hac hacVar2 = brhVar.cw;
        if (brhVar.aq == 8) {
            dcuVar.f13984c = 0;
            dcuVar.f13986e = 0;
            dcuVar.j = 0;
            return;
        }
        if (brhVar.bj == null) {
            return;
        }
        ezi eziVar = ConstraintLayout.f129a;
        fol folVar = dcuVar.f13985d;
        fol folVar2 = dcuVar.f13988g;
        int i2 = dcuVar.i;
        int i3 = dcuVar.f13983b;
        int i4 = this.f18643f + this.f18644g;
        int i5 = this.f18639b;
        View view = brhVar.bh;
        int[] iArr = hbx.f19205a;
        int i6 = iArr[folVar.ordinal()];
        if (i6 != 1) {
            if (i6 == 2) {
                childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f18642e, i5, -2);
            } else if (i6 == 3) {
                int i7 = this.f18642e;
                int i8 = hacVar2 != null ? hacVar2.i : 0;
                if (hacVar != null) {
                    i8 += hacVar.i;
                }
                childMeasureSpec = ViewGroup.getChildMeasureSpec(i7, i5 + i8, -1);
            } else if (i6 != 4) {
                makeMeasureSpec = 0;
            } else {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f18642e, i5, -2);
                boolean z = brhVar.da == 1;
                int i9 = dcuVar.h;
                if (i9 == 1 || i9 == 2) {
                    boolean z2 = view.getMeasuredHeight() == brhVar.di();
                    if (dcuVar.h == 2 || !z || ((z && z2) || brhVar.i())) {
                        childMeasureSpec = View.MeasureSpec.makeMeasureSpec(brhVar.eb(), C.ENCODING_PCM_32BIT);
                    }
                }
            }
            makeMeasureSpec = childMeasureSpec;
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, C.ENCODING_PCM_32BIT);
        }
        int i10 = iArr[folVar2.ordinal()];
        if (i10 == 1) {
            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT);
        } else if (i10 == 2) {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.h, i4, -2);
        } else if (i10 == 3) {
            int i11 = this.h;
            int i12 = hacVar2 != null ? brhVar.bx.i : 0;
            if (hacVar != null) {
                i12 += brhVar.as.i;
            }
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, i4 + i12, -1);
        } else if (i10 != 4) {
            makeMeasureSpec2 = 0;
        } else {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.h, i4, -2);
            boolean z3 = brhVar.by == 1;
            int i13 = dcuVar.h;
            if (i13 == 1 || i13 == 2) {
                boolean z4 = view.getMeasuredWidth() == brhVar.eb();
                if (dcuVar.h == 2 || !z3 || ((z3 && z4) || brhVar.e())) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(brhVar.di(), C.ENCODING_PCM_32BIT);
                }
            }
        }
        aep aepVar = (aep) brhVar.bj;
        ConstraintLayout constraintLayout = this.f18638a;
        if (aepVar != null && bff.x(constraintLayout.l, 256) && view.getMeasuredWidth() == brhVar.eb() && view.getMeasuredWidth() < aepVar.eb() && view.getMeasuredHeight() == brhVar.di() && view.getMeasuredHeight() < aepVar.di() && view.getBaseline() == brhVar.bn && !brhVar.dg() && i(brhVar.ba, makeMeasureSpec, brhVar.eb()) && i(brhVar.ar, makeMeasureSpec2, brhVar.di())) {
            dcuVar.f13984c = brhVar.eb();
            dcuVar.f13986e = brhVar.di();
            dcuVar.j = brhVar.bn;
            return;
        }
        fol folVar3 = fol.MATCH_CONSTRAINT;
        boolean z5 = folVar == folVar3;
        boolean z6 = folVar2 == folVar3;
        fol folVar4 = fol.MATCH_PARENT;
        boolean z7 = folVar2 == folVar4 || folVar2 == fol.FIXED;
        boolean z8 = folVar == folVar4 || folVar == fol.FIXED;
        boolean z9 = z5 && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        boolean z10 = z6 && brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (view == null) {
            return;
        }
        dnk dnkVar = (dnk) view.getLayoutParams();
        int i14 = dcuVar.h;
        if (i14 != 1 && i14 != 2 && z5 && brhVar.da == 0 && z6 && brhVar.by == 0) {
            i = -1;
            baseline = 0;
            max = 0;
            max2 = 0;
        } else {
            if ((view instanceof gcr) && (brhVar instanceof dbr)) {
                ((gcr) view).c((dbr) brhVar, makeMeasureSpec, makeMeasureSpec2);
            } else {
                view.measure(makeMeasureSpec, makeMeasureSpec2);
            }
            brhVar.ba = makeMeasureSpec;
            brhVar.ar = makeMeasureSpec2;
            brhVar.cz = false;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int baseline2 = view.getBaseline();
            int i15 = brhVar.bl;
            max = i15 > 0 ? Math.max(i15, measuredWidth) : measuredWidth;
            int i16 = brhVar.bs;
            if (i16 > 0) {
                max = Math.min(i16, max);
            }
            int i17 = brhVar.cy;
            max2 = i17 > 0 ? Math.max(i17, measuredHeight) : measuredHeight;
            int i18 = makeMeasureSpec2;
            int i19 = brhVar.aw;
            if (i19 > 0) {
                max2 = Math.min(i19, max2);
            }
            if (!bff.x(constraintLayout.l, 1)) {
                if (z9 && z7) {
                    max = (int) ((max2 * brhVar.bq) + 0.5f);
                } else if (z10 && z8) {
                    max2 = (int) ((max / brhVar.bq) + 0.5f);
                }
            }
            if (measuredWidth == max && measuredHeight == max2) {
                baseline = baseline2;
            } else {
                if (measuredWidth != max) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, C.ENCODING_PCM_32BIT);
                }
                int makeMeasureSpec3 = measuredHeight != max2 ? View.MeasureSpec.makeMeasureSpec(max2, C.ENCODING_PCM_32BIT) : i18;
                view.measure(makeMeasureSpec, makeMeasureSpec3);
                brhVar.ba = makeMeasureSpec;
                brhVar.ar = makeMeasureSpec3;
                brhVar.cz = false;
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                max = measuredWidth2;
                max2 = measuredHeight2;
            }
            i = -1;
        }
        boolean z11 = baseline != i;
        dcuVar.f13987f = (max == dcuVar.i && max2 == dcuVar.f13983b) ? false : true;
        if (dnkVar.p) {
            z11 = true;
        }
        if (z11 && baseline != -1 && brhVar.bn != baseline) {
            dcuVar.f13987f = true;
        }
        dcuVar.f13984c = max;
        dcuVar.f13986e = max2;
        dcuVar.f13982a = z11;
        dcuVar.j = baseline;
    }
}
