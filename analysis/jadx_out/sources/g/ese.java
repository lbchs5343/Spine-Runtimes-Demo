package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class ese extends FrameLayout implements doz {
    private ig cd;

    /* renamed from: d, reason: collision with root package name */
    protected bfa f16078d;
    protected List<Object> dq;

    /* renamed from: f, reason: collision with root package name */
    private int f16079f;
    private bgd fw;
    private te gh;
    private final Runnable i;
    private String ia;
    private boolean ig;
    private int iw;
    private int jy;
    private float kk;
    private int mn;
    private boolean mp;
    private boolean no;
    private boolean o;
    private int ox;
    private int p;
    private int q;
    private final Runnable r;
    private int s;

    public ese(Context context) {
        super(context);
        this.dq = new CopyOnWriteArrayList();
        this.ox = ZeusPluginEventCallback.EVENT_START_LOAD;
        this.p = 500;
        this.s = 10;
        this.iw = -1;
        this.mn = -1;
        this.ia = "normal";
        this.kk = 1.0f;
        this.o = true;
        this.no = true;
        this.ig = true;
        this.mp = true;
        this.q = 0;
        this.jy = 0;
        this.f16079f = 0;
        this.r = new bre(this, 0);
        this.i = new bre(this, 1);
        this.f16078d = new brd(this, context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.f16078d, layoutParams);
        bgd bgdVar = new bgd(context);
        bgdVar.f11508g = -65536;
        bgdVar.f11504c = -16776961;
        bgdVar.f11505d = 5;
        bgdVar.f11506e = 20;
        bgdVar.h = 20;
        bgdVar.f11507f = new ArrayList();
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 80;
        bgdVar.setGravity(17);
        bgdVar.setOrientation(0);
        layoutParams2.bottomMargin = (int) dxo.f(context, 10.0f);
        bgdVar.setLayoutParams(layoutParams2);
        this.fw = bgdVar;
        addView(bgdVar);
    }

    public ese d(int i) {
        this.fw.setSelectedColor(i);
        return this;
    }

    public ese d(boolean z) {
        this.mp = z;
        return this;
    }

    public void d() {
        removeCallbacks(this.i);
        postDelayed(this.i, this.ox);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.no) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                d();
            } else if (action == 0) {
                ox();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public View dq(int i, int i2) {
        if (this.dq.size() == 0) {
            return new View(getContext());
        }
        View mn = mn(i2);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (mn instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (mn.getParent() instanceof ViewGroup) {
            ((ViewGroup) mn.getParent()).removeView(mn);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(mn, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public ese dq(float f2) {
        this.kk = f2;
        return this;
    }

    public ese dq(int i) {
        this.ox = i;
        d();
        return this;
    }

    public ese dq(Object obj) {
        int i = 0;
        if (obj != null) {
            this.dq.add(obj);
            if (this.o) {
                bgd bgdVar = this.fw;
                View view = new View(bgdVar.getContext());
                view.setClickable(false);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(bgdVar.f11506e, bgdVar.h);
                int i2 = bgdVar.f11505d;
                layoutParams.leftMargin = i2;
                layoutParams.rightMargin = i2;
                bgdVar.addView(view, layoutParams);
                view.setBackground(bgd.i(bgdVar.f11504c));
                bgdVar.f11507f.add(view);
            }
        }
        ig igVar = this.cd;
        if (igVar != null) {
            igVar.h();
            bgd bgdVar2 = this.fw;
            int i3 = this.q;
            int currentItem = this.f16078d.getCurrentItem();
            ArrayList arrayList = bgdVar2.f11507f;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setBackground(bgd.i(bgdVar2.f11504c));
            }
            if (i3 >= 0 && i3 < arrayList.size()) {
                i = i3;
            }
            if (arrayList.size() > 0) {
                ((View) arrayList.get(i)).setBackground(bgd.i(bgdVar2.f11508g));
                bgdVar2.f11502a = currentItem;
            }
        }
        return this;
    }

    public ese dq(String str) {
        this.ia = str;
        dq(str, this.s, this.iw, this.mn, true);
        return this;
    }

    public ese dq(boolean z) {
        this.no = z;
        d();
        return this;
    }

    public void dq() {
        dq(this.ia, this.s, this.iw, this.mn, true);
        if (this.cd == null) {
            this.cd = new ig(this);
            this.f16078d.bq(this);
            this.f16078d.setAdapter(this.cd);
        }
        int i = this.q;
        if (i < 0 || i >= this.dq.size()) {
            this.q = 0;
        }
        int i2 = this.ig ? this.q + 1073741823 : this.q;
        this.f16078d.br(i2, true);
        if (!this.ig) {
            ia(i2);
        }
        if (this.no) {
            d();
        }
    }

    @Override // g.doz
    public void dq(int i, float f2, int i2) {
        if (this.gh != null) {
            acr.be(i, this.dq.size(), this.ig);
        }
    }

    public void dq(String str, int i, int i2, int i3, boolean z) {
        ig igVar = this.cd;
        if (igVar != null) {
            igVar.h();
        }
        setClipChildren(false);
        this.f16078d.setClipChildren(false);
        this.f16078d.setPageMargin(i);
        ViewGroup.LayoutParams layoutParams = this.f16078d.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = i2 + i;
            marginLayoutParams.rightMargin = i3 + i;
            this.f16078d.setLayoutParams(layoutParams);
        }
        if (TextUtils.equals(str, "linear")) {
            this.f16078d.bg(new bli(15));
        } else {
            this.f16078d.bg(null);
        }
        this.f16078d.setOffscreenPageLimit((int) this.kk);
    }

    public gbe getAdapter() {
        return this.f16078d.getAdapter();
    }

    public int getCurrentItem() {
        return this.f16078d.getCurrentItem();
    }

    public bfa getViewPager() {
        return this.f16078d;
    }

    public void ia(int i) {
        int i2;
        if (this.gh != null) {
            int be = acr.be(i, this.dq.size(), this.ig);
            i2 = i;
            this.gh.dq(this.ig, be, i2, be == 0, be == this.dq.size() - 1);
        } else {
            i2 = i;
        }
        if (this.o) {
            bgd bgdVar = this.fw;
            bgdVar.getClass();
            int i3 = bgdVar.f11506e;
            int i4 = bgdVar.h;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i4);
            int i5 = bgdVar.f11505d;
            layoutParams.leftMargin = i5;
            layoutParams.rightMargin = i5;
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i3, i4);
            layoutParams2.leftMargin = i5;
            layoutParams2.rightMargin = i5;
            boolean z = bgdVar.f11503b;
            int i6 = bgdVar.f11502a;
            ArrayList arrayList = bgdVar.f11507f;
            int be2 = acr.be(i6, arrayList.size(), z);
            int be3 = arrayList.size() != 0 ? acr.be(i2, arrayList.size(), bgdVar.f11503b) : 0;
            if (arrayList.isEmpty() || be2 < 0 || be2 >= arrayList.size() || be3 < 0 || be3 >= arrayList.size()) {
                return;
            }
            ((View) arrayList.get(be2)).setBackground(bgd.i(bgdVar.f11504c));
            ((View) arrayList.get(be2)).setLayoutParams(layoutParams2);
            ((View) arrayList.get(be3)).setBackground(bgd.i(bgdVar.f11508g));
            ((View) arrayList.get(be3)).setLayoutParams(layoutParams);
            bgdVar.f11502a = i2;
        }
    }

    public ese iw(int i) {
        this.mn = i;
        dq(this.ia, this.s, this.iw, i, true);
        return this;
    }

    public void kk(int i) {
    }

    public abstract View mn(int i);

    public void no(int i) {
        removeCallbacks(this.r);
        postDelayed(this.r, i);
    }

    public void o(int i) {
        dq(this.ia, this.s, this.iw, this.mn, true);
        if (this.cd == null) {
            this.cd = new ig(this);
            this.f16078d.bq(this);
            this.f16078d.setAdapter(this.cd);
        }
        if (this.ig) {
            if (i >= Integer.MAX_VALUE) {
                this.f16078d.br(1073741823, false);
                return;
            } else {
                this.f16078d.br(i, true);
                return;
            }
        }
        if (i < 0 || i >= this.dq.size()) {
            return;
        }
        this.f16078d.br(i, true);
    }

    public ese ox(int i) {
        this.fw.setUnSelectedColor(i);
        return this;
    }

    public ese ox(boolean z) {
        this.o = z;
        return this;
    }

    public void ox() {
        removeCallbacks(this.i);
    }

    public ese p(int i) {
        this.s = i;
        dq(this.ia, i, this.iw, this.mn, true);
        return this;
    }

    public ese p(boolean z) {
        this.fw.setLoop(z);
        if (this.ig != z) {
            int be = acr.be(this.f16078d.getCurrentItem(), this.dq.size(), z);
            this.ig = z;
            ig igVar = this.cd;
            if (igVar != null) {
                igVar.h();
                this.f16078d.setCurrentItem(be);
            }
        }
        return this;
    }

    public void p() {
        dq(this.ia, this.s, this.iw, this.mn, true);
        if (this.cd == null) {
            this.cd = new ig(this);
            this.f16078d.bq(this);
            this.f16078d.setAdapter(this.cd);
        }
        int i = this.q;
        if (i < 0 || i >= this.dq.size()) {
            this.q = 0;
        }
        this.f16078d.br(this.ig ? this.q + 1073741823 : this.q, true);
    }

    public ese s(int i) {
        this.iw = i;
        dq(this.ia, this.s, i, this.mn, true);
        return this;
    }

    public void s() {
        removeCallbacks(this.r);
    }

    public void setOnPageChangeListener(te teVar) {
        this.gh = teVar;
    }
}
