package b.c;

import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import g.acw;
import g.afo;
import g.aqn;
import g.aug;
import g.auj;
import g.bef;
import g.buj;
import g.cng;
import g.cwz;
import g.dbv;
import g.dxn;
import g.edn;
import g.eqi;
import g.erl;
import g.ffb;
import g.fko;
import g.flo;
import g.fsk;
import g.fzn;
import g.gbm;
import g.gm;
import g.gq;
import g.gvs;
import g.hca;
import g.la;
import g.sd;
import g.sr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class d extends dxn {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f355d = 0;
    public LinearLayout aa;

    /* renamed from: ab, reason: collision with root package name */
    public RecyclerView f356ab;
    public eqi ac;

    /* renamed from: e, reason: collision with root package name */
    public LinearLayout f357e;

    /* renamed from: f, reason: collision with root package name */
    public String f358f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f359g;
    public sd h;
    public String i;
    public RecyclerView j;
    public String k;
    public TextView l;
    public ApplicationInfo m;
    public LinearLayout n;
    public TextView o;
    public LinearLayout p;
    public TextView q;
    public auj r;
    public sr s;
    public ProgressBar t;
    public d u;
    public String v;
    public ProgressBar w;
    public String x;
    public dbv y;
    public dbv z;

    public static void ad(LinkedHashMap linkedHashMap) {
        for (int i = 0; i < 11; i++) {
            String str = gq.f18562a[i];
            gq gqVar = new gq();
            gqVar.f18564c = str;
            gqVar.f18563b = new ArrayList();
            linkedHashMap.put(str, gqVar);
        }
    }

    public static void ae(RecyclerView recyclerView, ArrayList arrayList, String str) {
        String str2;
        if (acw.u(arrayList)) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            cng cngVar = (cng) arrayList.get(i);
            if ((cngVar instanceof fko) && (str2 = ((fko) cngVar).f18835b) != null) {
                if (str2.contains(str + "(")) {
                    ((LinearLayoutManager) recyclerView.getLayoutManager()).bw(i, 0);
                    return;
                }
            }
        }
    }

    public final void af() {
        this.j.setVisibility(0);
        this.j.setAlpha(1.0f);
        this.j.setEnabled(true);
        this.aa.setVisibility(8);
        this.t.setVisibility(8);
        this.q.setVisibility(8);
    }

    public final void ag(LinkedHashMap linkedHashMap) {
        al();
        if (afo.at(linkedHashMap)) {
            an(getString(R.string.no_so_file));
            return;
        }
        Iterator it = linkedHashMap.values().iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            if (((gq) it.next()).f18563b.size() > 0) {
                i2++;
            }
        }
        boolean z = i2 > 1;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        for (gq gqVar : linkedHashMap.values()) {
            ArrayList arrayList2 = gqVar.f18563b;
            String str = gqVar.f18564c;
            int size = arrayList2.size();
            if (size != 0) {
                i3 += size;
                Collections.sort(gqVar.f18563b, new aqn(10));
                if (z) {
                    TextView textView = new TextView(this.u);
                    textView.setText(str + "(" + size + ")");
                    textView.setGravity(17);
                    textView.setBackgroundResource(R.drawable.rounded_background_4);
                    textView.setTextAppearance(this.u, R.style.MiddleNormalFont);
                    textView.setOnClickListener(new flo(this, arrayList, gqVar, i));
                    int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.dp_4);
                    textView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, getResources().getDimensionPixelSize(R.dimen.dp_32));
                    layoutParams.gravity = 16;
                    textView.setLayoutParams(layoutParams);
                    this.n.addView(textView);
                    if (this.n.getChildCount() > 1) {
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                        layoutParams2.setMargins(getResources().getDimensionPixelSize(R.dimen.dp_6), 0, 0, 0);
                        textView.setLayoutParams(layoutParams2);
                    }
                } else {
                    findViewById(R.id.label_scroll).setVisibility(8);
                }
                arrayList.add(new fko(str + "(" + size + ")", "", gqVar.f18565d));
                Iterator it2 = gqVar.f18563b.iterator();
                while (it2.hasNext()) {
                    aug augVar = (aug) it2.next();
                    arrayList.add(new gvs(augVar.f10862a, buj.v(augVar.f10863b), augVar.f10862a));
                }
            }
        }
        if (i3 == 0) {
            an(getString(R.string.no_so_file));
            return;
        }
        this.o.setText(getString(z ? R.string.so_total_desc : R.string.so_total_desc_1, Integer.toString(i3)));
        this.o.setBackgroundColor(getResources().getColor(R.color.lighterGray));
        findViewById(R.id.label_scroll).setBackgroundColor(getResources().getColor(R.color.lighterGray));
        dbv dbvVar = new dbv(this.u, arrayList);
        this.y = dbvVar;
        la laVar = new la(this.u, 1);
        laVar.f19581f = "c.t.d.p.sf";
        dbvVar.g(gvs.class, laVar);
        dbv dbvVar2 = this.y;
        la laVar2 = new la(this, 0);
        laVar2.f19581f = "c.t.d.p.sf";
        dbvVar2.g(fko.class, laVar2);
        this.y.g(edn.class, new fsk(i));
        this.f356ab.setLayoutManager(new LinearLayoutManager(1));
        this.f356ab.setAdapter(this.y);
    }

    public final void ah() {
        auj aujVar = this.r;
        if (aujVar == null) {
            af();
            gm.f(this.u, R.string.save_failed);
            return;
        }
        if (hca.g(aujVar.h)) {
            af();
            gm.f(this.u, R.string.so_dev_tool);
            return;
        }
        sd sdVar = this.h;
        if (sdVar != null) {
            sdVar.ak(3);
            this.h = null;
        }
        String string = getString(R.string.saving);
        this.j.setVisibility(0);
        this.j.setAlpha(0.1f);
        this.j.setEnabled(false);
        this.f359g.setVisibility(0);
        this.p.setVisibility(0);
        this.aa.setVisibility(0);
        this.t.setVisibility(0);
        this.q.setVisibility(0);
        this.q.setText(string);
        ffb.as().execute(new gbm(this, 3));
    }

    public final void ai(String str) {
        this.j.setVisibility(8);
        this.t.setVisibility(8);
        this.f359g.setVisibility(8);
        this.p.setVisibility(8);
        this.aa.setVisibility(0);
        this.q.setVisibility(0);
        this.q.setText(str);
    }

    public final void aj(LinkedHashMap linkedHashMap) {
        String str;
        af();
        if (afo.at(linkedHashMap)) {
            ai(getString(R.string.no_so_file2));
            return;
        }
        Iterator it = linkedHashMap.values().iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            if (((gq) it.next()).f18563b.size() > 0) {
                i2++;
            }
        }
        int i3 = 1;
        boolean z = i2 > 1;
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        for (gq gqVar : linkedHashMap.values()) {
            ArrayList arrayList2 = gqVar.f18563b;
            String str2 = gqVar.f18564c;
            int size = arrayList2.size();
            if (size != 0) {
                i4 += size;
                Collections.sort(gqVar.f18563b, new aqn(11));
                if (z) {
                    TextView textView = new TextView(this.u);
                    textView.setText(str2 + "(" + size + ")");
                    textView.setGravity(17);
                    textView.setBackgroundResource(R.drawable.rounded_background_4);
                    textView.setTextAppearance(this.u, R.style.MiddleNormalFont);
                    textView.setOnClickListener(new flo(this, arrayList, gqVar, i3));
                    int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.dp_4);
                    textView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, getResources().getDimensionPixelSize(R.dimen.dp_32));
                    layoutParams.gravity = 16;
                    textView.setLayoutParams(layoutParams);
                    this.p.addView(textView);
                    if (this.p.getChildCount() > 1) {
                        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                        layoutParams2.setMargins(getResources().getDimensionPixelSize(R.dimen.dp_6), 0, 0, 0);
                        textView.setLayoutParams(layoutParams2);
                    }
                } else {
                    findViewById(R.id.label_scroll2).setVisibility(8);
                }
                arrayList.add(new fko(str2 + "(" + size + ")", getString(R.string.so_path, gqVar.f18565d), gqVar.f18565d));
                Iterator it2 = gqVar.f18563b.iterator();
                while (it2.hasNext()) {
                    aug augVar = (aug) it2.next();
                    String str3 = augVar.f10862a;
                    int length = str3.length();
                    String str4 = gqVar.f18565d + 1;
                    if (length >= (str4 == null ? 0 : str4.length())) {
                        String str5 = gqVar.f18565d + 1;
                        str = str3.substring(str5 == null ? 0 : str5.length());
                    } else {
                        str = str3;
                    }
                    arrayList.add(new gvs(str, buj.v(augVar.f10863b), str3));
                }
            }
        }
        if (i4 == 0) {
            ai(getString(R.string.no_so_file2));
            return;
        }
        this.f359g.setText(getString(z ? R.string.so_total_desc2 : R.string.so_total_desc2_1, Integer.toString(i4)));
        this.f359g.setBackgroundColor(getResources().getColor(R.color.lighterGray));
        findViewById(R.id.label_scroll2).setBackgroundColor(getResources().getColor(R.color.lighterGray));
        dbv dbvVar = new dbv(this.u, arrayList);
        this.z = dbvVar;
        la laVar = new la(this.u, 1);
        laVar.f19581f = "c.t.d.p.sf2";
        dbvVar.g(gvs.class, laVar);
        dbv dbvVar2 = this.z;
        la laVar2 = new la(this, 0);
        laVar2.f19581f = "c.t.d.p.sf2";
        dbvVar2.g(fko.class, laVar2);
        this.z.g(edn.class, new fsk(i));
        this.j.setLayoutManager(new LinearLayoutManager(1));
        this.j.setAdapter(this.z);
    }

    public final void ak() {
        auj aujVar = this.r;
        if (aujVar == null) {
            al();
            gm.f(this.u, R.string.save_failed);
            return;
        }
        if (hca.g(aujVar.h)) {
            al();
            gm.f(this.u, R.string.so_dev_tool);
            return;
        }
        sd sdVar = this.h;
        if (sdVar != null) {
            sdVar.ak(3);
            this.h = null;
        }
        String string = getString(R.string.saving);
        this.f356ab.setVisibility(0);
        this.f356ab.setAlpha(0.1f);
        this.f356ab.setEnabled(false);
        this.o.setVisibility(0);
        this.n.setVisibility(0);
        this.f357e.setVisibility(0);
        this.w.setVisibility(0);
        this.l.setVisibility(0);
        this.l.setText(string);
        ffb.as().execute(new gbm(this, 2));
    }

    public final void al() {
        this.f356ab.setVisibility(0);
        this.f356ab.setAlpha(1.0f);
        this.f356ab.setEnabled(true);
        this.f357e.setVisibility(8);
        this.w.setVisibility(8);
        this.l.setVisibility(8);
    }

    public final void am(String str) {
        runOnUiThread(new bef(this, str, 0));
    }

    public final void an(String str) {
        this.f356ab.setVisibility(8);
        this.w.setVisibility(8);
        this.o.setVisibility(8);
        this.n.setVisibility(8);
        this.f357e.setVisibility(0);
        this.l.setVisibility(0);
        this.l.setText(str);
    }

    @Override // g.ub, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setContentView(R.layout.activity_so_list);
    }

    @Override // g.cms, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_so_list);
        this.u = this;
        if (getIntent() != null) {
            this.x = getIntent().getStringExtra("package_name");
        }
        this.f357e = (LinearLayout) findViewById(R.id.loading_layout);
        this.w = (ProgressBar) findViewById(R.id.progress_bar);
        this.l = (TextView) findViewById(R.id.tip);
        this.o = (TextView) findViewById(R.id.desc);
        this.n = (LinearLayout) findViewById(R.id.label_layout);
        this.f356ab = (RecyclerView) findViewById(R.id.recycler_view);
        this.aa = (LinearLayout) findViewById(R.id.loading_layout2);
        this.t = (ProgressBar) findViewById(R.id.progress_bar2);
        this.q = (TextView) findViewById(R.id.tip2);
        this.f359g = (TextView) findViewById(R.id.desc2);
        this.p = (LinearLayout) findViewById(R.id.label_layout2);
        this.j = (RecyclerView) findViewById(R.id.recycler_view2);
        this.ac = new eqi(this, 5);
        this.s = new sr(8, this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("c.t.d.p.sf");
        intentFilter.addAction("c.t.d.p.sf2");
        fzn.l(this).v(this.s, intentFilter);
        int i = 0;
        auj c2 = cwz.b(this.u).c(this.x, false);
        this.r = c2;
        int i2 = 1;
        if (c2 == null) {
            am(getString(R.string.app_app_info_is_null));
            runOnUiThread(new bef(this, getString(R.string.app_app_info_is_null), 1));
            erl.ai("So List applicationInfo is null", new NullPointerException());
            return;
        }
        setTitle(getString(R.string.so_list_title, c2.j));
        if (!afo.at(this.r.f10867c) || !afo.at(this.r.f10869e)) {
            if (!afo.at(this.r.f10867c)) {
                ag(this.r.f10867c);
            }
            if (afo.at(this.r.f10869e)) {
                return;
            }
            aj(this.r.f10869e);
            return;
        }
        Thread thread = new Thread(new gbm(this, i), "Dev Tools load so in apk thread");
        thread.setPriority(6);
        thread.start();
        Thread thread2 = new Thread(new gbm(this, i2), "Dev Tools load installed so thread");
        thread2.setPriority(6);
        thread2.start();
    }

    @Override // g.cms, g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        fzn.l(this.u).u(this.s);
        this.s = null;
        super.onDestroy();
    }
}
