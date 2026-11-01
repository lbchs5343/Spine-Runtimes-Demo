package g;

import a.v.DragLinearLayout;
import a.v.DragRelativeLayout;
import a.v.RecyclerViewWithMaxHeight;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class baq extends eib implements View.OnClickListener, View.OnLongClickListener, eha {
    public eva ad;
    public View ae;
    public View af;
    public RecyclerViewWithMaxHeight ai;
    public TextView aj;
    public aco ak;
    public String al;

    /* renamed from: f, reason: collision with root package name */
    public ka f11186f;

    /* renamed from: g, reason: collision with root package name */
    public View f11187g;
    public View h;
    public Intent i;
    public he j;
    public View k;
    public TextView l;
    public List m;
    public eva n;
    public c.b.ab p;
    public View r;
    public View t;
    public cgg u;
    public View v;
    public Stack x;
    public dbv y;

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicInteger f11185e = new AtomicInteger(0);

    /* renamed from: d, reason: collision with root package name */
    public static boolean f11184d = false;
    public boolean q = false;
    public boolean ag = false;
    public boolean ac = false;
    public int o = 0;
    public he s = null;
    public final bcn ah = new bcn(this, 5, false);

    public static void am(baq baqVar) {
        if (atf.g(baqVar).n() < 0) {
            return;
        }
        fzn.l(baqVar.getApplicationContext()).q(new Intent("inspector_first_finish"));
        baqVar.finish();
    }

    public static boolean an(baq baqVar) {
        int i;
        ka kaVar = baqVar.f11186f;
        int i2 = 0;
        if (kaVar != null) {
            int i3 = 1;
            if (!kaVar.f19527g) {
                if (baqVar.w()) {
                    if (!bfc.ac(baqVar.bc)) {
                        baqVar.aq();
                        return false;
                    }
                    ka kaVar2 = baqVar.f11186f;
                    if (!kaVar2.f19527g) {
                        synchronized (ka.class) {
                            kaVar2.f19527g = true;
                            ka.f19521a = true;
                        }
                        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2010, 262440, -2);
                        layoutParams.gravity = 53;
                        ka kaVar3 = kaVar2.p;
                        HashMap hashMap = fnp.f17095b;
                        try {
                            i = cux.as(kaVar3);
                        } catch (Exception e2) {
                            erl.ac(e2);
                            i = 0;
                        }
                        if (i <= 0) {
                            i = kaVar2.p.getResources().getDimensionPixelSize(R.dimen.dp_32);
                        }
                        layoutParams.y = i;
                        if (dyd.bp(26)) {
                            layoutParams.type = 2038;
                        }
                        View inflate = LayoutInflater.from(kaVar2).inflate(R.layout.window_layout_inspector_operate, (ViewGroup) null);
                        kaVar2.n = inflate;
                        DragLinearLayout dragLinearLayout = (DragLinearLayout) inflate.findViewById(R.id.header);
                        if (dzm.bd(kaVar2) < 2245) {
                            ((View) dragLinearLayout.getParent()).setVisibility(8);
                        }
                        int i4 = 5;
                        ld ldVar = new ld(i4, kaVar2);
                        ((TextView) kaVar2.n.findViewById(R.id.title)).setOnClickListener(ldVar);
                        dragLinearLayout.setOnClickListener(ldVar);
                        View findViewById = kaVar2.n.findViewById(R.id.inspect);
                        kaVar2.v = findViewById;
                        findViewById.setOnClickListener(new bis(kaVar2, i2));
                        kaVar2.v.setOnLongClickListener(kaVar2);
                        View findViewById2 = kaVar2.n.findViewById(R.id.download);
                        kaVar2.f19526f = findViewById2;
                        findViewById2.setOnClickListener(new bis(kaVar2, i3));
                        kaVar2.f19526f.setOnLongClickListener(kaVar2);
                        View findViewById3 = kaVar2.n.findViewById(R.id.about);
                        kaVar2.f19524d = findViewById3;
                        findViewById3.setOnClickListener(new bis(kaVar2, 2));
                        kaVar2.f19524d.setOnLongClickListener(kaVar2);
                        View findViewById4 = kaVar2.n.findViewById(R.id.close);
                        kaVar2.q = findViewById4;
                        findViewById4.setOnClickListener(new bis(kaVar2, 3));
                        kaVar2.q.setOnLongClickListener(kaVar2);
                        View findViewById5 = kaVar2.n.findViewById(R.id.exit);
                        kaVar2.h = findViewById5;
                        findViewById5.setOnClickListener(new bis(kaVar2, 4));
                        kaVar2.h.setOnLongClickListener(kaVar2);
                        View findViewById6 = kaVar2.n.findViewById(R.id.more);
                        kaVar2.k = findViewById6;
                        findViewById6.setOnClickListener(new bis(kaVar2, i4));
                        kaVar2.k.setOnLongClickListener(kaVar2);
                        dragLinearLayout.setOnDragListener(new gjs(kaVar2, new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}, new int[]{0, 0}, new int[]{0, 0}, layoutParams, 0));
                        kaVar2.j = (RecyclerView) kaVar2.n.findViewById(R.id.recycler_view);
                        dbv dbvVar = new dbv(kaVar2, null);
                        kaVar2.u = dbvVar;
                        dbvVar.g(bfr.class, new ffi(kaVar2));
                        kaVar2.u.g(edn.class, new has());
                        kaVar2.u.i = new emr(10, kaVar2);
                        kaVar2.j.setLayoutManager(new LinearLayoutManager(1));
                        kaVar2.j.setAdapter(kaVar2.u);
                        kaVar2.i.addView(kaVar2.n, layoutParams);
                        if (!acw.o(kaVar2.p, "tips_switch_app")) {
                            gm.c(kaVar2.p, R.string.li_switch_app2);
                        }
                        kaVar2.l.b();
                        return true;
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // g.eib
    public final String aa() {
        return aky.o(this.bc, R.string.li_accessibility_permission, R.string.acb, R.string.accessibility_permission_message_sufffix_null);
    }

    @Override // g.eib
    public final void ab() {
        if (bfc.ac(this.bc)) {
            this.aj.setVisibility(8);
            this.p.setVisibility(0);
        }
    }

    public final void ao(he heVar, boolean z) {
        if (heVar == null) {
            as();
            return;
        }
        he heVar2 = this.j;
        if (heVar2 != null) {
            heVar2.setInspected(false);
            if (!z) {
                this.x.push(this.j);
            }
        }
        this.j = heVar;
        heVar.setInspected(true);
        this.ah.g(true);
        if (!acw.ae(this.bc, "tips_long_click_copy")) {
            gm.f(this.bc, R.string.li_cd_long_click_copy);
        }
        this.l.setText(getString(R.string.li_view_dialog_title, eyt.bk(heVar.getViewIdResourceNameHuman()), getString(R.string.li_cd_long_click_copy2)));
        ArrayList arrayList = new ArrayList();
        int viewId = heVar.getViewId(this.bc);
        arrayList.add(new gjv(heVar.getEventClassName(), getString(R.string.li_activity_name)));
        arrayList.add(new gjv(getString(R.string.li_view_id_hex), viewId == -1 ? getString(R.string.li_no_id) : heVar.getViewIdIdHex(this.bc)));
        arrayList.add(new th(getString(R.string.li_view_id_dec), viewId == -1 ? getString(R.string.li_no_id) : Long.toString(viewId)));
        arrayList.add(new th(getString(R.string.li_view_id_name), heVar.getViewIdResourceNameHuman()));
        arrayList.add(new th(heVar.getClassName(), getString(R.string.li_view_type)));
        arrayList.add(new th(heVar.getText(), getString(R.string.li_text)));
        arrayList.add(new th(getString(R.string.li_width), heVar.getWidth(this.bc)));
        arrayList.add(new th(getString(R.string.li_height), heVar.getHeight(this.bc)));
        this.t.setVisibility(0);
        this.v.setVisibility(0);
        if (heVar.getParentNodeInfo() != null) {
            this.h.setVisibility(0);
            arrayList.add(new glp(getString(R.string.li_parent_view), heVar.getParentNodeInfo()));
        } else {
            this.h.setVisibility(4);
            arrayList.add(new th(getString(R.string.li_parent_view), getString(R.string.li_no)));
        }
        int childCount = heVar.getChildCount();
        if (childCount > 0) {
            this.af.setVisibility(0);
            arrayList.add(new th(getString(R.string.li_child_view), getString(childCount > 1 ? R.string.li_several_children : R.string.li_one_child, Integer.valueOf(childCount))));
            for (he heVar3 : heVar.getChildNodeInfoList()) {
                arrayList.add(new vq());
                if (heVar3 != null) {
                    arrayList.add(new glp("", heVar3));
                } else {
                    arrayList.add(new th("", getString(R.string.li_empty)));
                }
            }
        } else {
            this.af.setVisibility(4);
            arrayList.add(new th(getString(R.string.li_child_view), getString(R.string.li_no)));
        }
        if (this.f11186f != null) {
            this.r.setVisibility(ka.w(this.j.getIndex() - 1) != null ? 0 : 4);
            View view = this.k;
            ka kaVar = this.f11186f;
            int index = this.j.getIndex() + 1;
            kaVar.getClass();
            view.setVisibility(ka.w(index) != null ? 0 : 4);
        }
        arrayList.add(new th(getString(R.string.li_layer), Integer.toString(heVar.getLayer())));
        arrayList.add(new th(getString(R.string.li_drawing_order_in_parent), Integer.toString(heVar.getDrawingOrderInParent())));
        arrayList.add(new th(heVar.getPackageName(), getString(R.string.li_package_name)));
        arrayList.add(new gjv(getString(R.string.li_bounds_in_screen), heVar.getBoundsInScreenSimple()));
        arrayList.add(new th(getString(R.string.li_bounds_in_screen_detail), heVar.getBoundsInScreenHuman(this.bc)));
        arrayList.add(new th(getString(R.string.li_bounds_in_parent), heVar.getBoundsInParentSimple()));
        arrayList.add(new th(getString(R.string.li_bounds_in_parent_detail), heVar.getBoundsInParentHuman(this.bc)));
        arrayList.add(new th(heVar.getContentDescription(), getString(R.string.li_content_description)));
        arrayList.add(new th(heVar.getOriginalText(), getString(R.string.li_original_text)));
        if (dyd.bp(28)) {
            arrayList.add(new th(heVar.getTooltipText(), "Tool Tip Text"));
        }
        if (dyd.bp(26)) {
            arrayList.add(new th(heVar.getHintText(), "Hint Text"));
        }
        arrayList.add(new th(heVar.getPaneTitle(), "Pane Title"));
        arrayList.add(new th(getString(R.string.li_is_visible_to_user), heVar.isVisibleToUser()));
        arrayList.add(new th(getString(R.string.li_is_clickable), heVar.isClickable()));
        arrayList.add(new th(getString(R.string.li_is_long_clickable), heVar.isLongClickable()));
        arrayList.add(new th(getString(R.string.li_is_enabled), heVar.isEnabled()));
        arrayList.add(new th(getString(R.string.li_is_focusable), heVar.isFocusable()));
        arrayList.add(new th(getString(R.string.li_is_focused), heVar.isFocused()));
        arrayList.add(new th(getString(R.string.li_is_checkable), heVar.isCheckable()));
        arrayList.add(new th(getString(R.string.li_is_checked), heVar.isChecked()));
        arrayList.add(new th(getString(R.string.li_is_scrollable), heVar.isScrollable()));
        arrayList.add(new th(getString(R.string.li_is_editable), heVar.isEditable()));
        arrayList.add(new th(getString(R.string.li_is_selected), heVar.isSelected()));
        arrayList.add(new th(getString(R.string.li_is_password), heVar.isPassword()));
        arrayList.add(new th(getString(R.string.li_is_multi_line), heVar.isMultiLine()));
        arrayList.add(new th("importantForAccessibility", heVar.isImportantForAccessibility()));
        arrayList.add(new th("accessibilityHeading", heVar.isHeading()));
        dbv dbvVar = this.y;
        if (dbvVar != null) {
            dbvVar.h(arrayList);
            this.y.notifyDataSetChanged();
            this.y.i = new evf(11, this);
        }
        this.ae.setVisibility(0);
        this.ai.scrollToPosition(0);
        this.p.invalidate();
    }

    public final void ap(List list) {
        if (acw.u(list)) {
            ar();
            this.ae.setVisibility(8);
            return;
        }
        int bo = acw.bo(list);
        this.l.setText(getString(R.string.li_views_dialog_title, Integer.valueOf(bo), getString(R.string.li_views_sort_rule)));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < bo) {
            he heVar = (he) list.get(i);
            i++;
            eyv eyvVar = new eyv(Integer.toString(i), au(heVar));
            eyvVar.f18362c = heVar;
            arrayList.add(eyvVar);
        }
        he heVar2 = this.j;
        if (heVar2 != null) {
            heVar2.setInspected(false);
        }
        he heVar3 = (he) list.get(this.o >= list.size() ? 0 : this.o);
        this.j = heVar3;
        heVar3.setInspected(true);
        this.ah.g(true);
        this.t.setVisibility(8);
        this.v.setVisibility(8);
        dbv dbvVar = this.y;
        if (dbvVar != null) {
            dbvVar.h(arrayList);
            this.y.notifyDataSetChanged();
            this.y.i = new fc(11, this);
        }
        this.ae.setVisibility(0);
        this.p.invalidate();
    }

    public final void aq() {
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
                ((die) gqcVar.z).m = getString(R.string.content_request_permission2, e2, getString(R.string.li_windiw_permission_usage));
                gqcVar.ay(R.string.alert_dialog_ok, new azj(this, i));
                gqcVar.x(R.string.alert_dialog_cancel, new azj(this, 0));
                ((die) gqcVar.z).f14220e = new du(5, this);
                eyt.ay(eibVar, gqcVar.r());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void ar() {
        he heVar = this.j;
        if (heVar != null) {
            heVar.setInspected(false);
            this.j = null;
        }
        this.x.clear();
        this.ah.g(false);
    }

    public final void as() {
        if (this.ac) {
            this.ac = false;
            ar();
            ap(this.m);
        } else {
            this.o = 0;
            ar();
            this.ae.setVisibility(8);
        }
    }

    public final void at() {
        fvi fviVar = new fvi(14, this);
        if ("notification".equals(this.al)) {
            new Handler().postDelayed(fviVar, 1000L);
        } else {
            fviVar.run();
        }
    }

    public final String au(he heVar) {
        ArrayList arrayList = new ArrayList();
        CharSequence text = heVar.getText();
        if (!TextUtils.isEmpty(text)) {
            if (text.length() > 20) {
                text = text.subSequence(0, 20);
            }
            acw.ax(arrayList, text.toString().replace("\n", ""));
        }
        acw.ax(arrayList, heVar.getClassName());
        ArrayList arrayList2 = new ArrayList();
        acw.ax(arrayList2, heVar.getViewIdResourceNameHuman());
        acw.ax(arrayList2, getString(heVar.getChildCount() > 1 ? R.string.li_several_children : R.string.li_one_child, Integer.valueOf(heVar.getChildCount())));
        acw.ax(arrayList, TextUtils.join(", ", arrayList2));
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
        he heVar;
        he heVar2;
        he w;
        he heVar3;
        he w2;
        int id = view.getId();
        if (id == this.h.getId()) {
            he heVar4 = this.j;
            heVar = heVar4 != null ? heVar4.getParentNodeInfo() : null;
            if (heVar != null) {
                ao(heVar, false);
                return;
            }
            return;
        }
        if (id == this.r.getId()) {
            if (this.f11186f == null || (heVar3 = this.j) == null || (w2 = ka.w(heVar3.getIndex() - 1)) == null) {
                return;
            }
            ao(w2, false);
            return;
        }
        if (id == this.k.getId()) {
            if (this.f11186f == null || (heVar2 = this.j) == null || (w = ka.w(heVar2.getIndex() + 1)) == null) {
                return;
            }
            ao(w, false);
            return;
        }
        if (id != this.af.getId()) {
            if (id == this.f11187g.getId()) {
                as();
            }
        } else {
            heVar = this.j.getChildCount() > 0 ? this.j.getChildNodeInfoList().get(0) : null;
            if (heVar != null) {
                ao(heVar, false);
            }
        }
    }

    @Override // g.ub, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.orientation;
        if (i == 2 || i == 1 || i == 3 || i == 15 || i == 2 || i == 1 || i == 0 || i == 4) {
            int i2 = 0;
            f11184d = i == 2;
            RecyclerViewWithMaxHeight recyclerViewWithMaxHeight = this.ai;
            if (recyclerViewWithMaxHeight != null) {
                recyclerViewWithMaxHeight.setMaxHeight((fso.ag(this.bc)[1] * 7) / 20);
                this.ai.requestLayout();
            }
            c.b.ab abVar = this.p;
            if (abVar != null) {
                if (f11184d && fnp.m()) {
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

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i;
        int i2 = 1;
        requestWindowFeature(1);
        super.onCreate(bundle);
        getOnBackPressedDispatcher().i(this, this.ah);
        setContentView(R.layout.activity_layout_inspector);
        f11185e.incrementAndGet();
        this.bc = this;
        this.x = new Stack();
        Intent intent = getIntent();
        if (intent != null) {
            this.al = intent.getStringExtra(abn.EXTRA_SOURCE);
        }
        this.u = cro.aj(intent);
        int i3 = 2;
        int i4 = 0;
        f11184d = getResources().getConfiguration().orientation == 2;
        fso.av(findViewById(R.id.container), true);
        TextView textView = (TextView) findViewById(R.id.tips);
        this.aj = textView;
        textView.setOnClickListener(new get(6, this));
        if (atf.g(this).n() < 0) {
            ((View) this.aj.getParent()).setVisibility(8);
        } else {
            this.ae = findViewById(R.id.content);
            View findViewById = findViewById(R.id.close);
            this.f11187g = findViewById;
            findViewById.setOnClickListener(this);
            dbv dbvVar = new dbv(this, null);
            this.y = dbvVar;
            ciz cizVar = new ciz(this.bc);
            cizVar.f12961f = R.layout.item_layout_inspector_key_value;
            cizVar.f12959d = R.dimen.liUINodeItemWidth;
            dbvVar.g(th.class, cizVar);
            dbv dbvVar2 = this.y;
            ciz cizVar2 = new ciz(this.bc);
            cizVar2.f12958c = true;
            cizVar2.f12961f = R.layout.item_layout_inspector_key_value;
            cizVar2.f12959d = R.dimen.liUINodeItemWidth;
            dbvVar2.g(gjv.class, cizVar2);
            this.y.g(edn.class, new has());
            dbv dbvVar3 = this.y;
            has hasVar = new has();
            hasVar.f19145c = R.layout.view_divider_key_transparent;
            dbvVar3.g(vq.class, hasVar);
            dbv dbvVar4 = this.y;
            ciz cizVar3 = new ciz(this.bc);
            cizVar3.f12962g = true;
            cizVar3.f12961f = R.layout.item_layout_inspector_key_value;
            cizVar3.f12959d = R.dimen.liUINodeItemWidth;
            dbvVar4.g(glp.class, cizVar3);
            dbv dbvVar5 = this.y;
            ciz cizVar4 = new ciz(this.bc);
            cizVar4.f12961f = R.layout.item_layout_inspector_small_key_value;
            dbvVar5.g(eyv.class, cizVar4);
            DragRelativeLayout dragRelativeLayout = (DragRelativeLayout) findViewById(R.id.header);
            dragRelativeLayout.setDragView((View) dragRelativeLayout.getParent());
            dragRelativeLayout.setOnDragListener(new fft(new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}, new float[]{TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT}));
            TextView textView2 = (TextView) findViewById(R.id.title);
            this.l = textView2;
            textView2.setOnClickListener(this);
            this.v = findViewById(R.id.divider2);
            View findViewById2 = findViewById(R.id.navigation);
            this.t = findViewById2;
            findViewById2.setOnClickListener(this);
            View findViewById3 = findViewById(R.id.outer);
            this.h = findViewById3;
            findViewById3.setOnClickListener(this);
            this.h.setOnLongClickListener(this);
            View findViewById4 = findViewById(R.id.last);
            this.r = findViewById4;
            findViewById4.setOnLongClickListener(this);
            this.r.setOnClickListener(this);
            View findViewById5 = findViewById(R.id.next);
            this.k = findViewById5;
            findViewById5.setOnLongClickListener(this);
            this.k.setOnClickListener(this);
            View findViewById6 = findViewById(R.id.inner);
            this.af = findViewById6;
            findViewById6.setOnLongClickListener(this);
            this.af.setOnClickListener(this);
            this.ai = (RecyclerViewWithMaxHeight) findViewById(R.id.content_scroll);
            this.ai.setLayoutManager(new LinearLayoutManager(1));
            this.ai.setAdapter(this.y);
            this.ai.setMaxHeight((fso.ag(this.bc)[1] * 7) / 20);
            c.b.ab abVar = (c.b.ab) findViewById(R.id.f21213ab);
            this.p = abVar;
            eib eibVar = this.bc;
            if (f11184d && fnp.m()) {
                try {
                    i = cux.as(eibVar);
                } catch (Exception e2) {
                    erl.ac(e2);
                }
                abVar.setSpecialMarkUp(i);
                this.p.setOnTouchListener(new bcr(i2, this));
                at();
            }
            i = 0;
            abVar.setSpecialMarkUp(i);
            this.p.setOnTouchListener(new bcr(i2, this));
            at();
        }
        super.initData();
        if (atf.g(this).n() < 0) {
            return;
        }
        this.ak = new aco(i3, this);
        Intent intent2 = new Intent(this, (Class<?>) c.b.ac.class);
        this.i = intent2;
        startService(intent2);
        bindService(this.i, this.ak, 1);
        this.ad = new eva(this, i4);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("inspector_close");
        intentFilter.addAction("inspector_refresh");
        fzn.l(this.bc).v(this.ad, intentFilter);
        this.n = new eva(this, i2);
        fzn.l(this).v(this.n, new IntentFilter("window_state_changed"));
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        f11185e.decrementAndGet();
        if (this.n != null) {
            fzn.l(this).u(this.n);
        }
        aco acoVar = this.ak;
        if (acoVar != null) {
            unbindService(acoVar);
            this.ak = null;
        }
        Intent intent = this.i;
        if (intent != null && this.ag) {
            stopService(intent);
        }
        this.az = false;
        ern.f16036b = false;
        super.onDestroy();
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int id = view.getId();
        if (id == this.h.getId()) {
            gm.e(this.bc, R.string.li_cd_inspect_parent);
            return true;
        }
        if (id == this.r.getId()) {
            gm.e(this.bc, R.string.li_cd_inspect_last);
            return true;
        }
        if (id == this.k.getId()) {
            gm.e(this.bc, R.string.li_cd_inspect_next);
            return true;
        }
        if (id != this.af.getId()) {
            return true;
        }
        gm.e(this.bc, R.string.li_cd_inspect_first_child);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.al = intent.getStringExtra(abn.EXTRA_SOURCE);
        c.b.ab abVar = this.p;
        if (abVar == null) {
            return;
        }
        this.s = null;
        abVar.s(null);
        ar();
        this.ae.setVisibility(8);
        at();
    }

    @Override // g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        super.onStart();
        new Handler().postDelayed(new byd(18, this), 200L);
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
        int i = bus.f12241a;
        if (!cro.an(this, "shizuku_compatibility_mode_enabled", false) || !ark.q(this).w()) {
            return super.w();
        }
        ab();
        return true;
    }

    @Override // g.eib
    public final void z() {
        this.aj.setVisibility(0);
        this.p.setVisibility(8);
    }
}
