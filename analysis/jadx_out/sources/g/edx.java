package g;

import a.v.DragLinearLayout;
import a.v.ScrollViewWithMaxHeight;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class edx extends eib implements View.OnClickListener, View.OnLongClickListener, eha {
    public String ac;
    public efq ad;
    public View ae;
    public View ah;
    public TextView ai;
    public aco aj;

    /* renamed from: f, reason: collision with root package name */
    public fri f15387f;

    /* renamed from: g, reason: collision with root package name */
    public View f15388g;
    public View h;
    public Intent i;
    public LinkedHashMap j;
    public TextView k;
    public View l;
    public efq n;
    public gpu o;
    public c.b.ab p;
    public ScrollViewWithMaxHeight r;
    public int s;
    public View t;
    public boolean u;
    public View v;
    public cgg x;
    public List y;

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicInteger f15386e = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    public static boolean f15385d = false;
    public boolean q = false;
    public boolean af = false;
    public boolean ag = false;
    public he m = null;
    public final bcn ak = new bcn(this, 6, false);

    public static void al(edx edxVar) {
        if (edxVar.ag) {
            return;
        }
        edxVar.ag = true;
        View inflate = LayoutInflater.from(edxVar).inflate(R.layout.dialog_tc_find, (ViewGroup) null);
        EditText editText = (EditText) inflate.findViewById(R.id.find_text);
        editText.setOnKeyListener(new cwd(edxVar, editText));
        gqc gqcVar = new gqc(edxVar);
        die dieVar = (die) gqcVar.z;
        gqcVar.am(R.string.tc_text_search);
        dieVar.u = inflate;
        dieVar.n = 0;
        dieVar.p = true;
        gqcVar.ay(R.string.manifest_search, new dtm(edxVar, editText, 3));
        gqcVar.x(R.string.alert_dialog_cancel, new efa(2));
        dieVar.f14220e = new bml(edxVar, 0);
        eyt.ay(edxVar.bc, gqcVar.r());
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0084, code lost:
    
        if (((r5 == null || (r5 = r5.toString()) == null) ? false : r5.contains(r8)) != false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void am(edx edxVar, Editable editable) {
        LinkedHashSet<he> linkedHashSet;
        String charSequence;
        String charSequence2;
        String charSequence3;
        if (TextUtils.isEmpty(editable)) {
            return;
        }
        if (edxVar.m == null) {
            linkedHashSet = null;
        } else {
            linkedHashSet = new LinkedHashSet();
            ArrayList arrayList = new ArrayList();
            LinkedList linkedList = new LinkedList();
            linkedList.add(edxVar.m);
            while (!linkedList.isEmpty()) {
                he heVar = (he) linkedList.poll();
                if (heVar != null) {
                    CharSequence text = heVar.getText();
                    if (!((text == null || (charSequence = text.toString()) == null) ? false : charSequence.contains(editable))) {
                        CharSequence contentDescription = heVar.getContentDescription();
                        if (!((contentDescription == null || (charSequence2 = contentDescription.toString()) == null) ? false : charSequence2.contains(editable))) {
                            CharSequence paneTitle = heVar.getPaneTitle();
                            if (!((paneTitle == null || (charSequence3 = paneTitle.toString()) == null) ? false : charSequence3.contains(editable))) {
                                CharSequence hintText = heVar.getHintText();
                            }
                        }
                    }
                    linkedHashSet.add(heVar);
                    if (!arrayList.contains(heVar)) {
                        arrayList.add(heVar);
                        for (int i = 0; i < heVar.getChildCount(); i++) {
                            he child = heVar.getChild(i);
                            if (child != null) {
                                linkedList.offer(child);
                            }
                        }
                    }
                }
            }
        }
        if (acw.u(linkedHashSet)) {
            gm.g(edxVar.bc, R.string.tc_text_search_no_result, editable);
            return;
        }
        for (he heVar2 : linkedHashSet) {
            heVar2.setInspected(true);
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            acw.ax(linkedHashSet2, heVar2.getText());
            acw.ax(linkedHashSet2, heVar2.getContentDescription());
            acw.ax(linkedHashSet2, heVar2.getPaneTitle());
            acw.ax(linkedHashSet2, heVar2.getHintText());
            if (!linkedHashSet2.isEmpty()) {
                edxVar.j.put(heVar2, linkedHashSet2);
            }
        }
        edxVar.ao();
        edxVar.p.invalidate();
    }

    @Override // g.eib
    public final String aa() {
        return aky.o(this.bc, R.string.tc_accessibility_permission, R.string.acb, R.string.accessibility_permission_message_sufffix_null);
    }

    @Override // g.eib
    public final void ab() {
        if (bfc.ac(this.bc)) {
            this.ai.setVisibility(8);
            this.p.setVisibility(0);
        }
    }

    public final boolean an() {
        int i;
        fri friVar = this.f15387f;
        int i2 = 0;
        if (friVar != null) {
            int i3 = 1;
            if (friVar.f17289f) {
                if (ar()) {
                    at();
                    return true;
                }
            } else if ((!this.u || !au()) && w()) {
                if (!bfc.ac(this.bc)) {
                    ap();
                    return false;
                }
                fri friVar2 = this.f15387f;
                if (!friVar2.f17289f) {
                    synchronized (fri.class) {
                        friVar2.f17289f = true;
                        fri.f17284a = true;
                    }
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(fso.ao(friVar2.j, friVar2.h), -2, 2010, 262440, -2);
                    layoutParams.gravity = 53;
                    fri friVar3 = friVar2.j;
                    HashMap hashMap = fnp.f17095b;
                    try {
                        i = cux.as(friVar3);
                    } catch (Exception e2) {
                        erl.ac(e2);
                        i = 0;
                    }
                    if (i <= 0) {
                        i = friVar2.j.getResources().getDimensionPixelSize(R.dimen.dp_32);
                    }
                    layoutParams.y = i;
                    if (dyd.bp(26)) {
                        layoutParams.type = 2038;
                    }
                    View inflate = LayoutInflater.from(friVar2).inflate(R.layout.window_text_copy_operate, (ViewGroup) null);
                    friVar2.i = inflate;
                    DragLinearLayout dragLinearLayout = (DragLinearLayout) inflate.findViewById(R.id.container);
                    if (dzm.bd(friVar2) < 2245) {
                        ((View) friVar2.i.findViewById(R.id.inspect).getParent()).setVisibility(8);
                    }
                    View findViewById = friVar2.i.findViewById(R.id.inspect);
                    friVar2.o = findViewById;
                    findViewById.setOnClickListener(new eyz(friVar2, i2));
                    friVar2.o.setOnLongClickListener(friVar2);
                    View findViewById2 = friVar2.i.findViewById(R.id.find);
                    friVar2.f17286c = findViewById2;
                    findViewById2.setOnClickListener(new eyz(friVar2, i3));
                    friVar2.f17286c.setOnLongClickListener(friVar2);
                    View findViewById3 = friVar2.i.findViewById(R.id.close);
                    friVar2.f17285b = findViewById3;
                    findViewById3.setOnClickListener(new eyz(friVar2, 2));
                    friVar2.f17285b.setOnLongClickListener(friVar2);
                    View findViewById4 = friVar2.i.findViewById(R.id.exit);
                    friVar2.k = findViewById4;
                    findViewById4.setOnClickListener(new eyz(friVar2, 3));
                    friVar2.k.setOnLongClickListener(friVar2);
                    View findViewById5 = friVar2.i.findViewById(R.id.more);
                    friVar2.f17287d = findViewById5;
                    findViewById5.setOnClickListener(new eyz(friVar2, 4));
                    friVar2.f17287d.setOnLongClickListener(friVar2);
                    friVar2.m.b();
                    dragLinearLayout.setOnDragListener(new gjs(friVar2, new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}, new int[]{0, 0}, new int[]{0, 0}, layoutParams, 1));
                    friVar2.l.addView(friVar2.i, layoutParams);
                    if (!acw.o(friVar2.j, "tc_tips_switch_app")) {
                        gm.c(friVar2.j, R.string.tx_switch_app);
                    }
                }
                if (ar()) {
                    at();
                }
            }
            return true;
        }
        return false;
    }

    public final void ao() {
        this.ak.g(!afo.at(this.j));
        String ax = ax();
        if (!TextUtils.isEmpty(ax)) {
            this.k.setText(ax);
        }
        this.ae.setVisibility(0);
        new Handler().postDelayed(new clt(this, 2), 200L);
    }

    public final void ap() {
        int i;
        synchronized (eib.class) {
            try {
                if (this.q) {
                    return;
                }
                if (bfc.ac(this.bc)) {
                    return;
                }
                synchronized (eib.class) {
                    i = 1;
                    this.q = true;
                }
                CharSequence e2 = fyt.e(this.bc, "android.permission.SYSTEM_ALERT_WINDOW");
                eib eibVar = this.bc;
                gqc gqcVar = new gqc(this);
                gqcVar.am(R.string.title_request_permission);
                ((die) gqcVar.z).m = getString(R.string.content_request_permission2, e2, getString(R.string.tc_windiw_permission_usage));
                gqcVar.ay(R.string.alert_dialog_ok, new fdi(this, i));
                gqcVar.x(R.string.alert_dialog_cancel, new fdi(this, 0));
                ((die) gqcVar.z).f14220e = new bml(this, 1);
                eyt.ay(eibVar, gqcVar.r());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void aq() {
        int i = this.s + 1;
        this.s = i;
        if (ar()) {
            this.u = false;
            an();
            return;
        }
        this.u = true;
        cdl cdlVar = new cdl(this, i, 4);
        if ("notification".equals(this.ac)) {
            new Handler().postDelayed(cdlVar, 1000L);
        } else {
            cdlVar.run();
        }
    }

    public final boolean ar() {
        return getIntent().getBooleanExtra("layout_control_window_only", false) && !getIntent().getBooleanExtra("layout_snapshot_prepared", false) && au();
    }

    public final void as() {
        if (!afo.at(this.j)) {
            for (he heVar : this.j.keySet()) {
                if (heVar != null) {
                    heVar.setInspected(false);
                }
            }
            this.j.clear();
            this.ak.g(false);
            this.p.invalidate();
        }
        this.ae.setVisibility(8);
    }

    public final void at() {
        if (atf.g(this).n() < 0) {
            return;
        }
        fzn.l(getApplicationContext()).q(new Intent("inspector_first_finish"));
        finish();
    }

    public final boolean au() {
        int i = bus.f12241a;
        return cro.an(this, "shizuku_compatibility_mode_enabled", false) && ark.q(this).w();
    }

    public final void aw(he heVar) {
        this.m = heVar;
        ka.x(heVar);
        if (au()) {
            an();
        }
        ern.f16036b = true;
        if (this.m != null) {
            fzn.l(getApplicationContext()).q(new Intent("inspector_first_finish"));
            if (!this.p.s(this.m) || acw.o(this.bc, "tc_tips_click_zone")) {
                return;
            }
            gm.c(this.bc, R.string.tc_cd_click_to_view);
            gm.c(this.bc, R.string.li_cd_back);
        }
    }

    public final String ax() {
        boolean an = cro.an(this.bc, "tc_content_reverse", false);
        boolean an2 = cro.an(this.bc, "tc_content_deduplication", false);
        ArrayList arrayList = new ArrayList();
        for (Set set : this.j.values()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                arrayList2.add((CharSequence) it.next());
            }
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                CharSequence charSequence = (CharSequence) it2.next();
                if (!an2 || !arrayList.contains(charSequence)) {
                    if (an) {
                        arrayList.add(0, charSequence);
                    } else {
                        arrayList.add(charSequence);
                    }
                }
            }
        }
        return TextUtils.join("\n", arrayList);
    }

    @Override // g.dms, g.aa
    public final boolean isDisplayHomeAsUpEnabled() {
        return !isTaskRoot();
    }

    @Override // g.dms, g.aa
    public final boolean isEnterLeaveAnim() {
        return !isTaskRoot();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == this.v.getId()) {
            as();
            return;
        }
        if (id == this.h.getId()) {
            eib eibVar = this.bc;
            cro.af(eibVar, "tc_content_reverse", true ^ cro.an(eibVar, "tc_content_reverse", false));
            ao();
            eib eibVar2 = this.bc;
            gm.e(eibVar2, cro.an(eibVar2, "tc_content_reverse", false) ? R.string.tc_reorder_open : R.string.tc_reorder_close);
            return;
        }
        if (id == this.t.getId()) {
            eib eibVar3 = this.bc;
            cro.af(eibVar3, "tc_content_deduplication", true ^ cro.an(eibVar3, "tc_content_deduplication", false));
            ao();
            eib eibVar4 = this.bc;
            gm.e(eibVar4, cro.an(eibVar4, "tc_content_deduplication", false) ? R.string.tc_deduplication_open : R.string.tc_deduplication_close);
            return;
        }
        if (id == this.l.getId()) {
            String ax = ax();
            if (TextUtils.isEmpty(ax)) {
                return;
            }
            fso.ae(this.bc, "", ax, true);
            return;
        }
        if (id == this.ah.getId()) {
            as();
            return;
        }
        if (id == this.f15388g.getId()) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", ax());
            intent.setType("text/plain");
            fgj.e().f(this.bc, Intent.createChooser(intent, getResources().getText(R.string.share)));
        }
    }

    @Override // g.ub, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.orientation;
        if (i == 2 || i == 1 || i == 3 || i == 15 || i == 2 || i == 1 || i == 0 || i == 4) {
            int i2 = 0;
            f15385d = i == 2;
            if (this.r != null) {
                int i3 = (fso.ag(this.bc)[1] * 6) / 20;
                this.r.setMinimumHeight(i3);
                this.r.setMaxHeight(i3);
                this.r.requestLayout();
            }
            c.b.ab abVar = this.p;
            if (abVar != null) {
                if (f15385d && fnp.m()) {
                    try {
                        i2 = cux.as(this);
                    } catch (Exception e2) {
                        erl.ac(e2);
                    }
                }
                abVar.setSpecialMarkUp(i2);
                this.p.requestLayout();
                this.p.invalidate();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0169  */
    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCreate(Bundle bundle) {
        int i;
        int i2 = 1;
        requestWindowFeature(1);
        super.onCreate(bundle);
        getOnBackPressedDispatcher().i(this, this.ak);
        setContentView(R.layout.activity_layout_text_copy);
        f15386e.incrementAndGet();
        this.bc = this;
        Intent intent = getIntent();
        if (intent != null) {
            this.ac = intent.getStringExtra(abn.EXTRA_SOURCE);
        }
        this.x = cro.aj(intent);
        int i3 = 0;
        f15385d = getResources().getConfiguration().orientation == 2;
        fso.av(findViewById(R.id.container), true);
        TextView textView = (TextView) findViewById(R.id.tips);
        this.ai = textView;
        int i4 = 12;
        textView.setOnClickListener(new get(i4, this));
        if (atf.g(this).n() < 0) {
            ((View) this.ai.getParent()).setVisibility(8);
        } else {
            View findViewById = findViewById(R.id.content);
            this.ae = findViewById;
            findViewById.setOnTouchListener(new fft(new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}, new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}));
            View findViewById2 = findViewById(R.id.copy);
            this.l = findViewById2;
            findViewById2.setOnClickListener(this);
            this.l.setOnLongClickListener(this);
            this.ah = findViewById(R.id.translate);
            View findViewById3 = findViewById(R.id.share);
            this.f15388g = findViewById3;
            findViewById3.setOnClickListener(this);
            this.f15388g.setOnLongClickListener(this);
            View findViewById4 = findViewById(R.id.close);
            this.v = findViewById4;
            findViewById4.setOnClickListener(this);
            this.v.setOnLongClickListener(this);
            View findViewById5 = findViewById(R.id.deduplication);
            this.t = findViewById5;
            findViewById5.setOnClickListener(this);
            this.t.setOnLongClickListener(this);
            View findViewById6 = findViewById(R.id.reorder);
            this.h = findViewById6;
            findViewById6.setOnClickListener(this);
            this.h.setOnLongClickListener(this);
            this.r = (ScrollViewWithMaxHeight) findViewById(R.id.content_scroll);
            int i5 = (fso.ag(this.bc)[1] * 6) / 20;
            this.r.setMinimumHeight(i5);
            this.r.setMaxHeight(i5);
            this.k = (TextView) findViewById(R.id.content_tv);
            c.b.ab abVar = (c.b.ab) findViewById(R.id.f21213ab);
            this.p = abVar;
            eib eibVar = this.bc;
            if (f15385d && fnp.m()) {
                try {
                    i = cux.as(eibVar);
                } catch (Exception e2) {
                    erl.ac(e2);
                }
                abVar.setSpecialMarkUp(i);
                c.b.ab abVar2 = this.p;
                gpu gpuVar = new gpu(i4);
                this.o = gpuVar;
                abVar2.setInspectorViewFilter(gpuVar);
                this.p.setOnTouchListener(new bcr(3, this));
                aq();
                if ("control_bar_find".equals(this.ac)) {
                    new Handler().postDelayed(new clt(this, i3), 1000L);
                }
            }
            i = 0;
            abVar.setSpecialMarkUp(i);
            c.b.ab abVar22 = this.p;
            gpu gpuVar2 = new gpu(i4);
            this.o = gpuVar2;
            abVar22.setInspectorViewFilter(gpuVar2);
            this.p.setOnTouchListener(new bcr(3, this));
            aq();
            if ("control_bar_find".equals(this.ac)) {
            }
        }
        super.initData();
        this.j = new LinkedHashMap();
        if (atf.g(this).n() < 0) {
            return;
        }
        this.aj = new aco(5, this);
        Intent intent2 = new Intent(this, (Class<?>) c.b.c.class);
        this.i = intent2;
        startService(intent2);
        bindService(this.i, this.aj, 1);
        this.ad = new efq(this, i3);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("inspector_close");
        intentFilter.addAction("inspector_refresh");
        intentFilter.addAction("find");
        fzn.l(this.bc).v(this.ad, intentFilter);
        this.n = new efq(this, i2);
        fzn.l(this).v(this.n, new IntentFilter("window_state_changed"));
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        this.s++;
        ArrayList arrayList = bew.f11414b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            elb elbVar = (elb) arrayList.get(size);
            if (elbVar.f15739b == getWindow()) {
                Window window = elbVar.f15739b;
                window.setLayout(elbVar.f15741d, elbVar.f15738a);
                window.clearFlags(elbVar.f15740c);
                arrayList.remove(size);
            }
        }
        if (bew.j && !bew.i.isEmpty() && arrayList.isEmpty()) {
            bew.q();
        }
        f15386e.decrementAndGet();
        if (this.n != null) {
            fzn.l(this).u(this.n);
        }
        if (this.ad != null) {
            fzn.l(this).u(this.ad);
        }
        aco acoVar = this.aj;
        if (acoVar != null) {
            unbindService(acoVar);
            this.aj = null;
        }
        Intent intent = this.i;
        if (intent != null && this.af) {
            stopService(intent);
        }
        this.az = false;
        ern.f16036b = false;
        super.onDestroy();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int id = view.getId();
        if (id == this.l.getId()) {
            gm.e(this.bc, R.string.copy);
            return true;
        }
        if (id == this.ah.getId()) {
            gm.e(this.bc, R.string.translate);
            return true;
        }
        if (id == this.f15388g.getId()) {
            gm.e(this.bc, R.string.share);
            return true;
        }
        if (id == this.v.getId()) {
            gm.e(this.bc, R.string.tc_close_tips);
            return true;
        }
        if (id == this.t.getId()) {
            gm.e(this.bc, R.string.tc_deduplication_tips);
            return true;
        }
        if (id != this.h.getId()) {
            return true;
        }
        gm.e(this.bc, R.string.tc_reorder_tips);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.ac = intent.getStringExtra(abn.EXTRA_SOURCE);
        if (this.p == null) {
            return;
        }
        as();
        this.m = null;
        this.p.s(null);
        aq();
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        new Handler().postDelayed(new clt(this, 1), 200L);
    }

    @Override // g.dms
    public final boolean useDarkSystemBarIcons() {
        return false;
    }

    @Override // g.eib
    public final boolean w() {
        if (yb.j(this, getIntent(), true)) {
            return false;
        }
        if (!au()) {
            return super.w();
        }
        ab();
        return true;
    }

    @Override // g.eib
    public final void z() {
        this.ai.setVisibility(0);
        this.p.setVisibility(8);
    }
}
