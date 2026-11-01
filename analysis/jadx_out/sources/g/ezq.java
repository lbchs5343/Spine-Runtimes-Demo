package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ezq extends gox implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public final Context aj;
    public View ak;
    public caf al;
    public boolean am;
    public final Handler ao;
    public int j;
    public int k;
    public PopupWindow.OnDismissListener m;
    public boolean n;
    public View o;
    public final int q;
    public int u;
    public final int v;
    public final boolean w;
    public boolean x;
    public boolean y;
    public ViewTreeObserver z;
    public final ArrayList l = new ArrayList();
    public final ArrayList i = new ArrayList();
    public final fhv aa = new fhv(2, this);
    public final bwh p = new bwh(1, this);
    public final aoy s = new aoy(this);
    public int r = 0;
    public int an = 0;
    public boolean t = false;

    public ezq(Context context, View view, int i, boolean z) {
        this.aj = context;
        this.ak = view;
        this.v = i;
        this.w = z;
        this.j = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.q = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.ao = new Handler();
    }

    @Override // g.gox
    public final void ab(int i) {
        this.am = true;
        this.u = i;
    }

    @Override // g.gox
    public final void ac(int i) {
        if (this.r != i) {
            this.r = i;
            this.an = Gravity.getAbsoluteGravity(i, this.ak.getLayoutDirection());
        }
    }

    @Override // g.gox
    public final void ad(View view) {
        if (this.ak != view) {
            this.ak = view;
            this.an = Gravity.getAbsoluteGravity(this.r, view.getLayoutDirection());
        }
    }

    @Override // g.gox
    public final void ae(PopupWindow.OnDismissListener onDismissListener) {
        this.m = onDismissListener;
    }

    @Override // g.gox
    public final void af(boolean z) {
        this.t = z;
    }

    @Override // g.gox
    public final void ag(ftn ftnVar) {
        ftnVar.ap(this, this.aj);
        if (isShowing()) {
            ap(ftnVar);
        } else {
            this.l.add(ftnVar);
        }
    }

    @Override // g.gox
    public final void ah(boolean z) {
        this.n = z;
    }

    @Override // g.gox
    public final void ai(int i) {
        this.x = true;
        this.k = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0160, code lost:
    
        if (((r2.getWidth() + r10[0]) + r5) > r9.right) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0162, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0165, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016c, code lost:
    
        if ((r10[0] - r5) < 0) goto L72;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ap(ftn ftnVar) {
        boolean z;
        char c2;
        View view;
        czb czbVar;
        int i;
        int i2;
        int i3;
        int width;
        MenuItem menuItem;
        hen henVar;
        int i4;
        int firstVisiblePosition;
        Context context = this.aj;
        LayoutInflater from = LayoutInflater.from(context);
        hen henVar2 = new hen(ftnVar, from, this.w, R.layout.abc_cascading_menu_item_layout);
        if (!isShowing() && this.t) {
            henVar2.f19345f = true;
        } else if (isShowing()) {
            int size = ftnVar.m.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size) {
                    z = false;
                    break;
                }
                MenuItem item = ftnVar.getItem(i5);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i5++;
            }
            henVar2.f19345f = z;
        }
        int as = gox.as(henVar2, context, this.q);
        alt altVar = new alt(context, null, this.v, 0);
        altVar.f10456c = this.s;
        altVar.q = this;
        ui uiVar = altVar.ag;
        uiVar.setOnDismissListener(this);
        altVar.v = this.ak;
        altVar.y = this.an;
        altVar.t = true;
        uiVar.setFocusable(true);
        uiVar.setInputMethodMode(2);
        altVar.h(henVar2);
        altVar.ap(as);
        altVar.y = this.an;
        ArrayList arrayList = this.i;
        if (arrayList.size() > 0) {
            czbVar = (czb) arrayList.get(arrayList.size() - 1);
            ftn ftnVar2 = czbVar.f13801b;
            int size2 = ftnVar2.m.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size2) {
                    menuItem = null;
                    break;
                }
                menuItem = ftnVar2.getItem(i6);
                if (menuItem.hasSubMenu() && ftnVar == menuItem.getSubMenu()) {
                    break;
                } else {
                    i6++;
                }
            }
            if (menuItem == null) {
                view = null;
                c2 = 0;
            } else {
                bgv bgvVar = czbVar.f13800a.x;
                ListAdapter adapter = bgvVar.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i4 = headerViewListAdapter.getHeadersCount();
                    henVar = (hen) headerViewListAdapter.getWrappedAdapter();
                } else {
                    henVar = (hen) adapter;
                    i4 = 0;
                }
                int count = henVar.getCount();
                int i7 = 0;
                c2 = 0;
                while (true) {
                    if (i7 >= count) {
                        i7 = -1;
                        break;
                    } else if (menuItem == henVar.getItem(i7)) {
                        break;
                    } else {
                        i7++;
                    }
                }
                view = (i7 != -1 && (firstVisiblePosition = (i7 + i4) - bgvVar.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < bgvVar.getChildCount()) ? bgvVar.getChildAt(firstVisiblePosition) : null;
            }
        } else {
            c2 = 0;
            view = null;
            czbVar = null;
        }
        if (view != null) {
            if (Build.VERSION.SDK_INT <= 28) {
                Method method = alt.f10455b;
                if (method != null) {
                    try {
                        Object[] objArr = new Object[1];
                        objArr[c2] = Boolean.FALSE;
                        method.invoke(uiVar, objArr);
                    } catch (Exception unused) {
                    }
                }
            } else {
                cli.a(uiVar, false);
            }
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 23) {
                elq.a(uiVar, null);
            }
            bgv bgvVar2 = ((czb) arrayList.get(arrayList.size() - 1)).f13800a.x;
            int[] iArr = new int[2];
            bgvVar2.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            this.o.getWindowVisibleDisplayFrame(rect);
            if (this.j == 1) {
            }
            boolean z2 = i == 1;
            this.j = i;
            if (i8 >= 26) {
                altVar.v = view;
                i2 = 0;
                i3 = 0;
            } else {
                int[] iArr2 = new int[2];
                this.ak.getLocationOnScreen(iArr2);
                int[] iArr3 = new int[2];
                view.getLocationOnScreen(iArr3);
                if ((this.an & 7) == 5) {
                    iArr2[0] = this.ak.getWidth() + iArr2[0];
                    iArr3[0] = view.getWidth() + iArr3[0];
                }
                int i9 = iArr3[0] - iArr2[0];
                i2 = iArr3[1] - iArr2[1];
                i3 = i9;
            }
            if ((this.an & 5) != 5) {
                if (z2) {
                    width = i3 + view.getWidth();
                    altVar.ao = width;
                    altVar.z = true;
                    altVar.w = true;
                    altVar.i(i2);
                }
                width = i3 - as;
                altVar.ao = width;
                altVar.z = true;
                altVar.w = true;
                altVar.i(i2);
            } else if (z2) {
                width = i3 + as;
                altVar.ao = width;
                altVar.z = true;
                altVar.w = true;
                altVar.i(i2);
            } else {
                as = view.getWidth();
                width = i3 - as;
                altVar.ao = width;
                altVar.z = true;
                altVar.w = true;
                altVar.i(i2);
            }
        } else {
            if (this.am) {
                altVar.ao = this.u;
            }
            if (this.x) {
                altVar.i(this.k);
            }
            Rect rect2 = this.ar;
            altVar.ah = rect2 != null ? new Rect(rect2) : null;
        }
        arrayList.add(new czb(altVar, ftnVar, this.j));
        altVar.show();
        bgv bgvVar3 = altVar.x;
        bgvVar3.setOnKeyListener(this);
        if (czbVar == null && this.n && ftnVar.p != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) bgvVar3, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(ftnVar.p);
            bgvVar3.addHeaderView(frameLayout, null, false);
            altVar.show();
        }
    }

    @Override // g.erj
    public final bgv aq() {
        ArrayList arrayList = this.i;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((czb) arrayList.get(arrayList.size() - 1)).f13800a.x;
    }

    @Override // g.us
    public final void b(caf cafVar) {
        this.al = cafVar;
    }

    @Override // g.us
    public final void c() {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((czb) it.next()).f13800a.x.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((hen) adapter).notifyDataSetChanged();
        }
    }

    @Override // g.us
    public final void d(ftn ftnVar, boolean z) {
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (ftnVar == ((czb) arrayList.get(i)).f13801b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((czb) arrayList.get(i2)).f13801b.at(false);
        }
        czb czbVar = (czb) arrayList.remove(i);
        ftn ftnVar2 = czbVar.f13801b;
        alt altVar = czbVar.f13800a;
        ftnVar2.av(this);
        if (this.y) {
            if (Build.VERSION.SDK_INT >= 23) {
                elq.b(altVar.ag, null);
            }
            altVar.ag.setAnimationStyle(0);
        }
        altVar.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.j = ((czb) arrayList.get(size2 - 1)).f13802c;
        } else {
            this.j = this.ak.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((czb) arrayList.get(0)).f13801b.at(false);
                return;
            }
            return;
        }
        dismiss();
        caf cafVar = this.al;
        if (cafVar != null) {
            cafVar.x(ftnVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.z.removeGlobalOnLayoutListener(this.aa);
            }
            this.z = null;
        }
        this.o.removeOnAttachStateChangeListener(this.p);
        this.m.onDismiss();
    }

    @Override // g.erj
    public final void dismiss() {
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        if (size > 0) {
            czb[] czbVarArr = (czb[]) arrayList.toArray(new czb[size]);
            for (int i = size - 1; i >= 0; i--) {
                czb czbVar = czbVarArr[i];
                if (czbVar.f13800a.ag.isShowing()) {
                    czbVar.f13800a.dismiss();
                }
            }
        }
    }

    @Override // g.us
    public final boolean e(gyg gygVar) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            czb czbVar = (czb) it.next();
            if (gygVar == czbVar.f13801b) {
                czbVar.f13800a.x.requestFocus();
                return true;
            }
        }
        if (!gygVar.hasVisibleItems()) {
            return false;
        }
        ag(gygVar);
        caf cafVar = this.al;
        if (cafVar != null) {
            cafVar.r(gygVar);
        }
        return true;
    }

    @Override // g.us
    public final boolean h() {
        return false;
    }

    @Override // g.erj
    public final boolean isShowing() {
        ArrayList arrayList = this.i;
        return arrayList.size() > 0 && ((czb) arrayList.get(0)).f13800a.ag.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        czb czbVar;
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                czbVar = null;
                break;
            }
            czbVar = (czb) arrayList.get(i);
            if (!czbVar.f13800a.ag.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (czbVar != null) {
            czbVar.f13801b.at(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // g.erj
    public final void show() {
        if (isShowing()) {
            return;
        }
        ArrayList arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ap((ftn) it.next());
        }
        arrayList.clear();
        View view = this.ak;
        this.o = view;
        if (view != null) {
            boolean z = this.z == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.aa);
            }
            this.o.addOnAttachStateChangeListener(this.p);
        }
    }
}
