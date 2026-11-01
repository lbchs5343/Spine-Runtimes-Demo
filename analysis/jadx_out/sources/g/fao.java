package g;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import cn.trinea.android.developertools.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class fao {

    /* renamed from: a, reason: collision with root package name */
    public final Object f16474a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f16475b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16476c;

    /* renamed from: d, reason: collision with root package name */
    public Object f16477d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f16478e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f16479f;

    /* renamed from: g, reason: collision with root package name */
    public Object f16480g;

    public fao(AssetManager assetManager, xh xhVar, eie eieVar, String str, File file) {
        this.f16476c = false;
        this.f16478e = eieVar;
        this.f16475b = str;
        this.f16474a = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i >= 24) {
            if (i < 31) {
                switch (i) {
                    case 24:
                    case 25:
                        bArr = cux.k;
                        break;
                    case 26:
                        bArr = cux.v;
                        break;
                    case 27:
                        bArr = cux.q;
                        break;
                    case 28:
                    case 29:
                    case 30:
                        bArr = cux.o;
                        break;
                }
            } else {
                bArr = cux.m;
            }
        }
        this.f16479f = bArr;
    }

    public fao(gk gkVar, eqi eqiVar, aoi aoiVar) {
        this.f16480g = new fvi(12, this);
        this.f16478e = gkVar;
        this.f16479f = eqiVar;
        this.f16474a = aoiVar;
        this.f16475b = new gxt(gkVar);
    }

    public static AccessibilityNodeInfo h(AccessibilityNodeInfo accessibilityNodeInfo) {
        Iterator it = m(accessibilityNodeInfo).iterator();
        while (it.hasNext()) {
            AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) it.next();
            if (!accessibilityNodeInfo2.isCheckable()) {
                if ("smartisanos.widget.SwitchEx".contentEquals(accessibilityNodeInfo2.getClassName() == null ? "" : accessibilityNodeInfo2.getClassName())) {
                }
            }
            return accessibilityNodeInfo2;
        }
        return null;
    }

    public static AccessibilityNodeInfo i(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) it.next();
            CharSequence className = accessibilityNodeInfo.getClassName();
            if (accessibilityNodeInfo.isEnabled() && accessibilityNodeInfo.isScrollable() && className != null && (className.toString().endsWith("RecyclerView") || className.toString().endsWith("ListView"))) {
                return accessibilityNodeInfo;
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) it2.next();
            if (accessibilityNodeInfo2.isEnabled() && accessibilityNodeInfo2.isScrollable()) {
                return accessibilityNodeInfo2;
            }
        }
        return null;
    }

    public static AccessibilityNodeInfo j(ArrayList arrayList, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) it.next();
            if (accessibilityNodeInfo.isEnabled() && str.trim().equals(k(accessibilityNodeInfo))) {
                return accessibilityNodeInfo;
            }
        }
        return null;
    }

    public static String k(AccessibilityNodeInfo accessibilityNodeInfo) {
        CharSequence text = accessibilityNodeInfo.getText();
        if (TextUtils.isEmpty(text)) {
            text = accessibilityNodeInfo.getContentDescription();
        }
        return text == null ? "" : text.toString().trim();
    }

    public static AccessibilityNodeInfo l(AccessibilityNodeInfo accessibilityNodeInfo, AccessibilityNodeInfo accessibilityNodeInfo2) {
        AccessibilityNodeInfo h;
        AccessibilityNodeInfo accessibilityNodeInfo3 = null;
        for (int i = 0; accessibilityNodeInfo != null && i < 12 && !accessibilityNodeInfo.equals(accessibilityNodeInfo2) && !accessibilityNodeInfo.isScrollable(); i++) {
            if (accessibilityNodeInfo.isEnabled() && accessibilityNodeInfo.isClickable()) {
                return accessibilityNodeInfo;
            }
            if (accessibilityNodeInfo3 == null && (h = h(accessibilityNodeInfo)) != null && h.isEnabled()) {
                accessibilityNodeInfo3 = h;
            }
            accessibilityNodeInfo = accessibilityNodeInfo.getParent();
        }
        return accessibilityNodeInfo3;
    }

    public static ArrayList m(AccessibilityNodeInfo accessibilityNodeInfo) {
        ArrayList arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        HashSet hashSet = new HashSet();
        arrayDeque.add(accessibilityNodeInfo);
        while (!arrayDeque.isEmpty() && arrayList.size() < 2500) {
            AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) arrayDeque.remove();
            if (hashSet.add(accessibilityNodeInfo2)) {
                arrayList.add(accessibilityNodeInfo2);
                for (int i = 0; i < accessibilityNodeInfo2.getChildCount() && arrayDeque.size() < 2500; i++) {
                    AccessibilityNodeInfo child = accessibilityNodeInfo2.getChild(i);
                    if (child != null) {
                        arrayDeque.add(child);
                    }
                }
            }
        }
        return arrayList;
    }

    public AccessibilityNodeInfo n(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList2 == null) {
            return null;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            AccessibilityNodeInfo j = j(arrayList, (String) it.next());
            if (j != null) {
                return j;
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) it2.next();
            if (accessibilityNodeInfo.isEnabled() && !TextUtils.isEmpty(k(accessibilityNodeInfo))) {
                arrayList3.add(k(accessibilityNodeInfo));
            }
        }
        ((gxt) this.f16475b).getClass();
        String i = gxt.i(arrayList3, arrayList2);
        if (TextUtils.isEmpty(i)) {
            return null;
        }
        return j(arrayList, i);
    }

    public void o() {
        AccessibilityNodeInfo h;
        AccessibilityNodeInfo l;
        AccessibilityNodeInfo l2;
        gk gkVar = (gk) this.f16478e;
        gqy gqyVar = (gqy) this.f16477d;
        if (gqyVar == null) {
            return;
        }
        ert ertVar = gqyVar.h;
        if (bli.n != ertVar) {
            q();
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis() - gqyVar.m;
        int i = R.string.accessibility_settings_content_unavailable;
        if (uptimeMillis >= 20000) {
            if (!gqyVar.j) {
                i = R.string.error_switch;
            }
            t(i, false);
            return;
        }
        gqyVar.f18614c = -1;
        AccessibilityNodeInfo rootInActiveWindow = gkVar.getRootInActiveWindow();
        boolean z = true;
        if (rootInActiveWindow == null) {
            List<AccessibilityWindowInfo> windows = gkVar.getWindows();
            if (windows != null) {
                for (AccessibilityWindowInfo accessibilityWindowInfo : windows) {
                    if (accessibilityWindowInfo.getType() == 1 && (accessibilityWindowInfo.isActive() || accessibilityWindowInfo.isFocused())) {
                        AccessibilityNodeInfo root = accessibilityWindowInfo.getRoot();
                        if (root != null) {
                            rootInActiveWindow = root;
                            break;
                        } else if (accessibilityWindowInfo.getId() == gqyVar.f18615d) {
                            gqyVar.f18614c = accessibilityWindowInfo.getId();
                        }
                    }
                }
            }
            rootInActiveWindow = null;
        }
        gqyVar.j = rootInActiveWindow == null;
        int i2 = gqyVar.f18614c;
        boolean z2 = rootInActiveWindow != null;
        long uptimeMillis2 = SystemClock.uptimeMillis();
        if (z2 || i2 < 0) {
            gqyVar.o = -1;
            gqyVar.r = -1L;
        } else {
            if (gqyVar.o != i2) {
                gqyVar.o = i2;
                gqyVar.r = uptimeMillis2;
            }
            if (uptimeMillis2 - gqyVar.r >= 3000) {
                t(R.string.accessibility_settings_content_unavailable, false);
                return;
            }
        }
        if (rootInActiveWindow == null) {
            p();
            return;
        }
        if (!"com.android.settings".contentEquals(rootInActiveWindow.getPackageName() == null ? "" : rootInActiveWindow.getPackageName())) {
            if (gqyVar.f18616e) {
                if (!"com.android.systemui".contentEquals(rootInActiveWindow.getPackageName() != null ? rootInActiveWindow.getPackageName() : "")) {
                    bli.n = null;
                    q();
                    return;
                }
            }
            p();
            return;
        }
        gqyVar.f18616e = true;
        gqyVar.f18615d = rootInActiveWindow.getWindowId();
        int i3 = car.f12563a[gqyVar.p.ordinal()];
        if (i3 == 1) {
            ArrayList m = m(rootInActiveWindow);
            ArrayList arrayList = new ArrayList();
            String av = acr.av(gkVar, ertVar.q);
            if (!TextUtils.isEmpty(av)) {
                arrayList.add(av);
            }
            ArrayList ao = acr.ao(gkVar, ertVar.q);
            if (ao != null) {
                arrayList.addAll(ao);
            }
            AccessibilityNodeInfo n = n(m, arrayList);
            if (n != null) {
                String k = k(n);
                gqyVar.f18613b = k;
                acw.au(gkVar, TextUtils.join("_", new String[]{"dev_text", acr.bo(gkVar), ertVar.q}), k);
                cro.af(gkVar, TextUtils.join("_", new String[]{"dev_match", acr.bo(gkVar), ertVar.q}), true);
            }
            if (n != null) {
                AccessibilityNodeInfo l3 = l(n, rootInActiveWindow);
                if (l3 == null) {
                    int i4 = gqyVar.q + 1;
                    gqyVar.q = i4;
                    if (i4 > 24) {
                        t(R.string.error_no_clickable, false);
                    }
                } else {
                    AccessibilityNodeInfo h2 = h(l3);
                    gqyVar.l = h2 == null ? null : Boolean.valueOf(h2.isChecked());
                    gqyVar.n = h2 == null ? null : Boolean.valueOf(!h2.isChecked());
                    if (!"overdraw".equals(ertVar.q) && !"track_gpu_frame".equals(ertVar.q)) {
                        z = false;
                    }
                    boolean equals = "usb_debugging".equals(ertVar.q);
                    if (h2 != null || z || equals || "running_services".equals(ertVar.q)) {
                        bpi bpiVar = bpi.SEARCH;
                        bpi bpiVar2 = (!(z && h2 == null) && (!equals || Boolean.TRUE.equals(gqyVar.l))) ? bpi.VERIFY : bpi.DIALOG;
                        if (gqyVar.p == bpiVar) {
                            gqyVar.p = bpiVar2;
                        }
                        if (!((h2 == null || !(fnp.n() || fnp.i())) ? l3 : h2).performAction(16) && (h2 == null || h2.equals(l3) || !h2.performAction(16))) {
                            t(R.string.error_switch, false);
                        }
                    } else {
                        t(R.string.error_no_clickable, false);
                    }
                }
            } else {
                AccessibilityNodeInfo i5 = i(m);
                if (i5 == null) {
                    int i6 = gqyVar.q + 1;
                    gqyVar.q = i6;
                    if (i6 > 24) {
                        t(R.string.error_no_list_options, false);
                    }
                } else {
                    gqyVar.q = 0;
                    int i7 = gqyVar.i + 1;
                    gqyVar.i = i7;
                    if (i7 > 80) {
                        t(R.string.error_no_option, false);
                    } else if (!i5.performAction(gqyVar.f18618g ? 8192 : 4096)) {
                        if (gqyVar.f18618g) {
                            t(R.string.error_no_option, false);
                        } else {
                            gqyVar.f18618g = true;
                        }
                    }
                }
            }
        } else if (i3 != 2) {
            if (i3 != 3) {
                return;
            }
            ArrayList m2 = m(rootInActiveWindow);
            String str = gqyVar.f18617f;
            if (str != null) {
                AccessibilityNodeInfo j = j(m2, str);
                AccessibilityNodeInfo l4 = j == null ? null : l(j, rootInActiveWindow);
                h = l4 != null ? h(l4) : null;
                if (h == null || !h.isChecked()) {
                    AccessibilityNodeInfo j2 = j(m2, gqyVar.f18613b);
                    if (j2 == null || h != null || i(m2) == null || (rootInActiveWindow.getWindowId() == gqyVar.k && (j == null || (l2 = l(j2, rootInActiveWindow)) == null || !m(l2).contains(j)))) {
                        gqyVar.f18612a = 0;
                    } else {
                        int i8 = gqyVar.f18612a + 1;
                        gqyVar.f18612a = i8;
                        if (i8 >= 2) {
                            t(0, true);
                        }
                    }
                } else {
                    t(0, true);
                }
            } else if (gqyVar.n != null) {
                AccessibilityNodeInfo j3 = j(m2, gqyVar.f18613b);
                AccessibilityNodeInfo l5 = j3 == null ? null : l(j3, rootInActiveWindow);
                h = l5 != null ? h(l5) : null;
                if (h != null && h.isChecked() == gqyVar.n.booleanValue()) {
                    t(0, true);
                }
            } else {
                t(0, true);
            }
        } else if ("usb_debugging".equals(ertVar.q)) {
            AccessibilityNodeInfo j4 = j(m(rootInActiveWindow), gqyVar.f18613b);
            AccessibilityNodeInfo l6 = j4 == null ? null : l(j4, rootInActiveWindow);
            h = l6 != null ? h(l6) : null;
            if (h == null || !h.isChecked()) {
                AccessibilityNodeInfo n2 = n(m(rootInActiveWindow), acr.ao(gkVar, "debug_usb_debugging_open"));
                if (n2 != null && (l = l(n2, rootInActiveWindow)) != null) {
                    gqyVar.n = Boolean.TRUE;
                    bpi bpiVar3 = bpi.DIALOG;
                    bpi bpiVar4 = bpi.VERIFY;
                    if (gqyVar.p == bpiVar3) {
                        gqyVar.p = bpiVar4;
                    }
                    if (!l.performAction(16)) {
                        t(R.string.error_switch, false);
                    }
                }
            } else {
                gqyVar.n = Boolean.TRUE;
                t(0, true);
            }
        } else {
            List list = (List) acr.n.get(ertVar.q);
            if (list == null || list.size() < 2) {
                t(R.string.error_dialog_not_in_scope, false);
            } else if (fnp.n()) {
                t(R.string.error_smartisan_checked_status_error, false);
            } else {
                ArrayList m3 = m(rootInActiveWindow);
                AccessibilityNodeInfo n3 = n(m3, acr.ao(gkVar, (String) list.get(1)));
                AccessibilityNodeInfo n4 = n(m3, acr.ao(gkVar, (String) list.get(0)));
                if (n3 != null && n4 != null) {
                    AccessibilityNodeInfo l7 = l(n3, rootInActiveWindow);
                    h = l7 != null ? h(l7) : null;
                    if (h != null) {
                        gqyVar.l = Boolean.valueOf(h.isChecked());
                        gqyVar.n = Boolean.valueOf(!h.isChecked());
                        if (h.isChecked()) {
                            n3 = n4;
                        }
                        AccessibilityNodeInfo l8 = l(n3, rootInActiveWindow);
                        if (l8 != null) {
                            gqyVar.f18617f = k(n3);
                            gqyVar.k = rootInActiveWindow.getWindowId();
                            bpi bpiVar5 = bpi.DIALOG;
                            bpi bpiVar6 = bpi.VERIFY;
                            if (gqyVar.p == bpiVar5) {
                                gqyVar.p = bpiVar6;
                            }
                            if (!l8.performAction(16)) {
                                t(R.string.error_switch, false);
                            }
                        }
                    }
                }
            }
        }
        p();
    }

    public void p() {
        if (this.f16476c || ((gqy) this.f16477d) == null) {
            return;
        }
        this.f16476c = true;
        ((Handler) this.f16479f).postDelayed((fvi) this.f16480g, 180L);
    }

    public void q() {
        ((Handler) this.f16479f).removeCallbacks((fvi) this.f16480g);
        this.f16476c = false;
        gqy gqyVar = (gqy) this.f16477d;
        if (gqyVar != null) {
            gqyVar.p = bpi.FINISHED;
        }
        this.f16477d = null;
    }

    public FileInputStream r(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e2) {
            String message = e2.getMessage();
            if (message == null) {
                return null;
            }
            message.contains("compressed");
            return null;
        }
    }

    public void s(final int i, final Serializable serializable) {
        new Runnable() { // from class: g.fd
            @Override // java.lang.Runnable
            public final void run() {
                ((eie) fao.this.f16478e).r(i, serializable);
            }
        }.run();
    }

    public void t(int i, boolean z) {
        gqy gqyVar = (gqy) this.f16477d;
        if (gqyVar == null) {
            return;
        }
        q();
        aoi aoiVar = (aoi) this.f16474a;
        ert ertVar = gqyVar.h;
        Boolean bool = z ? gqyVar.n : gqyVar.l;
        gk gkVar = (gk) aoiVar.f10570b;
        if (bli.n != ertVar) {
            return;
        }
        if (bool != null) {
            ertVar.u = bool;
        }
        fso.am(gkVar.j, ertVar, z ? "success" : "fail_accessibility_switch_fail");
        if (!z && i != 0) {
            if (i == R.string.error_no_option) {
                String string = gkVar.getString(i, acr.av(gkVar, ertVar.q));
                Context context = gkVar.j;
                if (context != null) {
                    gm.k(context, string);
                }
            } else {
                gkVar.o(i, true);
            }
        }
        gkVar.u().k(z);
        bli.n = null;
        if (z && ertVar.w) {
            gkVar.f18294f.postDelayed(new fvi(28, gkVar), 180L);
        }
        gkVar.r(ertVar, z);
    }
}
