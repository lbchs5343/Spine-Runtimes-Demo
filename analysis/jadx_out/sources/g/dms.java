package g;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import cn.trinea.android.developertools.R;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class dms extends ub implements aa, cww {
    protected wq activityImpl;
    protected fei clickInterval;

    @Override // g.aa
    public void addActivityResultCallback(int i, cbi cbiVar) {
        wq wqVar = this.activityImpl;
        synchronized (wqVar) {
            if (cbiVar == null) {
                return;
            }
            wqVar.f20232b.put(i, cbiVar);
        }
    }

    @Override // g.cww
    public void addPermissionCallback(int i, String[] strArr, fcd[] fcdVarArr) {
        wq wqVar = this.activityImpl;
        synchronized (wqVar) {
            try {
                Map map = (Map) wqVar.f20231a.get(i);
                if (map == null) {
                    map = new HashMap();
                    wqVar.f20231a.put(i, map);
                }
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    List list = (List) map.get(strArr[i2]);
                    if (list == null) {
                        list = new ArrayList();
                        map.put(strArr[i2], list);
                    }
                    list.add(fcdVarArr[i2]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.ub, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, com.bytedance.pangle.activity.IPluginActivity
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void av() {
        boolean useDarkSystemBarIcons = useDarkSystemBarIcons();
        Window window = getWindow();
        bli bliVar = new bli(getWindow().getDecorView());
        int i = Build.VERSION.SDK_INT;
        ffb egyVar = i >= 35 ? new egy(window, bliVar) : i >= 30 ? new fqu(window, bliVar) : i >= 26 ? new bla(window, bliVar) : i >= 23 ? new boy(window, bliVar) : new djy(window, bliVar);
        egyVar.b(useDarkSystemBarIcons);
        egyVar.a(useDarkSystemBarIcons);
        int af = eyt.af(this, R.color.system_bar_legacy_scrim);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
            getWindow().setStatusBarColor(af);
        }
        if (i2 < 26) {
            getWindow().setNavigationBarColor(af);
        }
    }

    public int getInteger(int i) {
        return getResources().getInteger(i);
    }

    public View.OnClickListener getToolBarClickListener() {
        return null;
    }

    public View.OnLongClickListener getToolBarLongClickListener() {
        return null;
    }

    @Override // android.app.Activity
    public boolean isDestroyed() {
        return dyd.bp(17) ? super.isDestroyed() : this.activityImpl.f20236f;
    }

    public boolean isDisplayHomeAsUpEnabled() {
        return true;
    }

    public boolean isEnterLeaveAnim() {
        return true;
    }

    @Override // androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        SparseArray sparseArray = this.activityImpl.f20232b;
        cbi cbiVar = (cbi) sparseArray.get(i);
        if (cbiVar != null) {
            cbiVar.c();
            sparseArray.remove(i);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        wq wqVar = this.activityImpl;
        dms dmsVar = wqVar.f20233c;
        if (dmsVar.isDisplayHomeAsUpEnabled() && dmsVar.isEnterLeaveAnim()) {
            wqVar.f20235e.overridePendingTransition(R.anim.slide_right_in, R.anim.slide_right_out);
        }
    }

    @Override // androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        Window window = getWindow();
        Objects.requireNonNull(window);
        window.getDecorView();
        cro.aw(window, false);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i3 = i2 >= 30 ? 3 : 1;
            WindowManager.LayoutParams attributes = window.getAttributes();
            i = attributes.layoutInDisplayCutoutMode;
            if (i != i3) {
                attributes.layoutInDisplayCutoutMode = i3;
                window.setAttributes(attributes);
            }
        }
        if (i2 >= 29) {
            window.setStatusBarContrastEnforced(false);
            window.setNavigationBarContrastEnforced(false);
        }
        av();
        wq wqVar = new wq();
        wqVar.f20231a = new SparseArray();
        wqVar.f20232b = new SparseArray();
        wqVar.f20235e = this;
        wqVar.f20233c = this;
        this.activityImpl = wqVar;
        wqVar.f20236f = false;
        if (isDisplayHomeAsUpEnabled() && isEnterLeaveAnim()) {
            overridePendingTransition(R.anim.slide_left_in, R.anim.slide_left_out);
        }
        this.activityImpl.f20234d = getToolBarClickListener();
        this.activityImpl.f20237g = getToolBarLongClickListener();
        this.clickInterval = new fei();
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.activityImpl.f20236f = true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        wq wqVar = this.activityImpl;
        dms dmsVar = wqVar.f20235e;
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        dmsVar.finish();
        if (!wqVar.f20233c.isEnterLeaveAnim()) {
            return true;
        }
        dmsVar.overridePendingTransition(R.anim.slide_right_in, R.anim.slide_right_out);
        return true;
    }

    @Override // androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Map map = (Map) this.activityImpl.f20231a.get(i);
        if (afo.at(map)) {
            super.onRequestPermissionsResult(i, strArr, iArr);
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    break;
                }
                if (TextUtils.isEmpty(strArr[i2]) || !strArr[i2].equals(entry.getKey())) {
                    i2++;
                } else {
                    List<fcd> list = (List) map.get(strArr[i2]);
                    if (!acw.u(list)) {
                        for (fcd fcdVar : list) {
                            if (iArr[i2] == 0) {
                                fcdVar.h(strArr[i2]);
                            } else {
                                fcdVar.onDenied(strArr[i2]);
                            }
                        }
                    }
                }
            }
        }
        map.clear();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onResume() {
        super.onResume();
        av();
        this.activityImpl.getClass();
    }

    @Override // g.ub, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        this.activityImpl.h();
    }

    @Override // g.ub, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.activityImpl.h();
    }

    @Override // g.ub, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        this.activityImpl.h();
    }

    public void setSubTitleC(CharSequence charSequence) {
        gs.k(this, charSequence);
    }

    public boolean useDarkSystemBarIcons() {
        return (getResources().getConfiguration().uiMode & 48) != 32;
    }
}
