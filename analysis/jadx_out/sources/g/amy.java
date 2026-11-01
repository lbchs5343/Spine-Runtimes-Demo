package g;

import a.u.e.TUE;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.tencent.bugly.crashreport.CrashReport;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class amy extends cms {

    /* renamed from: d, reason: collision with root package name */
    public dbv f10500d;

    /* renamed from: e, reason: collision with root package name */
    public amy f10501e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f10502f;

    /* renamed from: g, reason: collision with root package name */
    public ebw f10503g;
    public ImageView k;
    public String l;
    public RecyclerView m;
    public final ArrayList i = new ArrayList();
    public final HashSet j = new HashSet();
    public final HashSet n = new HashSet();
    public boolean h = false;

    @Override // g.dms
    public final View.OnClickListener getToolBarClickListener() {
        return new get(4, this);
    }

    @Override // g.dms
    public final View.OnLongClickListener getToolBarLongClickListener() {
        return new hcs(0, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void o(TextView textView, String str) {
        String str2;
        int i = 1;
        if (this.j.contains(str)) {
            SpannableString spannableString = new SpannableString(getString(R.string.app_info_section_action_hint, str));
            spannableString.setSpan(new RelativeSizeSpan(0.75f), str.length(), spannableString.length(), 33);
            str2 = spannableString;
        } else {
            str2 = str;
        }
        if (!TextUtils.equals(textView.getText(), str2)) {
            textView.setText(str2);
        }
        boolean contains = this.n.contains(str);
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, contains ? R.drawable.ic_setting_chevron_end : R.drawable.ic_app_section_expanded, 0);
        String string = getString(contains ? R.string.app_info_section_collapsed : R.string.app_info_section_expanded);
        WeakHashMap weakHashMap = goi.f18490c;
        new hej(R.id.tag_state_description, CharSequence.class, 64, 30, 2).f(textView, string);
        textView.setOnClickListener(new aww(this, i, str));
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ArrayList<String> stringArrayList;
        super.onCreate(bundle);
        setContentView(R.layout.activity_app_info);
        this.f10501e = this;
        if (bundle != null && (stringArrayList = bundle.getStringArrayList("app_info_collapsed_sections")) != null) {
            this.n.addAll(stringArrayList);
        }
        int i = 0;
        if (getIntent() != null) {
            this.h = getIntent().getBooleanExtra("show_ad_banner", false);
        }
        findViewById(R.id.icon_layout).setOnClickListener(new get(4, this));
        this.k = (ImageView) findViewById(R.id.icon);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.keyValueRV);
        this.m = recyclerView;
        int i2 = 1;
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        this.m.addOnLayoutChangeListener(new ewd());
        this.m.addOnScrollListener(new had(i, this));
        String str = null;
        String stringExtra = getIntent() != null ? getIntent().getStringExtra("package_name") : null;
        this.l = stringExtra;
        gtb gtbVar = new gtb(3);
        gtbVar.f18714d = this;
        if (TextUtils.isEmpty(stringExtra)) {
            gm.c(this.f10501e, R.string.app_package_name_is_null);
        } else {
            int i3 = Build.VERSION.SDK_INT >= 28 ? 134217728 : 64;
            int i4 = i3 | 4111;
            PackageInfo d2 = cwz.b(this).d(i4, stringExtra);
            if (d2 == null) {
                d2 = cwz.b(this).d(i3, stringExtra);
                if (d2 == null) {
                    gm.c(this.f10501e, R.string.app_package_info_is_null);
                }
            } else {
                i3 = i4;
            }
            ApplicationInfo applicationInfo = d2.applicationInfo;
            if (applicationInfo == null) {
                gm.c(this.f10501e, R.string.app_app_info_is_null);
                erl.ai("ApplicationInfo is null", new NullPointerException());
            } else {
                CharSequence loadLabel = applicationInfo.loadLabel(cwz.b(this).x);
                this.f10502f = loadLabel;
                setTitle(getString(R.string.app_info_title, loadLabel));
                try {
                    this.k.setImageDrawable(cwz.b(this).x.getApplicationIcon(stringExtra));
                } catch (PackageManager.NameNotFoundException unused) {
                }
                ArrayList arrayList = new ArrayList();
                gtbVar.f18712b = arrayList;
                arrayList.add(new dpj(getString(R.string.app_info_section_general)));
                gtbVar.j(stringExtra, d2, applicationInfo);
                PackageInfo d3 = (i3 & 4096) == 0 ? cwz.b(this).d(4096, stringExtra) : d2;
                String[] strArr = d3 != null ? d3.requestedPermissions : null;
                ((ArrayList) gtbVar.f18712b).add(new edn());
                ((ArrayList) gtbVar.f18712b).add(new dpj(getString(R.string.app_info_section_count, getString(R.string.app_info_section_permissions), Integer.valueOf(strArr == null ? 0 : strArr.length))));
                if (!acw.n(strArr)) {
                    int length = strArr.length;
                    while (i < length) {
                        String str2 = strArr[i];
                        if (str2 != null && !TextUtils.isEmpty(str2)) {
                            ((ArrayList) gtbVar.f18712b).add(new ce(str2));
                        }
                        i++;
                    }
                }
                if (!hca.g(stringExtra)) {
                    if ((i3 & 1) == 0) {
                        PackageInfo d4 = cwz.b(this).d(1, stringExtra);
                        if (d4 != null || acw.u(gtb.f(this, stringExtra))) {
                            gtbVar.k("ActivityInfo", d4 != null ? d4.activities : null);
                        } else {
                            ((ArrayList) gtbVar.f18712b).add(new edn());
                            ((ArrayList) gtbVar.f18712b).add(new dpj(getString(R.string.app_info_section_activities)));
                            ((ArrayList) gtbVar.f18712b).add(new ce(getString(R.string.app_activities_exceed_size)));
                            String str3 = "package: " + stringExtra + ", system: " + Build.VERSION.RELEASE + ", model: " + Build.MODEL;
                            if (erl.q != null) {
                                CrashReport.postCatchedException(new TUE("Activities exceed binder limit", str3));
                            }
                        }
                    } else {
                        gtbVar.k("ActivityInfo", d2.activities);
                    }
                    PackageInfo d5 = (i3 & 4) == 0 ? cwz.b(this).d(4, stringExtra) : d2;
                    gtbVar.k("ServiceInfo", d5 != null ? d5.services : null);
                    PackageInfo d6 = (i3 & 2) == 0 ? cwz.b(this).d(2, stringExtra) : d2;
                    gtbVar.k("ReceiverInfo", d6 != null ? d6.receivers : null);
                    if ((i3 & 8) == 0) {
                        d2 = cwz.b(this).d(8, stringExtra);
                    }
                    gtbVar.k("ProviderInfo", d2 != null ? d2.providers : null);
                }
                ArrayList arrayList2 = (ArrayList) gtbVar.f18712b;
                ebw ebwVar = this.f10503g;
                if (ebwVar != null) {
                    ebwVar.i();
                }
                ArrayList arrayList3 = this.i;
                arrayList3.clear();
                arrayList3.addAll(arrayList2);
                HashSet hashSet = this.j;
                hashSet.clear();
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    cng cngVar = (cng) it.next();
                    if (cngVar instanceof dpj) {
                        str = ((dpj) cngVar).f12721a;
                    } else if ((cngVar instanceof brq) && str != null) {
                        hashSet.add(str);
                    }
                }
                Context context = this.m.getContext();
                dbv dbvVar = new dbv(context, p());
                this.f10500d = dbvVar;
                ciz cizVar = new ciz(context);
                cizVar.f12961f = R.layout.item_app_info_value;
                dbvVar.g(th.class, cizVar);
                dbv dbvVar2 = this.f10500d;
                dx dxVar = new dx(context);
                dxVar.f12961f = R.layout.item_app_info_value;
                dbvVar2.g(ce.class, dxVar);
                dbv dbvVar3 = this.f10500d;
                has hasVar = new has();
                hasVar.f19145c = R.layout.item_app_info_space;
                dbvVar3.g(edn.class, hasVar);
                dbv dbvVar4 = this.f10500d;
                dxl dxlVar = new dxl();
                dxlVar.f15025e = context;
                dxlVar.f15024d = R.layout.item_app_info_name;
                dbvVar4.g(brq.class, dxlVar);
                dbv dbvVar5 = this.f10500d;
                dxl dxlVar2 = new dxl(this, context);
                dxlVar2.f15024d = R.layout.item_app_info_heading;
                dbvVar5.g(dpj.class, dxlVar2);
                this.m.setAdapter(this.f10500d);
                if (this.m.getItemDecorationCount() == 0) {
                    this.m.addItemDecoration(new clm(context));
                }
                this.f10503g = new ebw(this.m, (TextView) findViewById(R.id.pinned_section_title), this.f10500d.f13943c, new aoi(i2, this));
            }
        }
        if (this.h) {
            b.a.a aVar = (b.a.a) this;
            String f2 = fml.f(aVar.f10501e);
            amy amyVar = aVar.f10501e;
            bannerAdInit(f2, amyVar.getString(byh.aj(amyVar) ? R.string.ad_unit_id_app_c : R.string.ad_unit_id_app_g));
            bannerAdShow();
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        if (TextUtils.isEmpty(this.l)) {
            return super.onCreateOptionsMenu(menu);
        }
        getMenuInflater().inflate(R.menu.app_info, menu);
        MenuItem findItem = menu.findItem(R.id.to_manifest);
        findItem.setVisible(true);
        if (hca.g(this.l)) {
            findItem.setVisible(false);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // g.cms, g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ebw ebwVar = this.f10503g;
        if (ebwVar != null) {
            ebwVar.i();
        }
        super.onDestroy();
    }

    @Override // g.dms, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!this.clickInterval.b()) {
            return super.onOptionsItemSelected(menuItem);
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.to_manifest) {
            amy amyVar = this.f10501e;
            String str = this.l;
            String bp = eyt.bp(this.f10502f);
            if (hca.g(str)) {
                gm.f(amyVar, R.string.manifest_dev_tool);
            } else {
                fgj.e().f(amyVar, new Intent(amyVar, (Class<?>) b.a.c.class).putExtra("PACKAGE_NAME", str).putExtra("APP_NAME", bp));
            }
        } else if (itemId == R.id.about) {
            eyt.bv(this.f10501e, this.l);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putStringArrayList("app_info_collapsed_sections", new ArrayList<>(this.n));
        super.onSaveInstanceState(bundle);
    }

    public final ArrayList p() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.i.iterator();
        boolean z = false;
        while (it.hasNext()) {
            cng cngVar = (cng) it.next();
            if (cngVar instanceof dpj) {
                z = this.n.contains(((dpj) cngVar).f12721a);
                arrayList.add(cngVar);
            } else if (!z || (cngVar instanceof edn)) {
                arrayList.add(cngVar);
            }
        }
        return arrayList;
    }
}
