package c.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import cn.trinea.android.developertools.R;
import g.abn;
import g.byh;
import g.ckd;
import g.cpn;
import g.cro;
import g.die;
import g.dj;
import g.dlb;
import g.dtm;
import g.du;
import g.dyd;
import g.dzm;
import g.efa;
import g.eyt;
import g.fcd;
import g.fwf;
import g.fyt;
import g.gjc;
import g.gm;
import g.gmn;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public class b extends abn {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f378d = 0;

    /* renamed from: g, reason: collision with root package name */
    public Menu f381g;
    public String h = "";

    /* renamed from: e, reason: collision with root package name */
    public boolean f379e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f380f = false;

    public static int i(Context context) {
        int av = byh.av(context, context.getSharedPreferences("TrineaAndroidCommon", 0).getInt("op_update_freq", 2), "op_update_freq");
        if (av == 1) {
            return 60;
        }
        if (av == 2) {
            return 1440;
        }
        if (av == 3) {
            return 10080;
        }
        return av == 4 ? 43200 : 1440;
    }

    public static List k(Context context, boolean z) {
        String ak = cro.ak(context, "op_update_noti_mode", null);
        List be = byh.be(context, TextUtils.isEmpty(ak) ? null : new ArrayList(Arrays.asList(ak.split(","))));
        if (be == null) {
            be = new ArrayList();
        }
        if (be.isEmpty()) {
            be.add("bar");
            be.add("inapp");
            be.add("desk");
            if (z) {
                byh.ay(context, "op_update_noti_mode", TextUtils.join(",", be));
            }
        }
        return be;
    }

    public static void l(Context context, String str) {
        context.sendBroadcast(new Intent(str).setComponent(new ComponentName(context.getPackageName(), "c.c.o")));
    }

    public static boolean n(Context context) {
        Calendar calendar = Calendar.getInstance();
        int av = byh.av(context, cro.av(context, 1, "op_update_noti_period"), "op_update_noti_period");
        return (av == 1 && calendar.get(11) >= 9 && calendar.get(11) <= 18) || (av == 2 && calendar.get(11) >= 8 && calendar.get(11) <= 20) || av == 3;
    }

    public static boolean v(Context context) {
        return byh.r(context, "op_updatable", cro.an(context, "op_updatable", byh.r(context, "op_updatable_default", cro.an(context, "op_updatable_default", context.getResources().getBoolean(R.bool.allow_op_update_default)))));
    }

    public static String x(Context context) {
        int av = byh.av(context, cro.av(context, 2, "op_update_freq"), "op_update_freq");
        if (av == 1) {
            return context.getString(R.string.op_update_freq_day);
        }
        if (av == 2) {
            return context.getString(R.string.op_update_freq_week);
        }
        if (av != 3 && av != 4) {
            return context.getString(R.string.op_update_freq_day);
        }
        return context.getString(R.string.op_update_freq_month);
    }

    public final void aa(MenuItem menuItem, String str) {
        menuItem.setChecked(!menuItem.isChecked());
        if (!menuItem.isChecked()) {
            if (k(this.context, false).size() <= 1) {
                menuItem.setChecked(true);
                gm.f(this.context, R.string.at_least_one_choice);
                return;
            } else {
                byh.p(this.context, str);
                l(this.context, "c.t.d.o.p.u.t");
                return;
            }
        }
        Context context = this.context;
        List be = byh.be(context, null);
        if (be == null) {
            be = new ArrayList();
        }
        if (!be.contains(str)) {
            be.add(str);
            byh.ay(context, "op_update_noti_mode", TextUtils.join(",", be));
        }
        l(this.context, "c.t.d.o.p.u.t");
    }

    public final void ab(int i, MenuItem menuItem) {
        if (menuItem != null) {
            menuItem.setChecked(true);
        }
        byh.bb(this.context, i, "op_update_freq");
        l(this.context, "c.t.d.o.p.u.t");
    }

    public final void ac(MenuItem menuItem) {
        menuItem.setChecked(!menuItem.isChecked());
        byh.ad(this.context, "op_updatable", menuItem.isChecked());
        l(this.context, "c.t.d.o.p.u.t");
        invalidateOptionsMenu();
        try {
            dzm.ah(this, "op_updatable_total", menuItem.isChecked() ? "op_updatable_true" : "op_updatable_false");
        } catch (Exception unused) {
        }
    }

    public final void ad(int i, MenuItem menuItem) {
        menuItem.setChecked(true);
        byh.bb(this.context, i, "op_update_noti_period");
        l(this.context, "c.t.d.o.p.u.t");
    }

    @Override // g.fyx
    public final int getShortcutIconResId() {
        return R.drawable.op;
    }

    @Override // g.fyx, g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            this.h = intent.getStringExtra(abn.EXTRA_SOURCE);
            this.f379e = intent.getBooleanExtra("show_op_update_menu", true);
        }
        Context context = this.context;
        byh.bb(context, byh.av(context, cro.av(context, 0, "op_click_times"), "op_click_times") + 1, "op_click_times");
        Context context2 = this.context;
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        byh.ay(context2, "op_accessed_time", Long.toString(System.currentTimeMillis()));
        l(this.context, "c.t.d.o.p.u.i");
    }

    @Override // g.fyx, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        int i;
        super.onCreateOptionsMenu(menu);
        if (!this.f379e) {
            return true;
        }
        this.f381g = menu;
        getMenuInflater().inflate(R.menu.op_webview, menu);
        cpn.a(menu, true);
        boolean v = v(this.context);
        menu.findItem(R.id.update_noti).setChecked(v);
        SubMenu subMenu = menu.findItem(R.id.update_op_group).getSubMenu();
        subMenu.setGroupEnabled(R.id.op_update_freq, v);
        subMenu.setGroupEnabled(R.id.op_update_noti_period, v);
        subMenu.setGroupEnabled(R.id.op_update_noti_mode, v);
        Context context = this.context;
        int av = byh.av(context, cro.av(context, 2, "op_update_freq"), "op_update_freq");
        if (av == 1) {
            i = R.id.op_update_freq_hour;
        } else {
            if (av != 2) {
                if (av == 3) {
                    i = R.id.op_update_freq_week;
                } else if (av == 4) {
                    i = R.id.op_update_freq_month;
                }
            }
            i = R.id.op_update_freq_day;
        }
        menu.findItem(i).setChecked(true);
        Context context2 = this.context;
        int av2 = byh.av(context2, cro.av(context2, 1, "op_update_noti_period"), "op_update_noti_period");
        int i2 = R.id.op_update_noti_period_normal_work;
        if (av2 != 1) {
            if (av2 == 2) {
                i2 = R.id.op_update_noti_period_more_work;
            } else if (av2 == 3) {
                i2 = R.id.op_update_noti_period_all;
            }
        }
        menu.findItem(i2).setChecked(true);
        List k = k(this.context, true);
        menu.findItem(R.id.op_update_noti_mode_bar).setChecked(k.contains("bar"));
        menu.findItem(R.id.op_update_noti_mode_app).setChecked(k.contains("inapp"));
        menu.findItem(R.id.op_update_noti_mode_desk).setChecked(k.contains("desk"));
        return true;
    }

    @Override // g.fyx, g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int i = 2;
        if (itemId == R.id.update_noti) {
            int i2 = 0;
            if (!menuItem.isChecked()) {
                if (eyt.am(this, "android.permission.POST_NOTIFICATIONS") != 0) {
                    fyt.c(this, new String[]{"android.permission.POST_NOTIFICATIONS"}, new fcd[]{new fwf(this, menuItem)});
                    return true;
                }
                ac(menuItem);
                return true;
            }
            gmn z = ckd.z(this);
            String string = getString(R.string.op_update_close_dialog_title, getString(R.string.op_update_check));
            die dieVar = (die) z.z;
            dieVar.f14221f = string;
            dieVar.m = dieVar.i.getText(R.string.op_update_close_dialog_content);
            z.q(getString(R.string.op_update_close_dialog_positive, x(this.context)), new gjc(this, i));
            z.y(R.string.op_update_close_dialog_negative, new dtm(this, menuItem, i2));
            z.t(R.string.alert_dialog_cancel, new efa(1));
            eyt.ay(this, z.r());
            return true;
        }
        if (itemId == R.id.op_update_freq_hour) {
            ab(1, menuItem);
        } else if (itemId == R.id.op_update_freq_day) {
            ab(2, menuItem);
        } else if (itemId == R.id.op_update_freq_week) {
            ab(3, menuItem);
        } else if (itemId == R.id.op_update_freq_month) {
            ab(4, menuItem);
        } else if (itemId == R.id.op_update_noti_period_normal_work) {
            ad(1, menuItem);
        } else if (itemId == R.id.op_update_noti_period_more_work) {
            ad(2, menuItem);
        } else if (itemId == R.id.op_update_noti_period_all) {
            ad(3, menuItem);
        } else if (itemId == R.id.op_update_noti_mode_bar) {
            aa(menuItem, "bar");
        } else if (itemId == R.id.op_update_noti_mode_app) {
            aa(menuItem, "inapp");
        } else if (itemId == R.id.op_update_noti_mode_desk) {
            aa(menuItem, "desk");
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        Context context = this.context;
        if (!byh.r(context, "op_shortcuted", cro.an(context, "op_shortcuted", false))) {
            Context context2 = this.context;
            int av = byh.av(context2, cro.av(context2, 0, "startup_times"), "startup_times");
            Context context3 = this.context;
            int av2 = byh.av(context3, cro.av(context3, 0, "op_click_times"), "op_click_times");
            if (av >= 3 && av2 >= 6) {
                Context context4 = this.context;
                gmn z = ckd.z(this);
                die dieVar = (die) z.z;
                dieVar.m = dieVar.i.getText(R.string.op_shortcut_desc);
                z.s(R.string.alert_dialog_ok, new gjc(this, 1));
                z.y(R.string.alert_dialog_cancel, new gjc(this, 0));
                dieVar.f14220e = new du(6, this);
                eyt.ay(context4, z.r());
            }
        }
        Context context5 = this.context;
        int av3 = byh.av(context5, cro.av(context5, 0, "op_update_menu_tip_count"), "op_update_menu_tip_count");
        if (!dyd.bi(this.context) || !"op_source_noti_update".equals(this.h) || this.f380f || av3 >= 1) {
            return;
        }
        this.f380f = true;
        Context context6 = this.context;
        byh.bb(context6, byh.av(context6, cro.av(context6, 0, "op_update_menu_tip_count"), "op_update_menu_tip_count") + 1, "op_update_menu_tip_count");
        z(0);
    }

    public final void z(int i) {
        if (v(this.context)) {
            new Handler().postDelayed(new dj(this, i, 4), i == 0 ? 2000L : 1000L);
        }
    }
}
