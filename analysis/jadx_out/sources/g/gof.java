package g;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class gof extends byh {
    public final /* synthetic */ Object bn;
    public final /* synthetic */ int bo;

    public /* synthetic */ gof(int i, Object obj) {
        this.bo = i;
        this.bn = obj;
    }

    @Override // g.byh, g.gig
    public void bk() {
        int i = this.bo;
        Object obj = this.bn;
        switch (i) {
            case 0:
                ((gkx) obj).f18330b.am.setVisibility(0);
                break;
            case 1:
                dre dreVar = (dre) obj;
                dreVar.am.setVisibility(0);
                if (dreVar.am.getParent() instanceof View) {
                    View view = (View) dreVar.am.getParent();
                    WeakHashMap weakHashMap = goi.f18490c;
                    dzc.c(view);
                    break;
                }
                break;
        }
    }

    @Override // g.gig
    public final void bp() {
        int i = this.bo;
        Object obj = this.bn;
        switch (i) {
            case 0:
                dre dreVar = ((gkx) obj).f18330b;
                dreVar.am.setAlpha(1.0f);
                dreVar.al.b(null);
                dreVar.al = null;
                break;
            case 1:
                dre dreVar2 = (dre) obj;
                dreVar2.am.setAlpha(1.0f);
                dreVar2.al.b(null);
                dreVar2.al = null;
                break;
            default:
                dre dreVar3 = (dre) ((clx) obj).f13101c;
                dreVar3.am.setVisibility(8);
                PopupWindow popupWindow = dreVar3.bn;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (dreVar3.am.getParent() instanceof View) {
                    View view = (View) dreVar3.am.getParent();
                    WeakHashMap weakHashMap = goi.f18490c;
                    dzc.c(view);
                }
                dreVar3.am.aa();
                dreVar3.al.b(null);
                dreVar3.al = null;
                ViewGroup viewGroup = dreVar3.bq;
                WeakHashMap weakHashMap2 = goi.f18490c;
                dzc.c(viewGroup);
                break;
        }
    }
}
