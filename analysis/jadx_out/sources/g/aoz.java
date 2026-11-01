package g;

import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class aoz extends btt implements yv {

    /* renamed from: a, reason: collision with root package name */
    public dre f10598a;

    /* renamed from: b, reason: collision with root package name */
    public final bob f10599b;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v2, types: [g.bob] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public aoz(ContextThemeWrapper contextThemeWrapper, int i) {
        super(contextThemeWrapper, r2);
        int i2;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        } else {
            i2 = i;
        }
        this.f10599b = new ekw() { // from class: g.bob
            @Override // g.ekw
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return aoz.this.c(keyEvent);
            }
        };
        dkn d2 = d();
        if (i == 0) {
            TypedValue typedValue2 = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i = typedValue2.resourceId;
        }
        ((dre) d2).bt = i;
        d2.w();
    }

    @Override // g.btt, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i();
        dre dreVar = (dre) d();
        dreVar.ck();
        ((ViewGroup) dreVar.bq.findViewById(android.R.id.content)).addView(view, layoutParams);
        dreVar.bx.h(dreVar.au.getCallback());
    }

    public final boolean c(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public final dkn d() {
        if (this.f10598a == null) {
            aqv aqvVar = dkn.f14321f;
            this.f10598a = new dre(getContext(), getWindow(), this, this);
        }
        return this.f10598a;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        d().x();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return acr.ag(this.f10599b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public final View findViewById(int i) {
        dre dreVar = (dre) d();
        dreVar.ck();
        return dreVar.au.findViewById(i);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        d().aa();
    }

    @Override // g.btt, android.app.Dialog
    public void onCreate(Bundle bundle) {
        dre dreVar = (dre) d();
        LayoutInflater from = LayoutInflater.from(dreVar.aw);
        if (from.getFactory() == null) {
            from.setFactory2(dreVar);
        } else {
            from.getFactory2();
        }
        super.onCreate(bundle);
        d().w();
    }

    @Override // g.btt, android.app.Dialog
    public final void onStop() {
        super.onStop();
        dre dreVar = (dre) d();
        dreVar.cj();
        gkl gklVar = dreVar.ao;
        if (gklVar != null) {
            gklVar.ab(false);
        }
    }

    @Override // g.yv
    public final void onSupportActionModeFinished(gtg gtgVar) {
    }

    @Override // g.yv
    public final void onSupportActionModeStarted(gtg gtgVar) {
    }

    @Override // g.yv
    public final gtg onWindowStartingSupportActionMode(dbn dbnVar) {
        return null;
    }

    @Override // g.btt, android.app.Dialog
    public final void setContentView(int i) {
        i();
        d().y(i);
    }

    @Override // g.btt, android.app.Dialog
    public final void setContentView(View view) {
        i();
        d().t(view);
    }

    @Override // g.btt, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i();
        d().v(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        d().u(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        d().u(charSequence);
    }
}
