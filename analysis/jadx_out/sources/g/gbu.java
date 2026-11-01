package g;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;

/* loaded from: classes.dex */
public final class gbu extends bdo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17876a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f17877b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gbu(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f17877b = actionMenuItemView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gbu(ena enaVar, ena enaVar2) {
        super(enaVar2);
        this.f17877b = enaVar;
    }

    @Override // g.bdo
    public final erj c() {
        csq csqVar;
        switch (this.f17876a) {
            case 0:
                pb pbVar = ((ActionMenuItemView) this.f17877b).k;
                if (pbVar == null || (csqVar = ((fhk) pbVar).f16794a.k) == null) {
                    return null;
                }
                return csqVar.m();
            default:
                csq csqVar2 = ((ena) this.f17877b).f15833d.t;
                if (csqVar2 == null) {
                    return null;
                }
                return csqVar2.m();
        }
    }

    @Override // g.bdo
    public final boolean d() {
        erj c2;
        switch (this.f17876a) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f17877b;
                dhl dhlVar = actionMenuItemView.f48f;
                return dhlVar != null && dhlVar.d(actionMenuItemView.h) && (c2 = c()) != null && c2.isShowing();
            default:
                ((ena) this.f17877b).f15833d.ag();
                return true;
        }
    }

    @Override // g.bdo
    public boolean n() {
        switch (this.f17876a) {
            case 1:
                esf esfVar = ((ena) this.f17877b).f15833d;
                if (esfVar.s != null) {
                    return false;
                }
                esfVar.ah();
                return true;
            default:
                return super.n();
        }
    }
}
