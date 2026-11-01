package g;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class efx extends cms {
    public static final /* synthetic */ int aj = 0;
    public TextView ak;
    public EditText an;
    public cgg ao;
    public aoi ap;
    public sd ar;
    public LinearLayout as;
    public dfi at;
    public gwf au;
    public TextView ay;
    public TextView az;
    public efx bb;
    public Class bc;
    public RecyclerView bd;
    public InputMethodManager be;
    public boolean bf;
    public String bg;
    public eml bi;
    public View bj;
    public final fvi aq = new fvi(5, this);
    public boolean al = false;
    public boolean bh = false;
    public boolean ba = true;
    public final boolean ax = true;
    public boolean am = false;
    public boolean aw = false;

    public static boolean bk(Context context) {
        return byh.r(context, "applist_show_system_app", false);
    }

    public final void bl() {
        eml emlVar = this.bi;
        if (emlVar != null) {
            this.bd.removeItemDecoration(emlVar);
        }
        this.bd.setPadding(0, 0, 0, 0);
        if (this.ba) {
            this.bi = null;
        } else {
            eml emlVar2 = new eml(this.bd.getContext());
            this.bi = emlVar2;
            this.bd.addItemDecoration(emlVar2);
        }
        if (this.ba) {
            int integer = getResources().getInteger(R.integer.app_span_count);
            GridLayoutManager gridLayoutManager = new GridLayoutManager(integer);
            gridLayoutManager.f251g = new fwd(this, integer, 0);
            this.bd.setLayoutManager(gridLayoutManager);
        } else {
            this.bd.setLayoutManager(new LinearLayoutManager(1));
        }
        if (this.at != null) {
            csm e2 = e(this, this.ba);
            if (this.ax) {
                this.at.g(ajr.class, new ccd(this, getResources().getInteger(R.integer.app_span_count), e2));
                this.at.g(edn.class, new fsk(0));
            }
            this.at.g(auj.class, e(this, this.ba));
            this.bd.setAdapter(this.at);
        }
    }

    public final void bm() {
        View findViewById = findViewById(R.id.app_list_footer);
        if (findViewById != null) {
            findViewById.setVisibility((this.bf || !TextUtils.isEmpty(this.an.getText())) ? 8 : 0);
        }
    }

    public final void bn() {
        TextView textView = this.ak;
        if (textView != null) {
            textView.setVisibility(8);
        }
        findViewById(R.id.progress_bar).setVisibility(0);
        this.ay.setText(R.string.loading);
        this.az.setVisibility(8);
        this.az.setText("");
        this.as.setVisibility(0);
        this.bj.setVisibility(4);
        this.bd.setVisibility(4);
    }

    public final void bo(boolean z) {
        if (z && !this.au.h.t) {
            bn();
        }
        sd sdVar = this.ar;
        if (sdVar != null) {
            sdVar.ak(3);
            this.ar = null;
        }
        this.au.f18869c = z;
        byh.ad(this, "applist_show_system_app", z);
        invalidateOptionsMenu();
        gwf gwfVar = this.au;
        gwfVar.l(gwfVar.f18872f);
    }

    public final void bp(MenuItem menuItem) {
        if (menuItem != null) {
            if (this.am) {
                menuItem.setShowAsAction(2);
            }
            boolean bk = bk(this.bb);
            menuItem.setChecked(bk);
            menuItem.setIcon(bk ? R.drawable.ic_system_apps_checked : R.drawable.ic_system_apps);
            String string = getString(bk ? R.string.app_list_hide_system_app : R.string.app_list_show_system_app);
            menuItem.setTitle(string);
            boolean z = menuItem instanceof buc;
            if (z) {
                ((buc) menuItem).setContentDescription((CharSequence) string);
            } else if (Build.VERSION.SDK_INT >= 26) {
                cmb.c(menuItem, string);
            }
            if (z) {
                ((buc) menuItem).setTooltipText((CharSequence) string);
            } else if (Build.VERSION.SDK_INT >= 26) {
                cmb.z(menuItem, string);
            }
        }
    }

    public final void bq() {
        if (eyt.bq(this.au.f18872f) || bk(this.bb)) {
            return;
        }
        sd sdVar = this.ar;
        if (sdVar == null || !sdVar.am()) {
            View findViewById = findViewById(R.id.snackbar_layout);
            int[] iArr = sd.f19961a;
            sd d2 = sd.d(findViewById, findViewById.getResources().getText(R.string.search_app_too_few_for_without_system), -2);
            d2.e(d2.m.getText(R.string.ok), new ld(2, this));
            this.ar = d2;
            afo.bb(d2, true);
            d2.r = true;
            d2.f();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        EditText editText;
        if (motionEvent.getActionMasked() == 0 && (editText = this.an) != null && editText.hasFocus()) {
            Rect rect = new Rect();
            this.bj.getGlobalVisibleRect(rect);
            if (!rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                this.an.clearFocus();
                findViewById(R.id.container).requestFocus();
                InputMethodManager inputMethodManager = this.be;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(this.an.getWindowToken(), 0);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract csm e(efx efxVar, boolean z);

    public abstract String f();

    public abstract String g();

    public void h(Intent intent) {
        if (intent == null) {
            return;
        }
        this.al = intent.getBooleanExtra("show_ad_full", false);
        this.bh = intent.getBooleanExtra("show_ad_banner", false);
        this.am = intent.getBooleanExtra("show_system_app_menu_always", false);
    }

    public abstract String i();

    public void initView() {
        this.as = (LinearLayout) findViewById(R.id.loading_layout);
        this.ay = (TextView) findViewById(R.id.tip);
        this.az = (TextView) findViewById(R.id.tip_msg);
        this.bj = findViewById(R.id.find_layout);
        this.an = (EditText) findViewById(R.id.find_text);
        this.bd = (RecyclerView) findViewById(R.id.recycler_view);
        this.ak = (TextView) findViewById(R.id.app_list_count);
        View view = (View) this.ay.getParent();
        view.setBackgroundResource(R.drawable.setting_section_background);
        view.setElevation(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        int i = 5;
        this.an.setOnClickListener(new get(i, this));
        this.an.addTextChangedListener(new bvb(1, this));
        this.an.setOnEditorActionListener(new fxf(this, 0));
        cro.aw(getWindow(), false);
        getWindow().setSoftInputMode(16);
        View findViewById = findViewById(R.id.container);
        aoi aoiVar = new aoi(i, this);
        WeakHashMap weakHashMap = goi.f18490c;
        cd.b(findViewById, aoiVar);
        dzc.c(findViewById);
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_app_list_with_snack);
        h(getIntent());
        this.bb = this;
        this.be = (InputMethodManager) getSystemService("input_method");
        this.ao = cro.aj(getIntent());
        if (this.al) {
            fullScreenAdInit(i(), g());
        }
        if (((!dzm.bc() || dzm.at(this)) ? buj.be(0, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF) + 1227 : buj.be(0, 1226)) < 1226) {
            ((View) findViewById(R.id.recycler_view).getParent()).setVisibility(8);
        }
        initView();
        if (isTaskRoot()) {
            getOnBackPressedDispatcher().i(this, new bcn(2, this));
        }
        efx efxVar = this.bb;
        String str = this.bg;
        gwf gwfVar = new gwf();
        gwfVar.f18869c = false;
        gwfVar.f18870d = false;
        fgj.d(efxVar);
        gwfVar.f18871e = this;
        gwfVar.h = cwz.b(efxVar);
        cwq f2 = cwq.f(efxVar);
        gwfVar.j = f2;
        f2.f13643c = str;
        gwfVar.f18868b = new fc(14);
        gwfVar.i = new emr(4, gwfVar);
        gwfVar.k = new dgx(null, null, new aoi(2, gwfVar));
        this.au = gwfVar;
        this.ba = getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("applist_grid_mode", true);
        bl();
        if (this.bh) {
            bannerAdInit(i(), f());
            bannerAdShow();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
    
        if (g.cro.av(r6.bb, -1, "applist_show_recently") == 1) goto L19;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.app_list, menu);
        bp(menu.findItem(R.id.show_system_app));
        MenuItem findItem = menu.findItem(R.id.layout_mode);
        boolean z = true;
        if (findItem != null) {
            findItem.setIcon(getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("applist_grid_mode", true) ? R.drawable.menu_mode_list : R.drawable.menu_mode_grid);
        }
        MenuItem findItem2 = menu.findItem(R.id.show_recently_used_app);
        boolean z2 = this instanceof b.b.b;
        if (z2) {
            findItem2.setVisible(false);
        } else if (findItem2 != null) {
            if (!z2) {
                cwq cwqVar = this.au.j;
                if (ern.h(cwqVar.v, cwqVar.f13643c)) {
                }
            }
            z = false;
            findItem2.setChecked(z);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.dms, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.layout_mode) {
            this.ba = !this.ba;
            bl();
            menuItem.setIcon(this.ba ? R.drawable.menu_mode_list : R.drawable.menu_mode_grid);
            cro.af(this, "applist_grid_mode", this.ba);
        } else if (itemId == R.id.show_system_app) {
            bo(!bk(this.bb));
            bp(menuItem);
        } else if (itemId == R.id.show_recently_used_app) {
            boolean isChecked = menuItem.isChecked();
            boolean z = !isChecked;
            if (!isChecked) {
                cwq cwqVar = this.au.j;
                if (!ern.h(cwqVar.v, cwqVar.f13643c)) {
                    eib.bd(this, aky.o(this.bb, R.string.app_list_accessibility_permission, R.string.app_list_accessibility_name, R.string.accessibility_permission_message_sufffix_null), this.bh ? f() : null, null, null, null);
                    return super.onOptionsItemSelected(menuItem);
                }
            }
            menuItem.setChecked(z);
            gwf gwfVar = this.au;
            gwfVar.f18870d = z;
            gwfVar.l(gwfVar.f18872f);
            cro.az(this, z ? 1 : 0, "applist_show_recently");
            return super.onOptionsItemSelected(menuItem);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        bp(menu.findItem(R.id.show_system_app));
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        boolean z = false;
        boolean z2 = getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("applist_grid_mode", true);
        if (this.ba != z2) {
            this.ba = z2;
            bl();
        }
        gwf gwfVar = this.au;
        if (!(this instanceof b.b.b)) {
            cwq cwqVar = gwfVar.j;
            if (ern.h(cwqVar.v, cwqVar.f13643c) && cro.av(this.bb, -1, "applist_show_recently") == 1) {
                z = true;
            }
        }
        gwfVar.f18870d = z;
        this.au.f18869c = bk(this.bb);
        invalidateOptionsMenu();
        gwf gwfVar2 = this.au;
        gwfVar2.f18873g = true;
        gwfVar2.h.i();
        cwz cwzVar = gwfVar2.h;
        dgx dgxVar = gwfVar2.k;
        cwzVar.getClass();
        if (dgxVar != null && dgxVar.f14156c != null) {
            synchronized (haz.class) {
                cwzVar.s.add(dgxVar);
            }
        }
        gwfVar2.l(gwfVar2.f18872f);
        if (TextUtils.equals(this.an.getText().toString().trim(), this.au.f18872f)) {
            return;
        }
        this.aq.run();
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStop() {
        this.an.removeCallbacks(this.aq);
        sd sdVar = this.ar;
        if (sdVar != null) {
            sdVar.ak(3);
            this.ar = null;
        }
        gwf gwfVar = this.au;
        gwfVar.f18873g = false;
        gwfVar.f18867a++;
        cwz cwzVar = gwfVar.h;
        dgx dgxVar = gwfVar.k;
        cwzVar.getClass();
        if (dgxVar != null && dgxVar.f14156c != null) {
            synchronized (haz.class) {
                cwzVar.s.remove(dgxVar);
            }
        }
        gwfVar.h.ae();
        super.onStop();
    }
}
