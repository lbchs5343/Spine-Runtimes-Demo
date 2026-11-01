package g;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class ev implements bwb, yt {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16212a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16213b;

    public /* synthetic */ ev(int i, Object obj) {
        this.f16213b = obj;
        this.f16212a = i;
    }

    @Override // g.yt
    public boolean c(View view) {
        SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f16213b;
        int i = this.f16212a;
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(awf.ad(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        WeakReference weakReference = sideSheetBehavior.aa;
        if (weakReference == null || weakReference.get() == null) {
            sideSheetBehavior.an(i);
            return true;
        }
        View view2 = (View) sideSheetBehavior.aa.get();
        cdl cdlVar = new cdl(sideSheetBehavior, i, 3);
        ViewParent parent = view2.getParent();
        if (parent != null && parent.isLayoutRequested() && view2.isAttachedToWindow()) {
            view2.post(cdlVar);
            return true;
        }
        cdlVar.run();
        return true;
    }

    @Override // g.bwb
    public void d(ArrayList arrayList) {
        gwf gwfVar = (gwf) this.f16213b;
        if (gwfVar.f18873g) {
            if (this.f16212a == gwfVar.f18867a) {
                gwfVar.i.d(arrayList);
            }
        }
    }
}
