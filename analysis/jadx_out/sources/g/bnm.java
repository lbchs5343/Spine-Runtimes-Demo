package g;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public final class bnm extends eg {
    public final /* synthetic */ int at;
    public final /* synthetic */ dip au;

    public /* synthetic */ bnm(dip dipVar, int i) {
        this.at = i;
        this.au = dipVar;
    }

    @Override // g.eg
    public final void aj(int i) {
        switch (this.at) {
            case 0:
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.au;
                    if (bottomSheetBehavior.an) {
                        bottomSheetBehavior.cd(1);
                        break;
                    }
                }
                break;
            default:
                if (i == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.au;
                    if (sideSheetBehavior.ai) {
                        sideSheetBehavior.an(1);
                        break;
                    }
                }
                break;
        }
    }

    @Override // g.eg
    public final int ak(int i, View view) {
        switch (this.at) {
            case 0:
                return view.getLeft();
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.au;
                return dzm.af(i, sideSheetBehavior.v.bh(), sideSheetBehavior.v.bp());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0028, code lost:
    
        if (r0.v.bj(r6) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        if (java.lang.Math.abs(r7 - r0.v.br()) < java.lang.Math.abs(r7 - r0.v.bm())) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0080, code lost:
    
        if (r7 > r0.bo) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d0, code lost:
    
        if (java.lang.Math.abs(r6.getTop() - r0.cm()) < java.lang.Math.abs(r6.getTop() - r0.bo)) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x011b, code lost:
    
        if (java.lang.Math.abs(r7 - r0.ai) < java.lang.Math.abs(r7 - r0.x)) goto L29;
     */
    @Override // g.eg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void al(View view, float f2, float f3) {
        int i;
        switch (this.at) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.au;
                int i2 = 6;
                if (f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    if (!bottomSheetBehavior.ba) {
                        int top = view.getTop();
                        SystemClock.uptimeMillis();
                        bottomSheetBehavior.getClass();
                        break;
                    }
                    i2 = 3;
                    bottomSheetBehavior.getClass();
                    bottomSheetBehavior.cl(view, i2, true);
                    break;
                } else if (bottomSheetBehavior.bn && bottomSheetBehavior.cc(view, f3)) {
                    if (Math.abs(f2) >= Math.abs(f3) || f3 <= bottomSheetBehavior.f9004ab) {
                        if (view.getTop() <= (bottomSheetBehavior.cm() + bottomSheetBehavior.z) / 2) {
                            if (!bottomSheetBehavior.ba) {
                                break;
                            }
                            i2 = 3;
                            bottomSheetBehavior.getClass();
                            bottomSheetBehavior.cl(view, i2, true);
                        }
                    }
                    i2 = 5;
                    bottomSheetBehavior.getClass();
                    bottomSheetBehavior.cl(view, i2, true);
                } else {
                    if (f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || Math.abs(f2) > Math.abs(f3)) {
                        int top2 = view.getTop();
                        if (bottomSheetBehavior.ba) {
                            break;
                        } else {
                            int i3 = bottomSheetBehavior.bo;
                            if (top2 < i3) {
                                if (top2 >= Math.abs(top2 - bottomSheetBehavior.x)) {
                                    bottomSheetBehavior.getClass();
                                }
                                i2 = 3;
                            } else {
                                if (Math.abs(top2 - i3) < Math.abs(top2 - bottomSheetBehavior.x)) {
                                    bottomSheetBehavior.getClass();
                                }
                                i2 = 4;
                            }
                        }
                    } else {
                        if (!bottomSheetBehavior.ba) {
                            int top3 = view.getTop();
                            if (Math.abs(top3 - bottomSheetBehavior.bo) < Math.abs(top3 - bottomSheetBehavior.x)) {
                                bottomSheetBehavior.getClass();
                            }
                        }
                        i2 = 4;
                    }
                    bottomSheetBehavior.getClass();
                    bottomSheetBehavior.cl(view, i2, true);
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.au;
                if (!sideSheetBehavior.v.bo(f2)) {
                    if (sideSheetBehavior.v.bn(view, f2)) {
                        if (!sideSheetBehavior.v.bi(f2, f3)) {
                            break;
                        }
                        i = 5;
                    } else {
                        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || Math.abs(f2) <= Math.abs(f3)) {
                            int left = view.getLeft();
                            break;
                        }
                        i = 5;
                    }
                    sideSheetBehavior.am(view, i, true);
                    break;
                }
                i = 3;
                sideSheetBehavior.am(view, i, true);
                break;
        }
    }

    @Override // g.eg
    public final void am(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.at) {
            case 0:
                ((BottomSheetBehavior) this.au).cb(i2);
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.au;
                WeakReference weakReference = sideSheetBehavior.af;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.v.bg(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.w;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.v.bf(i);
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw tn.c(it);
                }
                return;
        }
    }

    @Override // g.eg
    public final int an(int i, View view) {
        switch (this.at) {
            case 0:
                return dzm.af(i, ((BottomSheetBehavior) this.au).cm(), ar());
            default:
                return view.getTop();
        }
    }

    @Override // g.eg
    public int ap(View view) {
        switch (this.at) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.au;
                return sideSheetBehavior.t + sideSheetBehavior.q;
            default:
                return super.ap(view);
        }
    }

    @Override // g.eg
    public int ar() {
        switch (this.at) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.au;
                return bottomSheetBehavior.bn ? bottomSheetBehavior.z : bottomSheetBehavior.x;
            default:
                return super.ar();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0045, code lost:
    
        if (r5.canScrollVertically(-1) != false) goto L36;
     */
    @Override // g.eg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean as(int i, View view) {
        WeakReference weakReference;
        switch (this.at) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.au;
                int i2 = bottomSheetBehavior.w;
                if (i2 != 1 && !bottomSheetBehavior.y) {
                    if (i2 == 3 && bottomSheetBehavior.aw == i) {
                        WeakReference weakReference2 = bottomSheetBehavior.am;
                        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
                        if (view2 != null) {
                            break;
                        }
                    }
                    SystemClock.uptimeMillis();
                    WeakReference weakReference3 = bottomSheetBehavior.ap;
                    if (weakReference3 == null || weakReference3.get() != view) {
                    }
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.au;
                if (sideSheetBehavior.f9069b != 1 && (weakReference = sideSheetBehavior.aa) != null && weakReference.get() == view) {
                }
                break;
        }
        return false;
    }
}
