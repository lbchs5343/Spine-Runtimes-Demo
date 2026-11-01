package g;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class ub extends androidx.fragment.app.u implements yv, bym {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private dkn mDelegate;
    private Resources mResources;

    public ub() {
        getSavedStateRegistry().j(DELEGATE_TAG, new bbn(this));
        addOnContextAvailableListener(new gyh(this));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        dre dreVar = (dre) getDelegate();
        dreVar.ck();
        ((ViewGroup) dreVar.bq.findViewById(R.id.content)).addView(view, layoutParams);
        dreVar.bx.h(dreVar.au.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, com.bytedance.pangle.activity.IPluginActivity
    public void attachBaseContext(Context context) {
        Configuration configuration;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        dre dreVar = (dre) getDelegate();
        dreVar.as = true;
        int i9 = dreVar.bd;
        if (i9 == -100) {
            i9 = dkn.h;
        }
        int cx = dreVar.cx(context, i9);
        if (dkn.k(context)) {
            dkn.r(context);
        }
        azt cd = dre.cd(context);
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(dre.cc(context, cx, cd, null, false));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof gzy) {
            try {
                ((gzy) context).g(dre.cc(context, cx, cd, null, false));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (dre.f14668ab) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (configuration3.equals(configuration4)) {
                configuration = null;
            } else {
                configuration = new Configuration();
                configuration.fontScale = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (configuration3.diff(configuration4) != 0) {
                    float f2 = configuration3.fontScale;
                    float f3 = configuration4.fontScale;
                    if (f2 != f3) {
                        configuration.fontScale = f3;
                    }
                    int i10 = configuration3.mcc;
                    int i11 = configuration4.mcc;
                    if (i10 != i11) {
                        configuration.mcc = i11;
                    }
                    int i12 = configuration3.mnc;
                    int i13 = configuration4.mnc;
                    if (i12 != i13) {
                        configuration.mnc = i13;
                    }
                    int i14 = Build.VERSION.SDK_INT;
                    if (i14 >= 24) {
                        alx.b(configuration3, configuration4, configuration);
                    } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                        configuration.locale = configuration4.locale;
                    }
                    int i15 = configuration3.touchscreen;
                    int i16 = configuration4.touchscreen;
                    if (i15 != i16) {
                        configuration.touchscreen = i16;
                    }
                    int i17 = configuration3.keyboard;
                    int i18 = configuration4.keyboard;
                    if (i17 != i18) {
                        configuration.keyboard = i18;
                    }
                    int i19 = configuration3.keyboardHidden;
                    int i20 = configuration4.keyboardHidden;
                    if (i19 != i20) {
                        configuration.keyboardHidden = i20;
                    }
                    int i21 = configuration3.navigation;
                    int i22 = configuration4.navigation;
                    if (i21 != i22) {
                        configuration.navigation = i22;
                    }
                    int i23 = configuration3.navigationHidden;
                    int i24 = configuration4.navigationHidden;
                    if (i23 != i24) {
                        configuration.navigationHidden = i24;
                    }
                    int i25 = configuration3.orientation;
                    int i26 = configuration4.orientation;
                    if (i25 != i26) {
                        configuration.orientation = i26;
                    }
                    int i27 = configuration3.screenLayout & 15;
                    int i28 = configuration4.screenLayout & 15;
                    if (i27 != i28) {
                        configuration.screenLayout |= i28;
                    }
                    int i29 = configuration3.screenLayout & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT;
                    int i30 = configuration4.screenLayout & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT;
                    if (i29 != i30) {
                        configuration.screenLayout |= i30;
                    }
                    int i31 = configuration3.screenLayout & 48;
                    int i32 = configuration4.screenLayout & 48;
                    if (i31 != i32) {
                        configuration.screenLayout |= i32;
                    }
                    int i33 = configuration3.screenLayout & 768;
                    int i34 = configuration4.screenLayout & 768;
                    if (i33 != i34) {
                        configuration.screenLayout |= i34;
                    }
                    if (i14 >= 26) {
                        i = configuration3.colorMode;
                        int i35 = i & 3;
                        i2 = configuration4.colorMode;
                        if (i35 != (i2 & 3)) {
                            i7 = configuration.colorMode;
                            i8 = configuration4.colorMode;
                            configuration.colorMode = i7 | (i8 & 3);
                        }
                        i3 = configuration3.colorMode;
                        int i36 = i3 & 12;
                        i4 = configuration4.colorMode;
                        if (i36 != (i4 & 12)) {
                            i5 = configuration.colorMode;
                            i6 = configuration4.colorMode;
                            configuration.colorMode = i5 | (i6 & 12);
                        }
                    }
                    int i37 = configuration3.uiMode & 15;
                    int i38 = configuration4.uiMode & 15;
                    if (i37 != i38) {
                        configuration.uiMode |= i38;
                    }
                    int i39 = configuration3.uiMode & 48;
                    int i40 = configuration4.uiMode & 48;
                    if (i39 != i40) {
                        configuration.uiMode |= i40;
                    }
                    int i41 = configuration3.screenWidthDp;
                    int i42 = configuration4.screenWidthDp;
                    if (i41 != i42) {
                        configuration.screenWidthDp = i42;
                    }
                    int i43 = configuration3.screenHeightDp;
                    int i44 = configuration4.screenHeightDp;
                    if (i43 != i44) {
                        configuration.screenHeightDp = i44;
                    }
                    int i45 = configuration3.smallestScreenWidthDp;
                    int i46 = configuration4.smallestScreenWidthDp;
                    if (i45 != i46) {
                        configuration.smallestScreenWidthDp = i46;
                    }
                    int i47 = configuration3.densityDpi;
                    int i48 = configuration4.densityDpi;
                    if (i47 != i48) {
                        configuration.densityDpi = i48;
                    }
                }
            }
            Configuration cc = dre.cc(context, cx, cd, configuration, true);
            gzy gzyVar = new gzy(context, cn.trinea.android.developertools.R.style.Theme_AppCompat_Empty);
            gzyVar.g(cc);
            try {
                if (context.getTheme() != null) {
                    Resources.Theme theme = gzyVar.getTheme();
                    int i49 = Build.VERSION.SDK_INT;
                    if (i49 >= 29) {
                        agl.c(theme);
                    } else if (i49 >= 23) {
                        synchronized (baf.n) {
                            if (!baf.p) {
                                try {
                                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                    baf.o = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                } catch (NoSuchMethodException unused3) {
                                }
                                baf.p = true;
                            }
                            Method method = baf.o;
                            if (method != null) {
                                try {
                                    method.invoke(theme, null);
                                } catch (IllegalAccessException | InvocationTargetException unused4) {
                                    baf.o = null;
                                }
                            }
                        }
                    }
                }
            } catch (NullPointerException unused5) {
            }
            context = gzyVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        gkl supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.k()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // g.emf, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        gkl supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar._af(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        dre dreVar = (dre) getDelegate();
        dreVar.ck();
        return (T) dreVar.au.findViewById(i);
    }

    public dkn getDelegate() {
        if (this.mDelegate == null) {
            aqv aqvVar = dkn.f14321f;
            this.mDelegate = new dre(this, null, this, this);
        }
        return this.mDelegate;
    }

    public eqj getDrawerToggleDelegate() {
        ((dre) getDelegate()).getClass();
        return new dwm(24);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        dre dreVar = (dre) getDelegate();
        if (dreVar.ah == null) {
            dreVar.cj();
            gkl gklVar = dreVar.ao;
            dreVar.ah = new cck(gklVar != null ? gklVar.ae() : dreVar.aw);
        }
        return dreVar.ah;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.mResources;
        if (resources == null) {
            int i = awp.f10986a;
        }
        return resources == null ? super.getResources() : resources;
    }

    public gkl getSupportActionBar() {
        dre dreVar = (dre) getDelegate();
        dreVar.cj();
        return dreVar.ao;
    }

    @Override // g.bym
    public Intent getSupportParentActivityIntent() {
        return ckd.av(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().aa();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        dre dreVar = (dre) getDelegate();
        if (dreVar.ay && dreVar.bg) {
            dreVar.cj();
            gkl gklVar = dreVar.ao;
            if (gklVar != null) {
                gklVar.ao();
            }
        }
        cfl f2 = cfl.f();
        Context context = dreVar.aw;
        synchronized (f2) {
            f2.f12790c.p(context);
        }
        dreVar.br = new Configuration(dreVar.aw.getResources().getConfiguration());
        dreVar.cs(false, false);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(cst cstVar) {
        ArrayList arrayList = cstVar.f13452a;
        ub ubVar = cstVar.f13453b;
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = ckd.av(this);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(ubVar.getPackageManager());
            }
            int size = arrayList.size();
            try {
                for (Intent v = ckd.v(ubVar, component); v != null; v = ckd.v(ubVar, v.getComponent())) {
                    arrayList.add(size, v);
                }
                arrayList.add(supportParentActivityIntent);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e2);
            }
        }
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().x();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    public void onLocalesChanged(azt aztVar) {
    }

    @Override // androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        gkl supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.ac() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    public void onNightModeChanged(int i) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((dre) getDelegate()).ck();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        dre dreVar = (dre) getDelegate();
        dreVar.cj();
        gkl gklVar = dreVar.ao;
        if (gklVar != null) {
            gklVar.ab(true);
        }
    }

    public void onPrepareSupportNavigateUpTaskStack(cst cstVar) {
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onStart() {
        super.onStart();
        ((dre) getDelegate()).cs(true, false);
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onStop() {
        super.onStop();
        dre dreVar = (dre) getDelegate();
        dreVar.cj();
        gkl gklVar = dreVar.ao;
        if (gklVar != null) {
            gklVar.ab(false);
        }
    }

    @Override // g.yv
    public void onSupportActionModeFinished(gtg gtgVar) {
    }

    @Override // g.yv
    public void onSupportActionModeStarted(gtg gtgVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        cst cstVar = new cst(this);
        onCreateSupportNavigateUpTaskStack(cstVar);
        onPrepareSupportNavigateUpTaskStack(cstVar);
        ArrayList arrayList = cstVar.f13452a;
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        cstVar.f13453b.startActivities(intentArr, null);
        try {
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().u(charSequence);
    }

    @Override // g.yv
    public gtg onWindowStartingSupportActionMode(dbn dbnVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        gkl supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.j()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        initializeViewTreeOwners();
        getDelegate().y(i);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        getDelegate().t(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().v(view, layoutParams);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        dre dreVar = (dre) getDelegate();
        if (dreVar.ar instanceof Activity) {
            dreVar.cj();
            gkl gklVar = dreVar.ao;
            if (gklVar instanceof hp) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            dreVar.ah = null;
            if (gklVar != null) {
                gklVar.i();
            }
            dreVar.ao = null;
            if (toolbar != null) {
                Object obj = dreVar.ar;
                bbp bbpVar = new bbp(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : dreVar.bw, dreVar.bx);
                dreVar.ao = bbpVar;
                dreVar.bx.f15286e = bbpVar.f11238g;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                dreVar.bx.f15286e = null;
            }
            dreVar.aa();
        }
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        ((dre) getDelegate()).bt = i;
    }

    public gtg startSupportActionMode(dbn dbnVar) {
        return getDelegate().z(dbnVar);
    }

    @Override // androidx.fragment.app.u
    public void supportInvalidateOptionsMenu() {
        getDelegate().aa();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().s(i);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }
}
