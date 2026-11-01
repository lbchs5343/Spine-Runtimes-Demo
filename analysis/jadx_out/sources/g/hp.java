package g;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class hp extends gkl implements frm {
    public fps _ab;
    public Context _ac;
    public boolean _ad;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19383c;

    /* renamed from: d, reason: collision with root package name */
    public clx f19384d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19385e;

    /* renamed from: f, reason: collision with root package name */
    public int f19386f;

    /* renamed from: g, reason: collision with root package name */
    public ActionBarContainer f19387g;
    public boolean h;
    public final dbx l;
    public final dbx m;
    public ActionBarContextView n;
    public wj o;
    public boolean p;
    public final ArrayList q;
    public btx r;
    public Context s;
    public btx t;
    public boolean u;
    public boolean v;
    public ActionBarOverlayLayout w;
    public final emr x;
    public final View y;
    public boolean z;

    /* renamed from: b, reason: collision with root package name */
    public static final AccelerateInterpolator f19382b = new AccelerateInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public static final DecelerateInterpolator f19381a = new DecelerateInterpolator();

    public hp(Dialog dialog) {
        new ArrayList();
        this.q = new ArrayList();
        this.f19386f = 0;
        this.f19385e = true;
        this.z = true;
        this.l = new dbx(this, 0);
        this.m = new dbx(this, 1);
        this.x = new emr(19, this);
        ag(dialog.getWindow().getDecorView());
    }

    public hp(boolean z, Activity activity) {
        new ArrayList();
        this.q = new ArrayList();
        this.f19386f = 0;
        this.f19385e = true;
        this.z = true;
        this.l = new dbx(this, 0);
        this.m = new dbx(this, 1);
        this.x = new emr(19, this);
        View decorView = activity.getWindow().getDecorView();
        ag(decorView);
        if (z) {
            return;
        }
        this.y = decorView.findViewById(R.id.content);
    }

    @Override // g.gkl
    public final void aa(CharSequence charSequence) {
        ((fxu) this._ab).r(charSequence);
    }

    @Override // g.gkl
    public final void ab(boolean z) {
        wj wjVar;
        this.v = z;
        if (z || (wjVar = this.o) == null) {
            return;
        }
        wjVar.g();
    }

    @Override // g.gkl
    public final int ac() {
        return ((fxu) this._ab).l;
    }

    @Override // g.gkl
    public final void ad(boolean z) {
        if (this.f19383c) {
            return;
        }
        ai(z);
    }

    @Override // g.gkl
    public final Context ae() {
        if (this.s == null) {
            TypedValue typedValue = new TypedValue();
            this._ac.getTheme().resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.s = new ContextThemeWrapper(this._ac, i);
            } else {
                this.s = this._ac;
            }
        }
        return this.s;
    }

    public final void af(boolean z) {
        boolean z2 = this.p;
        boolean z3 = this.u;
        emr emrVar = this.x;
        View view = this.y;
        int i = 1;
        if (!z3 && z2) {
            if (this.z) {
                this.z = false;
                wj wjVar = this.o;
                if (wjVar != null) {
                    wjVar.g();
                }
                int i2 = this.f19386f;
                dbx dbxVar = this.l;
                if (i2 != 0 || (!this.v && !z)) {
                    dbxVar.bp();
                    return;
                }
                this.f19387g.setAlpha(1.0f);
                this.f19387g.setTransitioning(true);
                wj wjVar2 = new wj();
                float f2 = -this.f19387g.getHeight();
                if (z) {
                    this.f19387g.getLocationInWindow(new int[]{0, 0});
                    f2 -= r12[1];
                }
                elx o = goi.o(this.f19387g);
                o.c(f2);
                View view2 = (View) o.f15782a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(emrVar != null ? new gml(emrVar, i, view2) : null);
                }
                boolean z4 = wjVar2.f20214b;
                ArrayList arrayList = wjVar2.f20215c;
                if (!z4) {
                    arrayList.add(o);
                }
                if (this.f19385e && view != null) {
                    elx o2 = goi.o(view);
                    o2.c(f2);
                    if (!wjVar2.f20214b) {
                        arrayList.add(o2);
                    }
                }
                boolean z5 = wjVar2.f20214b;
                if (!z5) {
                    wjVar2.f20218f = f19382b;
                }
                if (!z5) {
                    wjVar2.f20217e = 250L;
                }
                if (!z5) {
                    wjVar2.f20213a = dbxVar;
                }
                this.o = wjVar2;
                wjVar2.h();
                return;
            }
            return;
        }
        if (this.z) {
            return;
        }
        this.z = true;
        wj wjVar3 = this.o;
        if (wjVar3 != null) {
            wjVar3.g();
        }
        this.f19387g.setVisibility(0);
        int i3 = this.f19386f;
        dbx dbxVar2 = this.m;
        if (i3 == 0 && (this.v || z)) {
            this.f19387g.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            float f3 = -this.f19387g.getHeight();
            if (z) {
                this.f19387g.getLocationInWindow(new int[]{0, 0});
                f3 -= r12[1];
            }
            this.f19387g.setTranslationY(f3);
            wj wjVar4 = new wj();
            elx o3 = goi.o(this.f19387g);
            o3.c(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            View view3 = (View) o3.f15782a.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(emrVar != null ? new gml(emrVar, i, view3) : null);
            }
            boolean z6 = wjVar4.f20214b;
            ArrayList arrayList2 = wjVar4.f20215c;
            if (!z6) {
                arrayList2.add(o3);
            }
            if (this.f19385e && view != null) {
                view.setTranslationY(f3);
                elx o4 = goi.o(view);
                o4.c(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                if (!wjVar4.f20214b) {
                    arrayList2.add(o4);
                }
            }
            boolean z7 = wjVar4.f20214b;
            if (!z7) {
                wjVar4.f20218f = f19381a;
            }
            if (!z7) {
                wjVar4.f20217e = 250L;
            }
            if (!z7) {
                wjVar4.f20213a = dbxVar2;
            }
            this.o = wjVar4;
            wjVar4.h();
        } else {
            this.f19387g.setAlpha(1.0f);
            this.f19387g.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            if (this.f19385e && view != null) {
                view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
            dbxVar2.bp();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.w;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = goi.f18490c;
            dzc.c(actionBarOverlayLayout);
        }
    }

    public final void ag(View view) {
        fps wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(cn.trinea.android.developertools.R.id.decor_content_parent);
        this.w = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(cn.trinea.android.developertools.R.id.action_bar);
        if (findViewById instanceof fps) {
            wrapper = (fps) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) findViewById).getWrapper();
        }
        this._ab = wrapper;
        this.n = (ActionBarContextView) view.findViewById(cn.trinea.android.developertools.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(cn.trinea.android.developertools.R.id.action_bar_container);
        this.f19387g = actionBarContainer;
        fps fpsVar = this._ab;
        if (fpsVar == null || this.n == null || actionBarContainer == null) {
            throw new IllegalStateException(hp.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((fxu) fpsVar).h.getContext();
        this._ac = context;
        if ((((fxu) this._ab).l & 4) != 0) {
            this.f19383c = true;
        }
        int i = context.getApplicationInfo().targetSdkVersion;
        this._ab.getClass();
        am(context.getResources().getBoolean(cn.trinea.android.developertools.R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this._ac.obtainStyledAttributes(null, acs.j, cn.trinea.android.developertools.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.w;
            if (!actionBarOverlayLayout2.f80g) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this._ad = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f19387g;
            WeakHashMap weakHashMap = goi.f18490c;
            cd.k(actionBarContainer2, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // g.gkl
    public final void ah(CharSequence charSequence) {
        fxu fxuVar = (fxu) this._ab;
        if (fxuVar.o) {
            return;
        }
        Toolbar toolbar = fxuVar.h;
        fxuVar.f17591a = charSequence;
        if ((fxuVar.l & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (fxuVar.o) {
                goi.r(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // g.gkl
    public final void ai(boolean z) {
        int i = z ? 4 : 0;
        fxu fxuVar = (fxu) this._ab;
        int i2 = fxuVar.l;
        this.f19383c = true;
        fxuVar.q((i & 4) | (i2 & (-5)));
    }

    @Override // g.gkl
    public final boolean aj(int i, KeyEvent keyEvent) {
        ftn ftnVar;
        btx btxVar = this.r;
        if (btxVar == null || (ftnVar = btxVar.f12204c) == null) {
            return false;
        }
        ftnVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return ftnVar.performShortcut(i, keyEvent, 0);
    }

    @Override // g.gkl
    public final boolean ak() {
        glz glzVar;
        fps fpsVar = this._ab;
        if (fpsVar == null || (glzVar = ((fxu) fpsVar).h.ak) == null || glzVar.k == null) {
            return false;
        }
        glz glzVar2 = ((fxu) fpsVar).h.ak;
        far farVar = glzVar2 == null ? null : glzVar2.k;
        if (farVar == null) {
            return true;
        }
        farVar.collapseActionView();
        return true;
    }

    @Override // g.gkl
    public final gtg al(clx clxVar) {
        btx btxVar = this.r;
        if (btxVar != null) {
            btxVar.m();
        }
        this.w.setHideOnContentScrollEnabled(false);
        this.n.aa();
        btx btxVar2 = new btx(this, this.n.getContext(), clxVar);
        ftn ftnVar = btxVar2.f12204c;
        ftnVar.aj();
        try {
            if (!((dbn) btxVar2.f12205d.f13103e).p(btxVar2, ftnVar)) {
                return null;
            }
            this.r = btxVar2;
            btxVar2.u();
            this.n.ac(btxVar2);
            ap(true);
            return btxVar2;
        } finally {
            ftnVar.ai();
        }
    }

    public final void am(boolean z) {
        if (z) {
            this.f19387g.setTabContainer(null);
            ((fxu) this._ab).getClass();
        } else {
            ((fxu) this._ab).getClass();
            this.f19387g.setTabContainer(null);
        }
        this._ab.getClass();
        ((fxu) this._ab).h.setCollapsible(false);
        this.w.setHasNonEmbeddedTabs(false);
    }

    @Override // g.gkl
    public final void an(boolean z) {
        if (z == this.h) {
            return;
        }
        this.h = z;
        ArrayList arrayList = this.q;
        if (arrayList.size() > 0) {
            throw tn.w(0, arrayList);
        }
    }

    @Override // g.gkl
    public final void ao() {
        am(this._ac.getResources().getBoolean(cn.trinea.android.developertools.R.bool.abc_action_bar_embed_tabs));
    }

    public final void ap(boolean z) {
        elx ab2;
        elx elxVar;
        if (z) {
            if (!this.u) {
                this.u = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.w;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                af(false);
            }
        } else if (this.u) {
            this.u = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.w;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            af(false);
        }
        if (!this.f19387g.isLaidOut()) {
            if (z) {
                ((fxu) this._ab).h.setVisibility(4);
                this.n.setVisibility(0);
                return;
            } else {
                ((fxu) this._ab).h.setVisibility(0);
                this.n.setVisibility(8);
                return;
            }
        }
        if (z) {
            fxu fxuVar = (fxu) this._ab;
            ab2 = goi.o(fxuVar.h);
            ab2.d(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ab2.f(100L);
            ab2.b(new ezf(fxuVar, 4));
            elxVar = this.n.ab(0, 200L);
        } else {
            fxu fxuVar2 = (fxu) this._ab;
            elx o = goi.o(fxuVar2.h);
            o.d(1.0f);
            o.f(200L);
            o.b(new ezf(fxuVar2, 0));
            ab2 = this.n.ab(8, 100L);
            elxVar = o;
        }
        wj wjVar = new wj();
        ArrayList arrayList = wjVar.f20215c;
        arrayList.add(ab2);
        View view = (View) ab2.f15782a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) elxVar.f15782a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(elxVar);
        wjVar.h();
    }
}
