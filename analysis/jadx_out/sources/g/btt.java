package g;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class btt extends Dialog implements iz, eud, gff {

    /* renamed from: e, reason: collision with root package name */
    public final androidx.activity.b f12197e;

    /* renamed from: f, reason: collision with root package name */
    public ajs f12198f;

    /* renamed from: g, reason: collision with root package name */
    public final dyr f12199g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public btt(Context context, int i) {
        super(context, i);
        bff.p(context, "context");
        this.f12199g = new dyr(this);
        this.f12197e = new androidx.activity.b(new fvi(10, this));
    }

    public static void h(btt bttVar) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        bff.p(view, "view");
        i();
        super.addContentView(view, layoutParams);
    }

    @Override // g.iz
    public final euu getLifecycle() {
        ajs ajsVar = this.f12198f;
        if (ajsVar != null) {
            return ajsVar;
        }
        ajs ajsVar2 = new ajs(this);
        this.f12198f = ajsVar2;
        return ajsVar2;
    }

    @Override // g.eud
    public final androidx.activity.b getOnBackPressedDispatcher() {
        return this.f12197e;
    }

    @Override // g.gff
    public final hbu getSavedStateRegistry() {
        return this.f12199g.f15097b;
    }

    public final void i() {
        Window window = getWindow();
        bff.d(window);
        View decorView = window.getDecorView();
        bff.e(decorView, "window!!.decorView");
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        Window window2 = getWindow();
        bff.d(window2);
        View decorView2 = window2.getDecorView();
        bff.e(decorView2, "window!!.decorView");
        decorView2.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        Window window3 = getWindow();
        bff.d(window3);
        View decorView3 = window3.getDecorView();
        bff.e(decorView3, "window!!.decorView");
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f12197e.j();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            bff.e(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            androidx.activity.b bVar = this.f12197e;
            bVar.getClass();
            bVar.f23b = onBackInvokedDispatcher;
            bVar.k(bVar.f28g);
        }
        this.f12199g.e(bundle);
        ajs ajsVar = this.f12198f;
        if (ajsVar == null) {
            ajsVar = new ajs(this);
            this.f12198f = ajsVar;
        }
        ajsVar.k(dtn.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        bff.e(onSaveInstanceState, "super.onSaveInstanceState()");
        this.f12199g.f(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        ajs ajsVar = this.f12198f;
        if (ajsVar == null) {
            ajsVar = new ajs(this);
            this.f12198f = ajsVar;
        }
        ajsVar.k(dtn.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        ajs ajsVar = this.f12198f;
        if (ajsVar == null) {
            ajsVar = new ajs(this);
            this.f12198f = ajsVar;
        }
        ajsVar.k(dtn.ON_DESTROY);
        this.f12198f = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        i();
        super.setContentView(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        bff.p(view, "view");
        i();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        bff.p(view, "view");
        i();
        super.setContentView(view, layoutParams);
    }
}
