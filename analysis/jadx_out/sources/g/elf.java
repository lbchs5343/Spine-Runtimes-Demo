package g;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;
import g.fxe;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class elf extends dxn implements cgm {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f15750d = 0;
    public elf aa;

    /* renamed from: e, reason: collision with root package name */
    public bli f15751e;
    public boolean i;
    public fpl j;
    public dmr k;
    public boolean l;
    public boolean m;
    public View n;
    public boolean o;
    public int p;
    public emb q;
    public bzj r;
    public sr s;
    public sd t;
    public RecyclerView u;
    public String v;
    public TextView w;
    public boolean x;
    public sd y;
    public boolean z;

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ab() {
        String str;
        ert ae;
        String[] split;
        this.v = null;
        boolean z = false;
        this.m = false;
        this.p = 2;
        Intent intent = getIntent();
        if (intent == null || !"trinea/android-tool".equalsIgnoreCase(intent.getType())) {
            return;
        }
        if (intent.getDataString() != null && (split = TextUtils.split(intent.getDataString(), ":")) != null) {
            if (split.length > 1) {
                this.v = split[0];
                str = split[1];
                if (acw.ap(this.v)) {
                    acw.au(this.aa, "open_project_source", str);
                }
                ae = acr.ae(this.aa, this.v);
                if (ae != null && ae.f16053b) {
                    z = true;
                }
                this.m = z;
                this.p = 1;
                AccessibilityNodeInfo accessibilityNodeInfo = ern.f16037c;
                if (ern.h(this, SelectToSpeakService.class.getName())) {
                    ah();
                }
                intent.setData(null);
            }
            if (split.length == 1) {
                this.v = split[0];
            }
        }
        str = "";
        if (acw.ap(this.v)) {
        }
        ae = acr.ae(this.aa, this.v);
        if (ae != null) {
            z = true;
        }
        this.m = z;
        this.p = 1;
        AccessibilityNodeInfo accessibilityNodeInfo2 = ern.f16037c;
        if (ern.h(this, SelectToSpeakService.class.getName())) {
        }
        intent.setData(null);
    }

    public final void ac() {
        if (eyt.am(this, "android.permission.POST_NOTIFICATIONS") != 0) {
            return;
        }
        fxe.b l = atf.g(this).l();
        if (ae(l, "LAST_NOTI_PROMOTION_ID")) {
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            String string = getString(R.string.noti_channel_promo);
            if (dyd.bp(26)) {
                NotificationChannel q = bnl.q(string, string);
                q.enableLights(true);
                q.setLightColor(-16776961);
                q.enableVibration(false);
                notificationManager.createNotificationChannel(q);
            }
            zc zcVar = new zc(this, string);
            zcVar.s.icon = R.drawable.noti_icon;
            zcVar.u(16, true);
            Context applicationContext = getApplicationContext();
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            zcVar.r = PendingIntent.getActivity(applicationContext, (int) System.currentTimeMillis(), new Intent(this, (Class<?>) c.b.a.class).putExtra("isFromPromotionNoti", true), 201326592);
            zcVar.f20386g = zc.t(l.title);
            zcVar.i = zc.t(l.attraction);
            notificationManager.notify(18, zcVar.y());
        }
    }

    public final void ad(String str, boolean z) {
        ert ae;
        String string;
        if (this.k.f14436a == null) {
            erl.y("ps is null when show pro fragment");
            return;
        }
        eg.v(this.aa, "donation");
        ert ae2 = acr.ae(this.aa, str);
        if (ae2 == null) {
            return;
        }
        boolean au = cux.au(this, new cgg(ae2.i, 0, ae2.f16057f));
        if (au) {
            this.k.getClass();
            dzm.ao(this.aa, "tt_1_ct");
        }
        Bundle bundle = new Bundle();
        bundle.putString("donation_package_name", getString(R.string.donation_package_name));
        bundle.putString("donation_app_name", getString(R.string.donation_app_name));
        bundle.putInt("donation_icon_url", R.mipmap.ic_launcher);
        bundle.putInt("tc", ae2.i);
        bundle.putBoolean("at", au);
        elf elfVar = this.aa;
        cgg cggVar = new cgg(ae2.i, 0, ae2.f16057f);
        int av = cggVar.isMultiProcess() ? byh.av(elfVar, 0, cux.az(cggVar.getCode())) : cro.av(elfVar, 0, cux.az(cggVar.getCode()));
        fxe.a j = atf.g(this.aa).j();
        bundle.putBoolean("tuu", av >= (j != null ? j.mTC : 0));
        fxe.b l = atf.g(this).l();
        String str2 = l != null ? l.promotionRate : null;
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("promotion_rate", str2);
        }
        String str3 = "";
        if (z) {
            fxe.b l2 = atf.g(this).l();
            string = l2 != null ? l2.attraction : null;
            if (!TextUtils.isEmpty(string)) {
                str3 = awf.c(string, "\n\n");
            }
        } else if (!TextUtils.isEmpty(str) && (ae = acr.ae(this.aa, str)) != null) {
            elf elfVar2 = this.aa;
            int i = ae.j;
            string = i != -1 ? elfVar2.getString(i) : null;
            if (!TextUtils.isEmpty(string)) {
                str3 = awf.c(string, "\n\n");
            }
        }
        StringBuilder o = awf.o(str3);
        o.append(getString(R.string.donation_app_desc));
        bundle.putString("donation_desc", o.toString());
        f.a.e eVar = this.k.f14436a;
        eVar.getClass();
        fvy fvyVar = new fvy();
        eVar.f12718d = fvyVar;
        kj.t(this, fvyVar, bundle, false);
    }

    public final boolean ae(fxe.b bVar, String str) {
        if (bVar != null && bVar.isPromotion && !TextUtils.isEmpty(bVar.title) && !this.aa.getPackageName().equals(bVar.packageName)) {
            String d2 = dlb.d(System.currentTimeMillis(), dlb.f14355b);
            if (d2.compareToIgnoreCase(bVar.beginDate) >= 0 && d2.compareToIgnoreCase(bVar.endDate) <= 0) {
                int av = cro.av(this.aa, 0, str);
                int i = bVar.promotionId;
                if (i > av) {
                    cro.az(this.aa, i, str);
                    return true;
                }
            }
        }
        return false;
    }

    public final void af() {
        if (this.i) {
            ac();
            return;
        }
        ac();
        if (ae(atf.g(this).l(), "LAST_DIALOG_PROMOTION_ID")) {
            new Handler().postDelayed(new fwo(this, 2), 800L);
        }
    }

    public final void ag() {
        RecyclerView recyclerView;
        View view;
        if (TextUtils.isEmpty(this.v)) {
            return;
        }
        dmr dmrVar = this.k;
        String str = this.v;
        HashMap hashMap = dmrVar.i;
        int intValue = hashMap.containsKey(str) ? ((Integer) hashMap.get(str)).intValue() : -1;
        if (intValue < 0 || (recyclerView = this.u) == null) {
            return;
        }
        androidx.recyclerview.widget.p findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(intValue);
        if (findViewHolderForAdapterPosition == null || (view = findViewHolderForAdapterPosition.n) == null) {
            this.u.scrollToPosition(r1.getAdapter().getItemCount() - 1);
            new Handler().postDelayed(new dj(this, intValue, 2), 500L);
        } else {
            boolean z = this.m;
            int i = this.p;
            view.performClick();
            this.v = null;
            this.m = z;
            this.p = i;
        }
    }

    public final void ah() {
        if (1 == this.p && Settings.System.getInt(fgj.d(this.aa).getContentResolver(), "always_finish_activities", 0) == 1) {
            boolean z = getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("last_shortcut_is_under_dka_mode", false);
            cro.af(this, "last_shortcut_is_under_dka_mode", !z);
            if (z) {
                finish();
                return;
            }
        }
        if ("dont_keep_activities".equals(this.v) && 1 == this.p) {
            long j = getSharedPreferences("TrineaAndroidCommon", 0).getLong("last_dka_by_shortcut_time", -1L);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - j >= PushUIConfig.dismissTime) {
                acw.s(this, "last_dka_by_shortcut_time", currentTimeMillis);
            } else {
                this.v = null;
                this.p = 2;
            }
        }
    }

    public final void ai() {
        if (fml.e(this.aa)) {
            bannerAdInit(fml.f(this.aa), fml.c(this.aa));
            bannerAdShow();
        }
        if (fml.h(this.aa)) {
            try {
                String f2 = fml.f(this.aa);
                elf elfVar = this.aa;
                fullScreenAdInit(f2, elfVar.getString(byh.aj(elfVar) ? R.string.ad_unit_id_full_c : R.string.ad_unit_id_full_g));
            } catch (Exception unused) {
            }
        }
    }

    @Override // g.cgm
    public final void f() {
        this.k.getClass();
    }

    @Override // g.cgm
    public final void g() {
        this.k.g();
    }

    @Override // g.cgm
    public final void h(String str) {
        this.k.h(str);
    }

    @Override // g.dms, g.aa
    public final boolean isDisplayHomeAsUpEnabled() {
        return false;
    }

    @Override // g.dms, g.aa
    public final boolean isEnterLeaveAnim() {
        return false;
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        dmr dmrVar = this.k;
        f.a.e eVar = dmrVar.f14436a;
        if (eVar != null && i == 1001) {
            eVar.l(new gqc(dmrVar, i2, 10));
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        this.aa = this;
        dmr dmrVar = new dmr();
        dmrVar.f14438c = false;
        dmrVar.f14439d = this;
        dmrVar.f14440e = this;
        dmrVar.i = new HashMap();
        this.k = dmrVar;
        Intent intent = getIntent();
        if (intent != null) {
            this.i = intent.getBooleanExtra("isFromPromotionNoti", false);
        }
        dmr dmrVar2 = this.k;
        elf elfVar = dmrVar2.f14439d;
        bys.f12466a = elfVar.getString(R.string.app_name_ua);
        dmrVar2.f14437b = new aco(3, dmrVar2);
        if (!elfVar.bindService(new Intent(elfVar, (Class<?>) f.a.e.class), dmrVar2.f14437b, 1)) {
            dmrVar2.l(1103, false);
        }
        this.w = (TextView) findViewById(R.id.tip);
        this.n = findViewById(R.id.content_layout);
        int integer = getResources().getInteger(R.integer.tool_span_count);
        this.u = (RecyclerView) findViewById(R.id.recycler_view);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(integer);
        gridLayoutManager.f251g = new fwd(this, integer, 1);
        this.u.setLayoutManager(gridLayoutManager);
        ai();
        acr.t = true;
        ab();
        this.f15751e = new bli(8);
        this.k.n();
        if (this.w.getVisibility() != 0) {
            dqe.k(this).o(cyz.f13786c);
        }
        this.s = new sr(5, this);
        fzn.l(this.aa).v(this.s, new IntentFilter("cn.trinea.android.developertools.ACTION_AUTO_CLICK_TOOL"));
        this.q = new emb(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("first_use_accessibility");
        intentFilter.addAction("cacu");
        intentFilter.addAction("cn.trinea.android.lib.ACTION_TOOL_UPDATE");
        intentFilter.addAction("c.t.d.p.bdf");
        intentFilter.addAction("l");
        intentFilter.addAction("inspector_first_finish");
        intentFilter.addAction("finish");
        fzn.l(this.aa).v(this.q, intentFilter);
        byh.bb(this, byh.av(this, getSharedPreferences("TrineaAndroidCommon", 0).getInt("startup_times", 0), "startup_times") + 1, "startup_times");
        eg.m(this.aa, "main");
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        fxe.b l;
        getMenuInflater().inflate(R.menu.main, menu);
        eg.af(this.aa, "setting");
        eg.af(this.aa, "main_share");
        menu.findItem(R.id.share).setVisible(true);
        fxe.e m = atf.g(this).m();
        boolean z = m != null && m.isShowBrothers;
        menu.findItem(R.id.alliance).setVisible(z);
        if (z) {
            menu.findItem(R.id.open_project).setVisible(false);
            eg.af(this.aa, "alliance");
        } else {
            eg.af(this.aa, "menu_open_project");
        }
        MenuItem findItem = menu.findItem(R.id.donation_version);
        boolean z2 = (this.k.m() || (l = atf.g(this).l()) == null || !l.isShow || byh.al(this.aa, atf.g(this).o())) ? false : true;
        findItem.setVisible(z2);
        if (z2) {
            eg.af(this.aa, "donation");
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.cms, g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        aco acoVar;
        if (this.s != null) {
            fzn.l(this.aa).u(this.s);
            this.s = null;
        }
        if (this.q != null) {
            fzn.l(this.aa).u(this.q);
        }
        dmr dmrVar = this.k;
        if (dmrVar.f14436a != null && (acoVar = dmrVar.f14437b) != null) {
            dmrVar.f14439d.unbindService(acoVar);
        }
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        ab();
        new Handler().postDelayed(new fwo(this, 0), 100L);
    }

    @Override // g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.setting) {
            eg.v(this.aa, "setting");
            fgj.e().f(this, new Intent(this.aa, (Class<?>) c.e.a.class));
            return true;
        }
        if (itemId == R.id.about) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("showa", fml.e(this));
            kj.t(this, new dmb(), bundle, false);
            eg.v(this.aa, "about");
            return true;
        }
        if (itemId == R.id.open_project) {
            bys.d(this, "op_source_menu_main");
            eg.v(this.aa, "menu_open_project");
            return true;
        }
        if (itemId == R.id.alliance) {
            fgj.e().f(this, new Intent(this, (Class<?>) dbz.class));
            eg.v(this.aa, "alliance");
            return true;
        }
        if (itemId == R.id.donation_version) {
            ad("pro", false);
            return true;
        }
        if (itemId != R.id.share) {
            return super.onOptionsItemSelected(menuItem);
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", getString(R.string.about_share_content, getString(R.string.about_download_url)));
        intent.setType("text/plain");
        fgj e2 = fgj.e();
        elf elfVar = this.aa;
        e2.f(elfVar, Intent.createChooser(intent, elfVar.getText(R.string.share)));
        eg.v(this.aa, "main_share");
        return true;
    }

    @Override // g.cms, androidx.fragment.app.u, android.app.Activity
    public final void onPause() {
        this.k.getClass();
        super.onPause();
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 100) {
            if (i != 101) {
                super.onRequestPermissionsResult(i, strArr, iArr);
                return;
            }
            if (this.x) {
                this.x = false;
                if (iArr.length > 0 && iArr[0] == 0 && eyt.am(this, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    if (eyt.am(this.aa, "android.permission.READ_PHONE_STATE") == 0) {
                        fso.y(this.aa, TTDownloadField.TT_ID, "success_permission_granted");
                    }
                    ag();
                    return;
                } else {
                    this.v = null;
                    if (eyt.am(this.aa, "android.permission.READ_PHONE_STATE") == 0) {
                        fso.y(this.aa, TTDownloadField.TT_ID, "fail_permission_denied");
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (this.x) {
            this.x = false;
            if (iArr.length <= 0 || iArr[0] != 0 || eyt.am(this, "android.permission.READ_PHONE_STATE") != 0) {
                this.v = null;
                if (eyt.am(this.aa, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    fso.y(this.aa, TTDownloadField.TT_ID, "fail_permission_denied");
                    return;
                }
                return;
            }
            HashMap hashMap = fl.f16954a;
            hashMap.remove("NetworkType");
            hashMap.remove("NetworkOperator");
            hashMap.remove("PhoneType");
            if (eyt.am(this.aa, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                fso.y(this.aa, TTDownloadField.TT_ID, "success_permission_granted");
            }
            ag();
        }
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, android.app.Activity
    public final void onResume() {
        super.onResume();
        cyz.al(this.k.f14439d);
        if (cyz.f13786c) {
            String f2 = fml.f(this.aa);
            elf elfVar = this.aa;
            fullScreenAdInit(f2, elfVar.getString(byh.aj(elfVar) ? R.string.ad_unit_id_full_c : R.string.ad_unit_id_full_g));
        }
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        fpl fplVar;
        Button l;
        String str;
        String str2;
        super.onStart();
        int i = 7;
        if (dyd.av(this.aa) && ((fplVar = this.j) == null || !fplVar.isShowing())) {
            boolean an = cro.an(this.aa, "is_showed_privacy_tips", false);
            String ak = cro.ak(this.aa, "pagreeVersion", null);
            String ak2 = cro.ak(this.aa, "uagreeVersion", null);
            boolean isEmpty = TextUtils.isEmpty(ak);
            fxe p = atf.g(this.aa).p();
            fxe.c cVar = p == null ? null : p.agreement;
            boolean z = TextUtils.isEmpty(ak) || !(cVar == null || (str2 = cVar.uaVersion) == null || ak.equals(str2));
            boolean z2 = TextUtils.isEmpty(ak2) || !(cVar == null || (str = cVar.paVersion) == null || ak2.equals(str));
            if (isEmpty || z || z2) {
                Spanned fromHtml = isEmpty ? an ? Html.fromHtml(getString(R.string.pri_mes, getString(R.string.ua_pa_update))) : Html.fromHtml(getString(R.string.pri_mes, "")) : z ? z2 ? Html.fromHtml(getString(R.string.pri_mes, getString(R.string.ua_pa_update))) : Html.fromHtml(getString(R.string.pri_mes, getString(R.string.ua_update))) : z2 ? Html.fromHtml(getString(R.string.pri_mes, getString(R.string.pa_update))) : Html.fromHtml(getString(R.string.pri_mes, ""));
                elf elfVar = this.aa;
                byh.k = false;
                cro.af(elfVar, "is_agree_newest_agreement", false);
                gqc gqcVar = new gqc(this);
                die dieVar = (die) gqcVar.z;
                gqcVar.am(R.string.pri_title);
                dieVar.m = fromHtml;
                gqcVar.ay(R.string.pri_agree, new fhd(this, cVar));
                int i2 = 3;
                gqcVar.x(R.string.pri_disagree, new fgw(i2, this));
                dieVar.p = false;
                fpl r = gqcVar.r();
                this.j = r;
                eyt.ay(this.aa, r);
                fpl fplVar2 = this.j;
                fplVar2.f12197e.i(fplVar2, new bcn(i2, new fvi(16, this)));
                fplVar2.setOnKeyListener(new fny(fplVar2));
                fpl fplVar3 = this.j;
                elf elfVar2 = this.aa;
                if (fplVar3 != null && (l = fplVar3.l(-1)) != null) {
                    l.setTextAppearance(elfVar2, R.style.BigBoldFont);
                }
                try {
                    ((TextView) this.j.findViewById(android.R.id.message)).setMovementMethod(LinkMovementMethod.getInstance());
                } catch (Exception e2) {
                    erl.ac(e2);
                }
                try {
                    int[] ag = fso.ag(this.aa);
                    int i3 = ag[0];
                    int i4 = ag[1];
                    int i5 = i3 > i4 ? (i4 * 7) / 9 : (i4 * 2) / 3;
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.copyFrom(this.j.getWindow().getAttributes());
                    this.j.getWindow().setLayout(layoutParams.width, i5);
                } catch (Exception e3) {
                    erl.ac(e3);
                }
            }
        }
        dqe.f(this);
        ert ae = acr.ae(this, "codekk_op");
        if (ae != null && !ae.f16054c && bys.c(this)) {
            ArrayList arrayList = new ArrayList();
            ert ae2 = acr.ae(this, "codekk_op");
            if (ae2 != null) {
                arrayList.add(ae2);
            }
            ert ae3 = acr.ae(this, "codekk_op2");
            if (ae3 != null) {
                arrayList.add(ae3);
            }
            if (!acw.u(arrayList)) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ert ertVar = (ert) it.next();
                    if (ertVar != null) {
                        ertVar.f16054c = true;
                    }
                }
                this.l = true;
            }
        }
        if (this.l) {
            this.l = false;
            bzj bzjVar = this.r;
            if (bzjVar != null) {
                bzjVar.notifyDataSetChanged();
            }
        }
        if (this.z) {
            this.z = false;
            AccessibilityNodeInfo accessibilityNodeInfo = ern.f16037c;
            if (!ern.h(this, SelectToSpeakService.class.getName())) {
                this.v = null;
                return;
            } else {
                ag();
                ah();
                return;
            }
        }
        String str3 = this.v;
        if (str3 == null && this.m) {
            finish();
            this.m = false;
            return;
        }
        if (str3 == null) {
            if (this.i) {
                new Handler().postDelayed(new fwo(this, 1), 800L);
                return;
            }
            if (cro.an(this.aa, "rated", false) || cro.av(this.aa, 0, "last_rate_remind_count") >= 4 || cyz.f13786c) {
                return;
            }
            elf elfVar3 = this.aa;
            int av = byh.av(elfVar3, cro.av(elfVar3, 0, "startup_times"), "startup_times");
            int av2 = cro.av(this.aa, 0, "success_total_count");
            int av3 = cro.av(this.aa, 0, "last_rate_remind_count");
            int i6 = av2 / 12;
            if (((av < 4 || i6 <= 0) && (av != 1 || av2 < 15)) || i6 <= av3) {
                return;
            }
            cro.az(this.aa, i6, "last_rate_remind_count");
            View findViewById = findViewById(R.id.snackbar_layout);
            this.t = afo.az(findViewById, findViewById.getResources().getText(R.string.about_rate_desc), -2, findViewById.getResources().getText(R.string.about_rate_go), new get(i, this), false);
        }
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStop() {
        super.onStop();
        this.i = false;
        sd sdVar = this.t;
        if (sdVar != null) {
            sdVar.ak(3);
        }
    }
}
