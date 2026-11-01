package c.a;

import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import g.aco;
import g.acw;
import g.afo;
import g.aky;
import g.anh;
import g.aoy;
import g.bfr;
import g.bxe;
import g.cro;
import g.ctt;
import g.cwz;
import g.czf;
import g.dbv;
import g.ddp;
import g.die;
import g.dij;
import g.drp;
import g.du;
import g.dyd;
import g.dyn;
import g.dzm;
import g.eha;
import g.eib;
import g.ejf;
import g.ejn;
import g.erl;
import g.ern;
import g.eyt;
import g.fc;
import g.ffi;
import g.fnq;
import g.fso;
import g.fyt;
import g.fzn;
import g.get;
import g.gm;
import g.gqc;
import g.gzr;
import g.hcb;
import g.ik;
import g.sd;
import g.vc;
import g.yb;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class a extends eib implements eha {

    /* renamed from: d, reason: collision with root package name */
    public static final String f374d = FrameLayout.class.getName();

    /* renamed from: e, reason: collision with root package name */
    public dbv f375e;

    /* renamed from: g, reason: collision with root package name */
    public cwz f377g;
    public View h;
    public sd i;
    public bxe k;
    public aco l;
    public ArrayList m;
    public sd n;
    public String o;
    public czf p;
    public ik q;
    public drp r;
    public czf t;
    public Intent u;
    public RecyclerView v;
    public boolean j = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f376f = false;
    public ejn s = null;

    @Override // g.eib
    public final String aa() {
        return aky.o(this.bc, R.string.window_viewer_accessibility_permission, R.string.acb, R.string.accessibility_permission_message_sufffix_null);
    }

    @Override // g.eib
    public final void ab() {
        this.h.setVisibility(8);
        this.v.setVisibility(0);
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_window_viewer);
        this.bc = this;
        if (!cro.ba(this.bc, cro.aj(getIntent()))) {
            finish();
            return;
        }
        View findViewById = findViewById(R.id.tips);
        this.h = findViewById;
        findViewById.setOnClickListener(new get(14, this));
        this.v = (RecyclerView) findViewById(R.id.recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
        this.v.setLayoutManager(linearLayoutManager);
        ejf ejfVar = new ejf(this.v.getContext(), linearLayoutManager.bm);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setSize(0, (int) (getResources().getDisplayMetrics().density * 4.0f));
        gradientDrawable.setColor(eyt.af(this, R.color.colorDivider));
        ejfVar.f15644c = gradientDrawable;
        this.v.addItemDecoration(ejfVar);
        if (dzm.bd(this) < 2245) {
            ((View) this.v.getParent()).setVisibility(8);
        }
        super.initData();
        this.l = new aco(6, this);
        Intent intent = new Intent(this, (Class<?>) b.class);
        this.u = intent;
        startService(intent);
        bindService(new Intent(this, (Class<?>) b.class), this.l, 1);
        this.f377g = cwz.b(this.bc);
        ArrayList arrayList = new ArrayList();
        this.m = arrayList;
        dbv dbvVar = new dbv(this, arrayList);
        this.f375e = dbvVar;
        bxe bxeVar = new bxe();
        bxeVar.f12371c = false;
        bxeVar.f12372d = false;
        this.k = bxeVar;
        dbvVar.g(vc.class, bxeVar);
        dbv dbvVar2 = this.f375e;
        ik ikVar = new ik();
        ikVar.f19432d = true;
        ikVar.f19433e = true;
        ikVar.f19431c = this;
        this.q = ikVar;
        dbvVar2.g(gzr.class, ikVar);
        this.f375e.i = new fnq(19, this);
        this.q.f19432d = cro.an(this.bc, "wv_show_icon", true);
        this.q.f19433e = cro.an(this.bc, "wv_show_name", true);
        this.k.f12372d = cro.an(this.bc, "wv_show_title", true);
        this.k.f12371c = cro.an(this.bc, "wv_show_time", true);
        this.v.setAdapter(this.f375e);
        this.t = new czf(this, 1);
        fzn.l(this).v(this.t, new IntentFilter("window_state_changed"));
        this.p = new czf(this, 0);
        fzn.l(this).v(this.p, new IntentFilter("window_item_clicked"));
        erl.ab(this, new aoy(this));
        if (this.bb == null) {
            return;
        }
        if (this.j) {
            this.j = false;
        } else {
            this.j = true;
            w();
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_window_viewer, menu);
        MenuItem findItem = menu.findItem(R.id.small_window_default);
        if (findItem != null) {
            findItem.setChecked(cro.an(this.bc, "wv_small_window_default", true));
        }
        MenuItem findItem2 = menu.findItem(R.id.show_icon);
        if (findItem2 != null) {
            findItem2.setChecked(cro.an(this.bc, "wv_show_icon", true));
        }
        MenuItem findItem3 = menu.findItem(R.id.show_name);
        if (findItem3 != null) {
            findItem3.setChecked(cro.an(this.bc, "wv_show_name", true));
        }
        MenuItem findItem4 = menu.findItem(R.id.show_title);
        if (findItem4 != null) {
            findItem4.setChecked(cro.an(this.bc, "wv_show_title", true));
        }
        MenuItem findItem5 = menu.findItem(R.id.show_time);
        if (findItem5 != null) {
            findItem5.setChecked(cro.an(this.bc, "wv_show_time", true));
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        this.j = false;
        erl.ar(this);
        fzn.l(this).u(this.p);
        fzn.l(this).u(this.t);
        drp drpVar = this.r;
        if (drpVar != null && !drpVar.i) {
            aco acoVar = this.l;
            if (acoVar != null) {
                unbindService(acoVar);
            }
            Intent intent = this.u;
            if (intent != null) {
                stopService(intent);
            }
        }
        super.onDestroy();
    }

    @Override // g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.small_window) {
            x(true);
            return true;
        }
        if (itemId == R.id.small_window_default) {
            menuItem.setChecked(!menuItem.isChecked());
            if (this.r != null && menuItem.isChecked() && !this.r.i && x(false)) {
                finish();
            }
            cro.af(this.bc, "wv_small_window_default", menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.operate) {
            menuItem.setTitle(this.j ? R.string.window_viewer_operate_start : R.string.window_viewer_operate_stop);
            if (this.bb != null) {
                if (this.j) {
                    this.j = false;
                } else {
                    this.j = true;
                    w();
                }
            }
            gm.f(this, this.j ? R.string.window_viewer_operate_start_success : R.string.window_viewer_operate_stop_success);
            return true;
        }
        if (itemId == R.id.show_icon) {
            menuItem.setChecked(!menuItem.isChecked());
            this.q.f19432d = menuItem.isChecked();
            this.f375e.notifyDataSetChanged();
            cro.af(this.bc, "wv_show_icon", menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.show_name) {
            menuItem.setChecked(!menuItem.isChecked());
            this.q.f19433e = menuItem.isChecked();
            this.f375e.notifyDataSetChanged();
            cro.af(this.bc, "wv_show_name", menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.show_title) {
            menuItem.setChecked(!menuItem.isChecked());
            this.k.f12372d = menuItem.isChecked();
            this.f375e.notifyDataSetChanged();
            cro.af(this.bc, "wv_show_title", menuItem.isChecked());
            return true;
        }
        if (itemId == R.id.show_time) {
            menuItem.setChecked(!menuItem.isChecked());
            this.k.f12371c = menuItem.isChecked();
            this.f375e.notifyDataSetChanged();
            cro.af(this.bc, "wv_show_time", menuItem.isChecked());
            return true;
        }
        if (itemId != R.id.clear) {
            return super.onOptionsItemSelected(menuItem);
        }
        this.o = null;
        this.m.clear();
        this.f375e.h(this.m);
        this.f375e.notifyDataSetChanged();
        return true;
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        this.f377g.i();
        if (this.v != null && !acw.u(this.m)) {
            this.v.scrollToPosition(this.m.size() - 1);
        }
        if (this.h.getVisibility() == 8 && !acw.ae(this.bc, "wv_small_window_tips1")) {
            View findViewById = findViewById(R.id.snackbar_layout);
            this.n = afo.ar(findViewById, findViewById.getResources().getText(R.string.window_viewer_window_tips1), -2, R.string.know_it, new dij());
        }
        if (ern.h(this, this.bb)) {
            ab();
        }
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStop() {
        this.f377g.ae();
        super.onStop();
    }

    @Override // g.eib
    public final boolean w() {
        if (erl.s != null && yb.j(this, new Intent(getIntent()), true)) {
            return false;
        }
        ctt cttVar = erl.s;
        if (cttVar == null || cttVar.f13493g || !cttVar.l()) {
            return super.w();
        }
        ab();
        return true;
    }

    public final boolean x(boolean z) {
        boolean canDrawOverlays;
        int i = 0;
        if (this.r == null || !w()) {
            return false;
        }
        int i2 = 1;
        if (this.r.i) {
            if (z) {
                this.r.l();
            }
            return true;
        }
        synchronized (eib.class) {
            try {
                if (this.f376f) {
                    return false;
                }
                if (!dyd.ar(23)) {
                    canDrawOverlays = Settings.canDrawOverlays(this);
                    if (!canDrawOverlays) {
                        synchronized (eib.class) {
                            this.f376f = true;
                        }
                        CharSequence e2 = fyt.e(this.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                        eib eibVar = this.bc;
                        gqc gqcVar = new gqc(this);
                        gqcVar.am(R.string.title_request_permission);
                        ((die) gqcVar.z).m = getString(R.string.content_request_permission2, e2, getString(R.string.window_viewer_permission_usage));
                        gqcVar.ay(R.string.alert_dialog_ok, new ddp(this, i2));
                        gqcVar.x(R.string.alert_dialog_cancel, new ddp(this, i));
                        ((die) gqcVar.z).f14220e = new du(7, this);
                        eyt.ay(eibVar, gqcVar.r());
                        return false;
                    }
                }
                y();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y() {
        float f2;
        float f3;
        drp drpVar = this.r;
        if (drpVar != null && !drpVar.i) {
            synchronized (drp.class) {
                drpVar.i = true;
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2010, 8, -2);
            layoutParams.gravity = 51;
            if (dyd.bp(26)) {
                layoutParams.type = 2038;
            }
            int[] ag = fso.ag(drpVar.h);
            int i = ag[0];
            if (i < ag[1]) {
                f2 = i;
                f3 = 0.7f;
            } else {
                f2 = i;
                f3 = 0.5f;
            }
            layoutParams.width = (int) (f2 * f3);
            View inflate = LayoutInflater.from(drpVar).inflate(R.layout.window_window_viewer, (ViewGroup) null);
            drpVar.f14679f = inflate;
            inflate.findViewById(R.id.close).setOnClickListener(new get(15, drpVar));
            ImageView imageView = (ImageView) drpVar.f14679f.findViewById(R.id.stop);
            imageView.setOnClickListener(new anh(drpVar, 10, imageView));
            drpVar.f14679f.setOnTouchListener(new hcb(drpVar, layoutParams));
            dbv dbvVar = new dbv(drpVar, drpVar.f14676c);
            drpVar.k = dbvVar;
            dbvVar.g(bfr.class, new ffi(drpVar));
            drpVar.k.h(drpVar.f14676c);
            drpVar.k.i = new fc(20, drpVar);
            drpVar.f14680g = (RecyclerView) drpVar.f14679f.findViewById(R.id.recycler_view);
            drpVar.f14680g.setLayoutManager(new LinearLayoutManager(1));
            drpVar.f14680g.setAdapter(drpVar.k);
            if (drpVar.f14676c.size() > 1) {
                drpVar.f14680g.scrollToPosition(drpVar.f14676c.size() - 1);
            }
            drpVar.j.addView(drpVar.f14679f, layoutParams);
        }
        sd sdVar = this.n;
        if (sdVar != null && sdVar.g()) {
            this.n.ak(3);
        }
        drp drpVar2 = this.r;
        if (drpVar2 == null || !drpVar2.i || acw.ae(this.bc, "wv_small_window_tips2")) {
            return;
        }
        new Handler().postDelayed(new dyn(7, this), 300L);
    }

    @Override // g.eib
    public final void z() {
        if (acw.u(this.m)) {
            this.h.setVisibility(0);
            this.v.setVisibility(8);
        }
    }
}
