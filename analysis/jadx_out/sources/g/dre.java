package g;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.menu.ExpandedMenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class dre extends dkn implements egz, LayoutInflater.Factory2 {
    public int ae;
    public boolean af;
    public boolean ag;
    public cck ah;
    public dcq ai;
    public int aj;
    public hbq[] ak;
    public ActionBarContextView am;
    public eh an;
    public gkl ao;
    public boolean ap;
    public boolean aq;
    public final Object ar;
    public boolean as;
    public View at;
    public Window au;
    public boolean av;
    public final Context aw;
    public gtg ax;
    public boolean ay;
    public aoy az;
    public boolean ba;
    public boolean bb;
    public OnBackInvokedCallback bc;
    public int bd;
    public eaz be;
    public boolean bf;
    public boolean bg;
    public gkx bh;
    public boolean bi;
    public gyl bj;
    public TextView bk;
    public eh bl;
    public final Object bm;
    public PopupWindow bn;
    public hbq bo;
    public ViewGroup bq;
    public Configuration br;
    public boolean bs;
    public int bt;
    public boolean bu;
    public boolean bv;
    public CharSequence bw;
    public ecc bx;
    public Rect by;
    public OnBackInvokedDispatcher bz;
    public boolean ca;
    public Rect cb;
    public static final bcp ad = new bcp(0);
    public static final int[] ac = {R.attr.windowBackground};

    /* renamed from: ab, reason: collision with root package name */
    public static final boolean f14668ab = !"robolectric".equals(Build.FINGERPRINT);
    public elx al = null;
    public final gkx bp = new gkx(this, 0);

    public dre(Context context, Window window, yv yvVar, Object obj) {
        ub ubVar = null;
        this.bd = -100;
        this.aw = context;
        this.bm = yvVar;
        this.ar = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof ub)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        ubVar = (ub) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (ubVar != null) {
                this.bd = ((dre) ubVar.getDelegate()).bd;
            }
        }
        if (this.bd == -100) {
            String name = this.ar.getClass().getName();
            bcp bcpVar = ad;
            Integer num = (Integer) bcpVar.get(name);
            if (num != null) {
                this.bd = num.intValue();
                bcpVar.remove(this.ar.getClass().getName());
            }
        }
        if (window != null) {
            cu(window);
        }
        cfl.d();
    }

    public static Configuration cc(Context context, int i, azt aztVar, Configuration configuration, boolean z) {
        int i2 = i != 1 ? i != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (aztVar != null) {
            cmn cmnVar = aztVar.f11131b;
            if (Build.VERSION.SDK_INT >= 24) {
                alx.a(configuration2, aztVar);
                return configuration2;
            }
            configuration2.setLocale(cmnVar.get(0));
            configuration2.setLayoutDirection(cmnVar.get(0));
        }
        return configuration2;
    }

    public static azt cd(Context context) {
        azt aztVar;
        azt d2;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || (aztVar = dkn.f14318c) == null) {
            return null;
        }
        cmn cmnVar = aztVar.f11131b;
        azt ce = ce(context.getApplicationContext().getResources().getConfiguration());
        int i2 = 0;
        if (i < 24) {
            d2 = cmnVar.isEmpty() ? azt.f11130a : azt.d(cek.b(cmnVar.get(0)));
        } else if (cmnVar.isEmpty()) {
            d2 = azt.f11130a;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i2 < ce.f11131b.size() + cmnVar.size()) {
                Locale locale = i2 < cmnVar.size() ? cmnVar.get(i2) : ce.f11131b.get(i2 - cmnVar.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i2++;
            }
            d2 = azt.c((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return d2.f11131b.isEmpty() ? ce : d2;
    }

    public static azt ce(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? alx.c(configuration) : azt.d(cek.b(configuration.locale));
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r6.af() != false) goto L20;
     */
    @Override // g.egz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void _cj(ftn ftnVar) {
        ActionMenuView actionMenuView;
        esf esfVar;
        eaz eazVar = this.be;
        if (eazVar != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) eazVar;
            actionBarOverlayLayout.ah();
            Toolbar toolbar = ((fxu) actionBarOverlayLayout.r).h;
            if (toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f115ab) != null && actionMenuView.h) {
                if (ViewConfiguration.get(this.aw).hasPermanentMenuKey()) {
                    ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.be;
                    actionBarOverlayLayout2.ah();
                    ActionMenuView actionMenuView2 = ((fxu) actionBarOverlayLayout2.r).h.f115ab;
                    if (actionMenuView2 != null) {
                        esf esfVar2 = actionMenuView2.f82b;
                        if (esfVar2 != null) {
                            if (esfVar2.s == null) {
                            }
                        }
                    }
                }
                Window.Callback callback = this.au.getCallback();
                ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.be;
                actionBarOverlayLayout3.ah();
                if (((fxu) actionBarOverlayLayout3.r).h.ay()) {
                    ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.be;
                    actionBarOverlayLayout4.ah();
                    ActionMenuView actionMenuView3 = ((fxu) actionBarOverlayLayout4.r).h.f115ab;
                    if (actionMenuView3 != null && (esfVar = actionMenuView3.f82b) != null) {
                        esfVar.ah();
                    }
                    if (this.af) {
                        return;
                    }
                    callback.onPanelClosed(108, cv(0).f19184a);
                    return;
                }
                if (callback == null || this.af) {
                    return;
                }
                if (this.bu && (1 & this.ae) != 0) {
                    View decorView = this.au.getDecorView();
                    gkx gkxVar = this.bp;
                    decorView.removeCallbacks(gkxVar);
                    gkxVar.run();
                }
                hbq cv = cv(0);
                ftn ftnVar2 = cv.f19184a;
                if (ftnVar2 == null || cv.f19186c || !callback.onPreparePanel(0, cv.p, ftnVar2)) {
                    return;
                }
                callback.onMenuOpened(108, cv.f19184a);
                ActionBarOverlayLayout actionBarOverlayLayout5 = (ActionBarOverlayLayout) this.be;
                actionBarOverlayLayout5.ah();
                ((fxu) actionBarOverlayLayout5.r).h.bd();
                return;
            }
        }
        hbq cv2 = cv(0);
        cv2.f19187d = true;
        cy(cv2, false);
        co(cv2, null);
    }

    @Override // g.dkn
    public final void aa() {
        if (this.ao != null) {
            cj();
            if (this.ao._ae()) {
                return;
            }
            cg(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        if (r4.dispatchKeyEvent(r7) != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f0, code lost:
    
        if (r7.ah() != false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean cf(KeyEvent keyEvent) {
        View decorView;
        boolean z;
        boolean z2;
        AudioManager audioManager;
        ActionMenuView actionMenuView;
        Object obj = this.ar;
        if ((!(obj instanceof ekw) && !(obj instanceof aoz)) || (decorView = this.au.getDecorView()) == null || !acr.am(decorView, keyEvent)) {
            if (keyEvent.getKeyCode() == 82) {
                ecc eccVar = this.bx;
                Window.Callback callback = this.au.getCallback();
                eccVar.getClass();
                try {
                    eccVar.f15283b = true;
                } finally {
                    eccVar.f15283b = false;
                }
            }
            int keyCode = keyEvent.getKeyCode();
            if (keyEvent.getAction() == 0) {
                if (keyCode == 4) {
                    this.bs = (keyEvent.getFlags() & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
                    return false;
                }
                if (keyCode == 82) {
                    if (keyEvent.getRepeatCount() == 0) {
                        hbq cv = cv(0);
                        if (!cv.k) {
                            cn(cv, keyEvent);
                            return true;
                        }
                    }
                }
                return false;
            }
            if (keyCode != 4) {
                if (keyCode == 82) {
                    if (this.ax == null) {
                        hbq cv2 = cv(0);
                        eaz eazVar = this.be;
                        Context context = this.aw;
                        if (eazVar != null) {
                            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) eazVar;
                            actionBarOverlayLayout.ah();
                            Toolbar toolbar = ((fxu) actionBarOverlayLayout.r).h;
                            if (toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f115ab) != null && actionMenuView.h && !ViewConfiguration.get(context).hasPermanentMenuKey()) {
                                ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.be;
                                actionBarOverlayLayout2.ah();
                                if (((fxu) actionBarOverlayLayout2.r).h.ay()) {
                                    ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.be;
                                    actionBarOverlayLayout3.ah();
                                    ActionMenuView actionMenuView2 = ((fxu) actionBarOverlayLayout3.r).h.f115ab;
                                    if (actionMenuView2 != null) {
                                        esf esfVar = actionMenuView2.f82b;
                                        if (esfVar != null) {
                                        }
                                    }
                                } else if (!this.af && cn(cv2, keyEvent)) {
                                    ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.be;
                                    actionBarOverlayLayout4.ah();
                                    z = ((fxu) actionBarOverlayLayout4.r).h.bd();
                                    if (z && (audioManager = (AudioManager) context.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO)) != null) {
                                        audioManager.playSoundEffect(0);
                                        return true;
                                    }
                                }
                                z = false;
                                if (z) {
                                    audioManager.playSoundEffect(0);
                                    return true;
                                }
                            }
                        }
                        boolean z3 = cv2.k;
                        if (z3 || cv2.f19189f) {
                            cy(cv2, true);
                            z = z3;
                            if (z) {
                            }
                        } else {
                            if (cv2.f19185b) {
                                if (cv2.f19186c) {
                                    cv2.f19185b = false;
                                    z2 = cn(cv2, keyEvent);
                                } else {
                                    z2 = true;
                                }
                                if (z2) {
                                    co(cv2, keyEvent);
                                    z = true;
                                    if (z) {
                                    }
                                }
                            }
                            z = false;
                            if (z) {
                            }
                        }
                    }
                }
                return false;
            }
            if (!cr()) {
                return false;
            }
        }
        return true;
    }

    public final void cg(int i) {
        this.ae = (1 << i) | this.ae;
        if (this.bu) {
            return;
        }
        View decorView = this.au.getDecorView();
        WeakHashMap weakHashMap = goi.f18490c;
        decorView.postOnAnimation(this.bp);
        this.bu = true;
    }

    public final boolean ch(hbq hbqVar, int i, KeyEvent keyEvent) {
        ftn ftnVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((hbqVar.f19185b || cn(hbqVar, keyEvent)) && (ftnVar = hbqVar.f19184a) != null) {
            return ftnVar.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    public final void ci() {
        if (this.bg) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void cj() {
        ck();
        if (this.ay && this.ao == null) {
            Object obj = this.ar;
            if (obj instanceof Activity) {
                this.ao = new hp(this.ca, (Activity) obj);
            } else if (obj instanceof Dialog) {
                this.ao = new hp((Dialog) obj);
            }
            gkl gklVar = this.ao;
            if (gklVar != null) {
                gklVar.ad(this.ba);
            }
        }
    }

    public final void ck() {
        ViewGroup viewGroup;
        if (this.bg) {
            return;
        }
        Context context = this.aw;
        int[] iArr = acs.t;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            s(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            s(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            s(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            s(10);
        }
        this.bf = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        cm();
        this.au.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.av) {
            viewGroup = this.bv ? (ViewGroup) from.inflate(cn.trinea.android.developertools.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(cn.trinea.android.developertools.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.bf) {
            viewGroup = (ViewGroup) from.inflate(cn.trinea.android.developertools.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.ca = false;
            this.ay = false;
        } else if (this.ay) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new gzy(context, typedValue.resourceId) : context).inflate(cn.trinea.android.developertools.R.layout.abc_screen_toolbar, (ViewGroup) null);
            eaz eazVar = (eaz) viewGroup.findViewById(cn.trinea.android.developertools.R.id.decor_content_parent);
            this.be = eazVar;
            eazVar.setWindowCallback(this.au.getCallback());
            if (this.ca) {
                ((ActionBarOverlayLayout) this.be).ap(109);
            }
            if (this.aq) {
                ((ActionBarOverlayLayout) this.be).ap(2);
            }
            if (this.bb) {
                ((ActionBarOverlayLayout) this.be).ap(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.ay + ", windowActionBarOverlay: " + this.ca + ", android:windowIsFloating: " + this.bf + ", windowActionModeOverlay: " + this.bv + ", windowNoTitle: " + this.av + " }");
        }
        int i = 3;
        emr emrVar = new emr(i, this);
        WeakHashMap weakHashMap = goi.f18490c;
        cd.b(viewGroup, emrVar);
        if (this.be == null) {
            this.bk = (TextView) viewGroup.findViewById(cn.trinea.android.developertools.R.id.title);
        }
        boolean z = dnh.f14457a;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(cn.trinea.android.developertools.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.au.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.au.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new fnq(i, this));
        this.bq = viewGroup;
        Object obj = this.ar;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.bw;
        if (!TextUtils.isEmpty(title)) {
            eaz eazVar2 = this.be;
            if (eazVar2 != null) {
                eazVar2.setWindowTitle(title);
            } else {
                gkl gklVar = this.ao;
                if (gklVar != null) {
                    gklVar.ah(title);
                } else {
                    TextView textView = this.bk;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.bq.findViewById(R.id.content);
        View decorView = this.au.getDecorView();
        contentFrameLayout2.f97b.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (obtainStyledAttributes2.hasValue(122)) {
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.bg = true;
        hbq cv = cv(0);
        if (this.af || cv.f19184a != null) {
            return;
        }
        cg(108);
    }

    public final cgo cl(Context context) {
        if (this.an == null) {
            if (dzh.f15120a == null) {
                Context applicationContext = context.getApplicationContext();
                dzh.f15120a = new dzh(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.an = new eh(this, dzh.f15120a);
        }
        return this.an;
    }

    public final void cm() {
        if (this.au == null) {
            Object obj = this.ar;
            if (obj instanceof Activity) {
                cu(((Activity) obj).getWindow());
            }
        }
        if (this.au == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d5, code lost:
    
        if (r13.f19184a == null) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean cn(hbq hbqVar, KeyEvent keyEvent) {
        eaz eazVar;
        eaz eazVar2;
        Resources.Theme theme;
        eaz eazVar3;
        eaz eazVar4;
        if (!this.af) {
            boolean z = hbqVar.f19185b;
            int i = hbqVar.h;
            if (z) {
                return true;
            }
            hbq hbqVar2 = this.bo;
            if (hbqVar2 != null && hbqVar2 != hbqVar) {
                cy(hbqVar2, false);
            }
            Window.Callback callback = this.au.getCallback();
            if (callback != null) {
                hbqVar.p = callback.onCreatePanelView(i);
            }
            boolean z2 = i == 0 || i == 108;
            if (z2 && (eazVar4 = this.be) != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) eazVar4;
                actionBarOverlayLayout.ah();
                ((fxu) actionBarOverlayLayout.r).f17596f = true;
            }
            if (hbqVar.p == null && (!z2 || !(this.ao instanceof bbp))) {
                ftn ftnVar = hbqVar.f19184a;
                if (ftnVar == null || hbqVar.f19186c) {
                    if (ftnVar == null) {
                        Context context = this.aw;
                        if ((i == 0 || i == 108) && this.be != null) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme2 = context.getTheme();
                            theme2.resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                                theme.applyStyle(typedValue.resourceId, true);
                                theme.resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarWidgetTheme, typedValue, true);
                            } else {
                                theme2.resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarWidgetTheme, typedValue, true);
                                theme = null;
                            }
                            if (typedValue.resourceId != 0) {
                                if (theme == null) {
                                    theme = context.getResources().newTheme();
                                    theme.setTo(theme2);
                                }
                                theme.applyStyle(typedValue.resourceId, true);
                            }
                            if (theme != null) {
                                gzy gzyVar = new gzy(context, 0);
                                gzyVar.getTheme().setTo(theme);
                                context = gzyVar;
                            }
                        }
                        ftn ftnVar2 = new ftn(context);
                        ftnVar2.h = this;
                        ftn ftnVar3 = hbqVar.f19184a;
                        if (ftnVar2 != ftnVar3) {
                            if (ftnVar3 != null) {
                                ftnVar3.av(hbqVar.l);
                            }
                            hbqVar.f19184a = ftnVar2;
                            cuk cukVar = hbqVar.l;
                            if (cukVar != null) {
                                ftnVar2.ap(cukVar, ftnVar2.i);
                            }
                        }
                    }
                    if (z2 && (eazVar2 = this.be) != null) {
                        if (this.az == null) {
                            this.az = new aoy(this);
                        }
                        ((ActionBarOverlayLayout) eazVar2).aj(hbqVar.f19184a, this.az);
                    }
                    hbqVar.f19184a.aj();
                    if (callback.onCreatePanelMenu(i, hbqVar.f19184a)) {
                        hbqVar.f19186c = false;
                    } else {
                        ftn ftnVar4 = hbqVar.f19184a;
                        if (ftnVar4 != null) {
                            if (ftnVar4 != null) {
                                ftnVar4.av(hbqVar.l);
                            }
                            hbqVar.f19184a = null;
                        }
                        if (z2 && (eazVar = this.be) != null) {
                            ((ActionBarOverlayLayout) eazVar).aj(null, this.az);
                        }
                    }
                }
                hbqVar.f19184a.aj();
                Bundle bundle = hbqVar.j;
                if (bundle != null) {
                    hbqVar.f19184a.al(bundle);
                    hbqVar.j = null;
                }
                if (!callback.onPreparePanel(0, hbqVar.p, hbqVar.f19184a)) {
                    if (z2 && (eazVar3 = this.be) != null) {
                        ((ActionBarOverlayLayout) eazVar3).aj(null, this.az);
                    }
                    hbqVar.f19184a.ai();
                    return false;
                }
                hbqVar.f19184a.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
                hbqVar.f19184a.ai();
            }
            hbqVar.f19185b = true;
            hbqVar.f19189f = false;
            this.bo = hbqVar;
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0176, code lost:
    
        if (r2.n.getCount() > 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0156, code lost:
    
        if (r2 != null) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void co(hbq hbqVar, KeyEvent keyEvent) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        boolean z = hbqVar.k;
        int i2 = hbqVar.h;
        if (z || this.af) {
            return;
        }
        Context context = this.aw;
        if (i2 == 0 && (context.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callback = this.au.getCallback();
        if (callback != null && !callback.onMenuOpened(i2, hbqVar.f19184a)) {
            cy(hbqVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null || !cn(hbqVar, keyEvent)) {
            return;
        }
        bvz bvzVar = hbqVar.f19190g;
        if (bvzVar == null || hbqVar.f19187d) {
            if (bvzVar == null) {
                cj();
                gkl gklVar = this.ao;
                Context ae = gklVar != null ? gklVar.ae() : null;
                if (ae != null) {
                    context = ae;
                }
                TypedValue typedValue = new TypedValue();
                Resources.Theme newTheme = context.getResources().newTheme();
                newTheme.setTo(context.getTheme());
                newTheme.resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarPopupTheme, typedValue, true);
                int i3 = typedValue.resourceId;
                if (i3 != 0) {
                    newTheme.applyStyle(i3, true);
                }
                newTheme.resolveAttribute(cn.trinea.android.developertools.R.attr.panelMenuListTheme, typedValue, true);
                int i4 = typedValue.resourceId;
                if (i4 != 0) {
                    newTheme.applyStyle(i4, true);
                } else {
                    newTheme.applyStyle(2131952327, true);
                }
                gzy gzyVar = new gzy(context, 0);
                gzyVar.getTheme().setTo(newTheme);
                hbqVar.n = gzyVar;
                TypedArray obtainStyledAttributes = gzyVar.obtainStyledAttributes(acs.t);
                hbqVar.m = obtainStyledAttributes.getResourceId(86, 0);
                hbqVar.f19188e = obtainStyledAttributes.getResourceId(1, 0);
                obtainStyledAttributes.recycle();
                hbqVar.f19190g = new bvz(this, hbqVar.n);
                hbqVar.o = 81;
            } else if (hbqVar.f19187d && bvzVar.getChildCount() > 0) {
                hbqVar.f19190g.removeAllViews();
            }
            View view = hbqVar.p;
            if (view == null) {
                if (hbqVar.f19184a != null) {
                    if (this.ai == null) {
                        this.ai = new dcq(4, this);
                    }
                    dcq dcqVar = this.ai;
                    if (hbqVar.l == null) {
                        cuk cukVar = new cuk(hbqVar.n);
                        hbqVar.l = cukVar;
                        cukVar.k = dcqVar;
                        ftn ftnVar = hbqVar.f19184a;
                        ftnVar.ap(cukVar, ftnVar.i);
                    }
                    cuk cukVar2 = hbqVar.l;
                    bvz bvzVar2 = hbqVar.f19190g;
                    if (cukVar2.j == null) {
                        cukVar2.j = (ExpandedMenuView) cukVar2.m.inflate(cn.trinea.android.developertools.R.layout.abc_expanded_menu_layout, (ViewGroup) bvzVar2, false);
                        if (cukVar2.n == null) {
                            cukVar2.n = new aih(cukVar2);
                        }
                        cukVar2.j.setAdapter((ListAdapter) cukVar2.n);
                        cukVar2.j.setOnItemClickListener(cukVar2);
                    }
                    ExpandedMenuView expandedMenuView = cukVar2.j;
                    hbqVar.i = expandedMenuView;
                }
                hbqVar.f19187d = true;
                return;
            }
            hbqVar.i = view;
            if (hbqVar.i != null) {
                if (hbqVar.p == null) {
                    cuk cukVar3 = hbqVar.l;
                    if (cukVar3.n == null) {
                        cukVar3.n = new aih(cukVar3);
                    }
                }
                ViewGroup.LayoutParams layoutParams2 = hbqVar.i.getLayoutParams();
                if (layoutParams2 == null) {
                    layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
                }
                hbqVar.f19190g.setBackgroundResource(hbqVar.m);
                ViewParent parent = hbqVar.i.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(hbqVar.i);
                }
                hbqVar.f19190g.addView(hbqVar.i, layoutParams2);
                if (!hbqVar.i.hasFocus()) {
                    hbqVar.i.requestFocus();
                }
            }
            hbqVar.f19187d = true;
            return;
        }
        View view2 = hbqVar.p;
        if (view2 != null && (layoutParams = view2.getLayoutParams()) != null && layoutParams.width == -1) {
            i = -1;
            hbqVar.f19189f = false;
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
            layoutParams3.gravity = hbqVar.o;
            layoutParams3.windowAnimations = hbqVar.f19188e;
            windowManager.addView(hbqVar.f19190g, layoutParams3);
            hbqVar.k = true;
            if (i2 != 0) {
                cw();
                return;
            }
            return;
        }
        i = -2;
        hbqVar.f19189f = false;
        WindowManager.LayoutParams layoutParams32 = new WindowManager.LayoutParams(i, -2, 0, 0, 1002, 8519680, -3);
        layoutParams32.gravity = hbqVar.o;
        layoutParams32.windowAnimations = hbqVar.f19188e;
        windowManager.addView(hbqVar.f19190g, layoutParams32);
        hbqVar.k = true;
        if (i2 != 0) {
        }
    }

    public final void cp(int i, hbq hbqVar, ftn ftnVar) {
        if (ftnVar == null) {
            if (hbqVar == null && i >= 0) {
                hbq[] hbqVarArr = this.ak;
                if (i < hbqVarArr.length) {
                    hbqVar = hbqVarArr[i];
                }
            }
            if (hbqVar != null) {
                ftnVar = hbqVar.f19184a;
            }
        }
        if ((hbqVar == null || hbqVar.k) && !this.af) {
            ecc eccVar = this.bx;
            Window.Callback callback = this.au.getCallback();
            eccVar.getClass();
            try {
                eccVar.f15284c = true;
                callback.onPanelClosed(i, ftnVar);
            } finally {
                eccVar.f15284c = false;
            }
        }
    }

    public final void cq(ftn ftnVar) {
        esf esfVar;
        if (this.ap) {
            return;
        }
        this.ap = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.be;
        actionBarOverlayLayout.ah();
        ActionMenuView actionMenuView = ((fxu) actionBarOverlayLayout.r).h.f115ab;
        if (actionMenuView != null && (esfVar = actionMenuView.f82b) != null) {
            esfVar.ah();
            csq csqVar = esfVar.k;
            if (csqVar != null && csqVar.n()) {
                csqVar.f12458g.dismiss();
            }
        }
        Window.Callback callback = this.au.getCallback();
        if (callback != null && !this.af) {
            callback.onPanelClosed(108, ftnVar);
        }
        this.ap = false;
    }

    public final boolean cr() {
        boolean z = this.bs;
        this.bs = false;
        hbq cv = cv(0);
        if (!cv.k) {
            gtg gtgVar = this.ax;
            if (gtgVar != null) {
                gtgVar.m();
                return true;
            }
            cj();
            gkl gklVar = this.ao;
            if (gklVar == null || !gklVar.ak()) {
                return false;
            }
        } else if (!z) {
            cy(cv, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0209 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fd A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean cs(boolean z, boolean z2) {
        int i;
        Configuration configuration;
        azt ce;
        int i2;
        boolean z3;
        azt aztVar;
        boolean z4;
        boolean z5;
        int i3;
        Activity activity;
        boolean z6;
        Field declaredField;
        Field field;
        Map map;
        boolean z7;
        Field declaredField2;
        Field field2;
        Object obj;
        Object obj2;
        Object obj3;
        Activity activity2;
        if (this.af) {
            return false;
        }
        int i4 = this.bd;
        if (i4 == -100) {
            i4 = dkn.h;
        }
        int i5 = i4;
        Context context = this.aw;
        int cx = cx(context, i5);
        int i6 = Build.VERSION.SDK_INT;
        azt cd = i6 < 33 ? cd(context) : null;
        if (!z2 && cd != null) {
            cd = ce(context.getResources().getConfiguration());
        }
        Configuration cc = cc(context, cx, cd, null, false);
        boolean z8 = this.bi;
        Object obj4 = this.ar;
        if (!z8 && (obj4 instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i = 0;
                configuration = this.br;
                if (configuration == null) {
                    configuration = context.getResources().getConfiguration();
                }
                int i7 = configuration.uiMode & 48;
                int i8 = cc.uiMode & 48;
                azt ce2 = ce(configuration);
                ce = cd != null ? null : ce(cc);
                i2 = i7 == i8 ? 512 : 0;
                if (ce != null && !ce2.equals(ce)) {
                    i2 |= 8196;
                }
                if (((~i) & i2) != 0 && z && this.as && ((f14668ab || this.ag) && (obj4 instanceof Activity))) {
                    activity2 = (Activity) obj4;
                    if (!activity2.isChild()) {
                        int i9 = Build.VERSION.SDK_INT;
                        if (i9 >= 31 && (i2 & 8192) != 0) {
                            activity2.getWindow().getDecorView().setLayoutDirection(cc.getLayoutDirection());
                        }
                        if (i9 >= 28) {
                            activity2.recreate();
                        } else {
                            new Handler(activity2.getMainLooper()).post(new fvi(0, activity2));
                        }
                        z3 = true;
                        if (!z3 || i2 == 0) {
                            aztVar = ce;
                            z4 = z3;
                        } else {
                            boolean z9 = (i & i2) == i2;
                            Resources resources = context.getResources();
                            Configuration configuration2 = new Configuration(resources.getConfiguration());
                            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i8;
                            if (ce != null) {
                                cmn cmnVar = ce.f11131b;
                                if (Build.VERSION.SDK_INT >= 24) {
                                    alx.a(configuration2, ce);
                                } else {
                                    configuration2.setLocale(cmnVar.get(0));
                                    configuration2.setLayoutDirection(cmnVar.get(0));
                                }
                            }
                            resources.updateConfiguration(configuration2, null);
                            int i10 = Build.VERSION.SDK_INT;
                            if (i10 < 26 && i10 < 28) {
                                if (i10 >= 24) {
                                    if (!acr.f9988a) {
                                        try {
                                            Field declaredField3 = Resources.class.getDeclaredField("mResourcesImpl");
                                            acr.f9992e = declaredField3;
                                            declaredField3.setAccessible(true);
                                        } catch (NoSuchFieldException e2) {
                                            Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
                                        }
                                        acr.f9988a = true;
                                    }
                                    Field field3 = acr.f9992e;
                                    if (field3 != null) {
                                        try {
                                            obj2 = field3.get(resources);
                                        } catch (IllegalAccessException e3) {
                                            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
                                            obj2 = null;
                                        }
                                        if (obj2 != null) {
                                            if (!acr.v) {
                                                try {
                                                    Field declaredField4 = obj2.getClass().getDeclaredField("mDrawableCache");
                                                    acr.o = declaredField4;
                                                    declaredField4.setAccessible(true);
                                                } catch (NoSuchFieldException e4) {
                                                    Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
                                                }
                                                acr.v = true;
                                            }
                                            Field field4 = acr.o;
                                            if (field4 != null) {
                                                try {
                                                    obj3 = field4.get(obj2);
                                                } catch (IllegalAccessException e5) {
                                                    Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
                                                }
                                                if (obj3 != null) {
                                                    acr.at(obj3);
                                                }
                                            }
                                            obj3 = null;
                                            if (obj3 != null) {
                                            }
                                        }
                                    }
                                } else {
                                    z5 = z9;
                                    aztVar = ce;
                                    if (i10 >= 23) {
                                        if (!acr.v) {
                                            try {
                                                declaredField2 = Resources.class.getDeclaredField("mDrawableCache");
                                                acr.o = declaredField2;
                                                z7 = true;
                                            } catch (NoSuchFieldException e6) {
                                                e = e6;
                                                z7 = true;
                                            }
                                            try {
                                                declaredField2.setAccessible(true);
                                            } catch (NoSuchFieldException e7) {
                                                e = e7;
                                                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
                                                acr.v = z7;
                                                field2 = acr.o;
                                                if (field2 != null) {
                                                }
                                                obj = null;
                                                if (obj != null) {
                                                }
                                                i3 = this.bt;
                                                if (i3 != 0) {
                                                }
                                                if (z5) {
                                                }
                                                z4 = true;
                                                if (z4) {
                                                }
                                                if (aztVar != null) {
                                                }
                                                if (i5 == 0) {
                                                }
                                                if (i5 == 3) {
                                                }
                                                return z4;
                                            }
                                            acr.v = z7;
                                        }
                                        field2 = acr.o;
                                        if (field2 != null) {
                                            try {
                                                obj = field2.get(resources);
                                            } catch (IllegalAccessException e8) {
                                                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e8);
                                            }
                                            if (obj != null) {
                                                acr.at(obj);
                                            }
                                        }
                                        obj = null;
                                        if (obj != null) {
                                        }
                                    } else {
                                        if (!acr.v) {
                                            try {
                                                declaredField = Resources.class.getDeclaredField("mDrawableCache");
                                                acr.o = declaredField;
                                                z6 = true;
                                            } catch (NoSuchFieldException e9) {
                                                e = e9;
                                                z6 = true;
                                            }
                                            try {
                                                declaredField.setAccessible(true);
                                            } catch (NoSuchFieldException e10) {
                                                e = e10;
                                                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
                                                acr.v = z6;
                                                field = acr.o;
                                                if (field != null) {
                                                }
                                                i3 = this.bt;
                                                if (i3 != 0) {
                                                }
                                                if (z5) {
                                                }
                                                z4 = true;
                                                if (z4) {
                                                }
                                                if (aztVar != null) {
                                                }
                                                if (i5 == 0) {
                                                }
                                                if (i5 == 3) {
                                                }
                                                return z4;
                                            }
                                            acr.v = z6;
                                        }
                                        field = acr.o;
                                        if (field != null) {
                                            try {
                                                map = (Map) field.get(resources);
                                            } catch (IllegalAccessException e11) {
                                                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e11);
                                                map = null;
                                            }
                                            if (map != null) {
                                                map.clear();
                                            }
                                        }
                                    }
                                    i3 = this.bt;
                                    if (i3 != 0) {
                                        context.setTheme(i3);
                                        if (Build.VERSION.SDK_INT >= 23) {
                                            context.getTheme().applyStyle(this.bt, true);
                                            if (z5 && (obj4 instanceof Activity)) {
                                                activity = (Activity) obj4;
                                                if (activity instanceof iz) {
                                                    if (this.ag && !this.af) {
                                                        activity.onConfigurationChanged(configuration2);
                                                    }
                                                } else if (((ajs) ((iz) activity).getLifecycle()).f10342g.b(fqv.CREATED)) {
                                                    activity.onConfigurationChanged(configuration2);
                                                }
                                            }
                                            z4 = true;
                                        }
                                    }
                                    if (z5) {
                                        activity = (Activity) obj4;
                                        if (activity instanceof iz) {
                                        }
                                    }
                                    z4 = true;
                                }
                            }
                            z5 = z9;
                            aztVar = ce;
                            i3 = this.bt;
                            if (i3 != 0) {
                            }
                            if (z5) {
                            }
                            z4 = true;
                        }
                        if (z4 && (obj4 instanceof ub)) {
                            if ((i2 & 512) != 0) {
                                ((ub) obj4).onNightModeChanged(cx);
                            }
                            if ((i2 & 4) != 0) {
                                ((ub) obj4).onLocalesChanged(cd);
                            }
                        }
                        if (aztVar != null) {
                            azt ce3 = ce(context.getResources().getConfiguration());
                            if (Build.VERSION.SDK_INT >= 24) {
                                alx.d(ce3);
                            } else {
                                Locale.setDefault(ce3.f11131b.get(0));
                            }
                        }
                        if (i5 == 0) {
                            cl(context).ah();
                        } else {
                            eh ehVar = this.an;
                            if (ehVar != null) {
                                ehVar.ag();
                            }
                        }
                        if (i5 == 3) {
                            if (this.bl == null) {
                                this.bl = new eh(this, context);
                            }
                            this.bl.ah();
                        } else {
                            eh ehVar2 = this.bl;
                            if (ehVar2 != null) {
                                ehVar2.ag();
                            }
                        }
                        return z4;
                    }
                }
                z3 = false;
                if (z3) {
                }
                aztVar = ce;
                z4 = z3;
                if (z4) {
                    if ((i2 & 512) != 0) {
                    }
                    if ((i2 & 4) != 0) {
                    }
                }
                if (aztVar != null) {
                }
                if (i5 == 0) {
                }
                if (i5 == 3) {
                }
                return z4;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj4.getClass()), i6 >= 29 ? 269221888 : i6 >= 24 ? 786432 : 0);
                if (activityInfo != null) {
                    this.aj = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                this.aj = 0;
            }
        }
        this.bi = true;
        i = this.aj;
        configuration = this.br;
        if (configuration == null) {
        }
        int i72 = configuration.uiMode & 48;
        int i82 = cc.uiMode & 48;
        azt ce22 = ce(configuration);
        if (cd != null) {
        }
        if (i72 == i82) {
        }
        if (ce != null) {
            i2 |= 8196;
        }
        if (((~i) & i2) != 0) {
            activity2 = (Activity) obj4;
            if (!activity2.isChild()) {
            }
        }
        z3 = false;
        if (z3) {
        }
        aztVar = ce;
        z4 = z3;
        if (z4) {
        }
        if (aztVar != null) {
        }
        if (i5 == 0) {
        }
        if (i5 == 3) {
        }
        return z4;
    }

    public final void ct(int i) {
        hbq cv = cv(i);
        if (cv.f19184a != null) {
            Bundle bundle = new Bundle();
            cv.f19184a.as(bundle);
            if (bundle.size() > 0) {
                cv.j = bundle;
            }
            cv.f19184a.aj();
            cv.f19184a.clear();
        }
        cv.f19186c = true;
        cv.f19187d = true;
        if ((i == 108 || i == 0) && this.be != null) {
            hbq cv2 = cv(0);
            cv2.f19185b = false;
            cn(cv2, null);
        }
    }

    public final void cu(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.au != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof ecc) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        ecc eccVar = new ecc(this, callback);
        this.bx = eccVar;
        window.setCallback(eccVar);
        Context context = this.aw;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, ac);
        if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawable = null;
        } else {
            cfl f2 = cfl.f();
            synchronized (f2) {
                drawable = f2.f12790c.x(context, resourceId, true);
            }
        }
        if (drawable != null) {
            window.setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.au = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.bz) != null) {
            return;
        }
        Object obj = this.ar;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.bc) != null) {
            hdi.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.bc = null;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.bz = hdi.a(activity);
                cw();
            }
        }
        this.bz = null;
        cw();
    }

    public final hbq cv(int i) {
        hbq[] hbqVarArr = this.ak;
        if (hbqVarArr == null || hbqVarArr.length <= i) {
            hbq[] hbqVarArr2 = new hbq[i + 1];
            if (hbqVarArr != null) {
                System.arraycopy(hbqVarArr, 0, hbqVarArr2, 0, hbqVarArr.length);
            }
            this.ak = hbqVarArr2;
            hbqVarArr = hbqVarArr2;
        }
        hbq hbqVar = hbqVarArr[i];
        if (hbqVar != null) {
            return hbqVar;
        }
        hbq hbqVar2 = new hbq();
        hbqVar2.h = i;
        hbqVar2.f19187d = false;
        hbqVarArr[i] = hbqVar2;
        return hbqVar2;
    }

    public final void cw() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.bz != null && (cv(0).k || this.ax != null)) {
                z = true;
            }
            if (z && this.bc == null) {
                this.bc = hdi.b(this.bz, this);
            } else {
                if (z || (onBackInvokedCallback = this.bc) == null) {
                    return;
                }
                hdi.c(this.bz, onBackInvokedCallback);
                this.bc = null;
            }
        }
    }

    public final int cx(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 1 && i != 2) {
                        if (i != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.bl == null) {
                            this.bl = new eh(this, context);
                        }
                        return this.bl.f();
                    }
                } else if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return cl(context).f();
                }
            }
            return i;
        }
        return -1;
    }

    public final void cy(hbq hbqVar, boolean z) {
        bvz bvzVar;
        eaz eazVar;
        if (z && hbqVar.h == 0 && (eazVar = this.be) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) eazVar;
            actionBarOverlayLayout.ah();
            if (((fxu) actionBarOverlayLayout.r).h.ay()) {
                cq(hbqVar.f19184a);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.aw.getSystemService("window");
        if (windowManager != null && hbqVar.k && (bvzVar = hbqVar.f19190g) != null) {
            windowManager.removeView(bvzVar);
            if (z) {
                cp(hbqVar.h, hbqVar, null);
            }
        }
        hbqVar.f19185b = false;
        hbqVar.f19189f = false;
        hbqVar.k = false;
        hbqVar.i = null;
        hbqVar.f19187d = true;
        if (this.bo == hbqVar) {
            this.bo = null;
        }
        if (hbqVar.h == 0) {
            cw();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:64:0x01bc
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.LayoutInflater.Factory2
    public final android.view.View onCreateView(android.view.View r9, java.lang.String r10, android.content.Context r11, android.util.AttributeSet r12) {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.dre.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // g.egz
    public final boolean p(ftn ftnVar, MenuItem menuItem) {
        hbq hbqVar;
        Window.Callback callback = this.au.getCallback();
        if (callback != null && !this.af) {
            ftn aa = ftnVar.aa();
            hbq[] hbqVarArr = this.ak;
            int length = hbqVarArr != null ? hbqVarArr.length : 0;
            int i = 0;
            while (true) {
                if (i < length) {
                    hbqVar = hbqVarArr[i];
                    if (hbqVar != null && hbqVar.f19184a == aa) {
                        break;
                    }
                    i++;
                } else {
                    hbqVar = null;
                    break;
                }
            }
            if (hbqVar != null) {
                return callback.onMenuItemSelected(hbqVar.h, menuItem);
            }
        }
        return false;
    }

    @Override // g.dkn
    public final boolean s(int i) {
        if (i == 8) {
            i = 108;
        } else if (i == 9) {
            i = 109;
        }
        if (this.av && i == 108) {
            return false;
        }
        if (this.ay && i == 1) {
            this.ay = false;
        }
        if (i == 1) {
            ci();
            this.av = true;
            return true;
        }
        if (i == 2) {
            ci();
            this.aq = true;
            return true;
        }
        if (i == 5) {
            ci();
            this.bb = true;
            return true;
        }
        if (i == 10) {
            ci();
            this.bv = true;
            return true;
        }
        if (i == 108) {
            ci();
            this.ay = true;
            return true;
        }
        if (i != 109) {
            return this.au.requestFeature(i);
        }
        ci();
        this.ca = true;
        return true;
    }

    @Override // g.dkn
    public final void t(View view) {
        ck();
        ViewGroup viewGroup = (ViewGroup) this.bq.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.bx.h(this.au.getCallback());
    }

    @Override // g.dkn
    public final void u(CharSequence charSequence) {
        this.bw = charSequence;
        eaz eazVar = this.be;
        if (eazVar != null) {
            eazVar.setWindowTitle(charSequence);
            return;
        }
        gkl gklVar = this.ao;
        if (gklVar != null) {
            gklVar.ah(charSequence);
            return;
        }
        TextView textView = this.bk;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // g.dkn
    public final void v(View view, ViewGroup.LayoutParams layoutParams) {
        ck();
        ViewGroup viewGroup = (ViewGroup) this.bq.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.bx.h(this.au.getCallback());
    }

    @Override // g.dkn
    public final void w() {
        String str;
        this.as = true;
        cs(false, true);
        cm();
        Object obj = this.ar;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = ckd.ac(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new IllegalArgumentException(e2);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                gkl gklVar = this.ao;
                if (gklVar == null) {
                    this.ba = true;
                } else {
                    gklVar.ad(true);
                }
            }
            synchronized (dkn.f14316a) {
                dkn.o(this);
                dkn.f14317b.add(new WeakReference(this));
            }
        }
        this.br = new Configuration(this.aw.getResources().getConfiguration());
        this.ag = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // g.dkn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x() {
        gkl gklVar;
        eh ehVar;
        eh ehVar2;
        if (this.ar instanceof Activity) {
            synchronized (dkn.f14316a) {
                dkn.o(this);
            }
        }
        if (this.bu) {
            this.au.getDecorView().removeCallbacks(this.bp);
        }
        this.af = true;
        if (this.bd != -100) {
            Object obj = this.ar;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                ad.put(this.ar.getClass().getName(), Integer.valueOf(this.bd));
                gklVar = this.ao;
                if (gklVar != null) {
                    gklVar.i();
                }
                ehVar = this.an;
                if (ehVar != null) {
                    ehVar.ag();
                }
                ehVar2 = this.bl;
                if (ehVar2 == null) {
                    ehVar2.ag();
                    return;
                }
                return;
            }
        }
        ad.remove(this.ar.getClass().getName());
        gklVar = this.ao;
        if (gklVar != null) {
        }
        ehVar = this.an;
        if (ehVar != null) {
        }
        ehVar2 = this.bl;
        if (ehVar2 == null) {
        }
    }

    @Override // g.dkn
    public final void y(int i) {
        ck();
        ViewGroup viewGroup = (ViewGroup) this.bq.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.aw).inflate(i, viewGroup);
        this.bx.h(this.au.getCallback());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /* JADX WARN: Type inference failed for: r2v0, types: [g.yv, java.lang.Object] */
    @Override // g.dkn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final gtg z(dbn dbnVar) {
        gtg onWindowStartingSupportActionMode;
        ViewGroup viewGroup;
        gtg gtgVar;
        if (dbnVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        gtg gtgVar2 = this.ax;
        if (gtgVar2 != null) {
            gtgVar2.m();
        }
        clx clxVar = new clx(this, 2, dbnVar);
        cj();
        gkl gklVar = this.ao;
        ?? r2 = this.bm;
        if (gklVar != null) {
            gtg al = gklVar.al(clxVar);
            this.ax = al;
            if (al != null) {
                r2.onSupportActionModeStarted(al);
            }
        }
        if (this.ax == null) {
            elx elxVar = this.al;
            if (elxVar != null) {
                elxVar.e();
            }
            gtg gtgVar3 = this.ax;
            if (gtgVar3 != null) {
                gtgVar3.m();
            }
            if (!this.af) {
                try {
                    onWindowStartingSupportActionMode = r2.onWindowStartingSupportActionMode(clxVar);
                } catch (AbstractMethodError unused) {
                }
                if (onWindowStartingSupportActionMode == null) {
                    this.ax = onWindowStartingSupportActionMode;
                } else {
                    int i = 1;
                    if (this.am == null) {
                        boolean z = this.bf;
                        Context context = this.aw;
                        if (z) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                Resources.Theme newTheme = context.getResources().newTheme();
                                newTheme.setTo(theme);
                                newTheme.applyStyle(typedValue.resourceId, true);
                                gzy gzyVar = new gzy(context, 0);
                                gzyVar.getTheme().setTo(newTheme);
                                context = gzyVar;
                            }
                            this.am = new ActionBarContextView(context, null);
                            PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, cn.trinea.android.developertools.R.attr.actionModePopupWindowStyle);
                            this.bn = popupWindow;
                            byh.ag(popupWindow, 2);
                            this.bn.setContentView(this.am);
                            this.bn.setWidth(-1);
                            context.getTheme().resolveAttribute(cn.trinea.android.developertools.R.attr.actionBarSize, typedValue, true);
                            this.am.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                            this.bn.setHeight(-2);
                            this.bh = new gkx(this, i);
                        } else {
                            ViewStubCompat viewStubCompat = (ViewStubCompat) this.bq.findViewById(cn.trinea.android.developertools.R.id.action_mode_bar_stub);
                            if (viewStubCompat != null) {
                                cj();
                                gkl gklVar2 = this.ao;
                                Context ae = gklVar2 != null ? gklVar2.ae() : null;
                                if (ae != null) {
                                    context = ae;
                                }
                                viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                                this.am = (ActionBarContextView) viewStubCompat.e();
                            }
                        }
                    }
                    if (this.am != null) {
                        elx elxVar2 = this.al;
                        if (elxVar2 != null) {
                            elxVar2.e();
                        }
                        this.am.aa();
                        Context context2 = this.am.getContext();
                        ActionBarContextView actionBarContextView = this.am;
                        fsn fsnVar = new fsn();
                        fsnVar.f17340c = context2;
                        fsnVar.f17341d = actionBarContextView;
                        fsnVar.f17342e = clxVar;
                        ftn ftnVar = new ftn(actionBarContextView.getContext());
                        ftnVar.f17396g = 1;
                        fsnVar.f17338a = ftnVar;
                        ftnVar.h = fsnVar;
                        if (((dbn) clxVar.f13103e).p(fsnVar, ftnVar)) {
                            fsnVar.u();
                            this.am.ac(fsnVar);
                            this.ax = fsnVar;
                            if (this.bg && (viewGroup = this.bq) != null && viewGroup.isLaidOut()) {
                                this.am.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                                elx o = goi.o(this.am);
                                o.d(1.0f);
                                this.al = o;
                                o.b(new gof(i, this));
                            } else {
                                this.am.setAlpha(1.0f);
                                this.am.setVisibility(0);
                                if (this.am.getParent() instanceof View) {
                                    View view = (View) this.am.getParent();
                                    WeakHashMap weakHashMap = goi.f18490c;
                                    dzc.c(view);
                                }
                            }
                            if (this.bn != null) {
                                this.au.getDecorView().post(this.bh);
                            }
                        } else {
                            this.ax = null;
                        }
                    }
                }
                gtgVar = this.ax;
                if (gtgVar != null) {
                    r2.onSupportActionModeStarted(gtgVar);
                }
                cw();
                this.ax = this.ax;
            }
            onWindowStartingSupportActionMode = null;
            if (onWindowStartingSupportActionMode == null) {
            }
            gtgVar = this.ax;
            if (gtgVar != null) {
            }
            cw();
            this.ax = this.ax;
        }
        cw();
        return this.ax;
    }
}
