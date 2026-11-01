package g;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class fhv implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16813a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16814b;

    public /* synthetic */ fhv(int i, Object obj) {
        this.f16813a = i;
        this.f16814b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.f16813a) {
            case 0:
                erv ervVar = (erv) this.f16814b;
                if (!ervVar.getInternalPopup().isShowing()) {
                    ervVar.i.b(ervVar.getTextDirection(), ervVar.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = ervVar.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                    break;
                }
                break;
            case 1:
                cox coxVar = (cox) this.f16814b;
                erv ervVar2 = coxVar.at;
                coxVar.getClass();
                if (!ervVar2.isAttachedToWindow() || !ervVar2.getGlobalVisibleRect(coxVar.ar)) {
                    coxVar.dismiss();
                    break;
                } else {
                    coxVar.av();
                    coxVar.show();
                    break;
                }
                break;
            case 2:
                ezq ezqVar = (ezq) this.f16814b;
                ArrayList arrayList = ezqVar.i;
                if (ezqVar.isShowing() && arrayList.size() > 0 && !((czb) arrayList.get(0)).f13800a.t) {
                    View view = ezqVar.o;
                    if (view != null && view.isShown()) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((czb) it.next()).f13800a.show();
                        }
                        break;
                    } else {
                        ezqVar.dismiss();
                        break;
                    }
                }
                break;
            case 3:
                elf elfVar = (elf) this.f16814b;
                if (elfVar.o && !elfVar.z && !elfVar.x) {
                    elfVar.ag();
                    elfVar.o = false;
                    break;
                }
                break;
            default:
                ctb ctbVar = (ctb) this.f16814b;
                alt altVar = ctbVar.i;
                if (ctbVar.isShowing() && !altVar.t) {
                    View view2 = ctbVar.z;
                    if (view2 != null && view2.isShown()) {
                        altVar.show();
                        break;
                    } else {
                        ctbVar.dismiss();
                        break;
                    }
                }
                break;
        }
    }
}
