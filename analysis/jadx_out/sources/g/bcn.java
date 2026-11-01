package g;

import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class bcn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11283a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11284b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11285c;

    /* renamed from: d, reason: collision with root package name */
    public final CopyOnWriteArrayList f11286d;

    /* renamed from: e, reason: collision with root package name */
    public fgb f11287e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bcn(int i, Object obj) {
        this(true);
        this.f11283a = i;
        this.f11284b = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bcn(Object obj, int i, boolean z) {
        this(false);
        this.f11283a = i;
        this.f11284b = obj;
    }

    public bcn(boolean z) {
        this.f11285c = z;
        this.f11286d = new CopyOnWriteArrayList();
    }

    public final void f() {
        switch (this.f11283a) {
            case 0:
                fyx fyxVar = (fyx) this.f11284b;
                a.a.ab abVar = fyxVar.webView;
                if (abVar != null && abVar.canGoBack()) {
                    fyxVar.webView.goBack();
                    return;
                }
                g(false);
                fyxVar.onBackPressed();
                g(true);
                return;
            case 1:
                eso esoVar = (eso) this.f11284b;
                if (esoVar.e()) {
                    return;
                }
                g(false);
                try {
                    esoVar.onBackPressed();
                    return;
                } finally {
                    g(true);
                }
            case 2:
                efx efxVar = (efx) this.f11284b;
                efxVar.an.setText("");
                efxVar.an.clearFocus();
                efxVar.an.removeCallbacks(efxVar.aq);
                g(false);
                try {
                    efxVar.getOnBackPressedDispatcher().j();
                    return;
                } finally {
                    g(true);
                }
            case 3:
                ((Runnable) this.f11284b).run();
                return;
            case 4:
                androidx.fragment.app.v vVar = (androidx.fragment.app.v) this.f11284b;
                vVar.ci(true);
                if (vVar.f210b.f11285c) {
                    vVar.au();
                    return;
                } else {
                    vVar.al.j();
                    return;
                }
            case 5:
                baq baqVar = (baq) this.f11284b;
                if (baqVar.x.isEmpty()) {
                    baqVar.as();
                    return;
                } else {
                    baqVar.ao((he) baqVar.x.pop(), true);
                    return;
                }
            default:
                ((edx) this.f11284b).as();
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [g.cvw, g.fgb] */
    public final void g(boolean z) {
        this.f11285c = z;
        ?? r1 = this.f11287e;
        if (r1 != 0) {
            r1.invoke();
        }
    }
}
