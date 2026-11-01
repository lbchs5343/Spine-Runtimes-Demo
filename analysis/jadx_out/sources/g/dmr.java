package g;

import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class dmr implements cgm {

    /* renamed from: a, reason: collision with root package name */
    public f.a.e f14436a;

    /* renamed from: b, reason: collision with root package name */
    public aco f14437b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14438c;

    /* renamed from: d, reason: collision with root package name */
    public elf f14439d;

    /* renamed from: e, reason: collision with root package name */
    public elf f14440e;
    public HashMap i;

    public static void j(dmr dmrVar, boolean z, int i) {
        elf elfVar = dmrVar.f14440e;
        elfVar.runOnUiThread(new gkp(elfVar, i, z, new get(9, dmrVar)));
    }

    public static void k(dmr dmrVar, boolean z) {
        dmrVar.f14438c = true;
        bys.f12466a = dmrVar.f14439d.getString(R.string.app_name_ua) + "s";
        elf elfVar = dmrVar.f14440e;
        elfVar.runOnUiThread(new asy(elfVar, 0, z));
    }

    @Override // g.cgm
    public final void f() {
    }

    @Override // g.cgm
    public final void g() {
        f.a.e eVar = this.f14436a;
        elf elfVar = this.f14440e;
        fnq fnqVar = new fnq(13, this);
        efc efcVar = eVar.f12716b;
        fpd fpdVar = new fpd(eVar, fnqVar, elfVar, 9);
        efcVar.getClass();
        if (TextUtils.isEmpty("a")) {
            fpdVar.o(1101);
            return;
        }
        if (efc.f15420a.contains("a")) {
            fpdVar.i(null);
            return;
        }
        if (efcVar.f15423d == null) {
            fpdVar.o(1991);
            return;
        }
        gkr gkrVar = new gkr(efcVar, new WeakReference(elfVar), fpdVar, elfVar, 2, false);
        if (efcVar.f15423d == null) {
            gkrVar.o(1991);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new bjy());
        fnq fnqVar2 = new fnq(16);
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Product list cannot be empty.");
        }
        HashSet hashSet = new HashSet();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((bjy) it.next()).getClass();
            hashSet.add("inapp");
        }
        if (hashSet.size() > 1) {
            throw new IllegalArgumentException("All products should be of the same product type.");
        }
        fkz n = fkz.n(arrayList);
        fnqVar2.f17099f = n;
        if (n == null) {
            throw new IllegalArgumentException("Product list must be set to a non empty list.");
        }
        aoy aoyVar = new aoy();
        aoyVar.h = (fkz) fnqVar2.f17099f;
        efcVar.f15423d.am(aoyVar, new emr(8, gkrVar));
    }

    @Override // g.cgm
    public final void h(String str) {
        dzm.ao(this.f14439d, "vb");
        f.a.e eVar = this.f14436a;
        eVar.f12717c.h(str, new akj(13, eVar, new aoy(this), false));
    }

    public final void l(int i, boolean z) {
        this.f14438c = false;
        elf elfVar = this.f14440e;
        elfVar.runOnUiThread(new cef(elfVar, i, z, new zd(this)));
    }

    public final boolean m() {
        f.a.e eVar = this.f14436a;
        if (eVar != null) {
            fyl fylVar = eVar.f12717c;
            fylVar.getClass();
            if (!TextUtils.isEmpty("a") && (fyl.f17638a.contains("a") || acr.bc(fylVar.f17639b))) {
                return true;
            }
            eVar.f12716b.getClass();
            if (!TextUtils.isEmpty("a") && efc.f15420a.contains("a")) {
                return true;
            }
        }
        return false;
    }

    public final void n() {
        elf elfVar = this.f14440e;
        elf elfVar2 = this.f14439d;
        List az = acr.az(elfVar2);
        HashMap hashMap = this.i;
        hashMap.clear();
        boolean z = m() && this.f14438c;
        ArrayList arrayList = new ArrayList();
        List asList = Arrays.asList(acr.j);
        boolean z2 = elfVar2.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("immature", false);
        ArrayList arrayList2 = (ArrayList) az;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            byz byzVar = (byz) it.next();
            if (byzVar != null) {
                ArrayList arrayList3 = byzVar.f12476a;
                if (!acw.u(arrayList3)) {
                    if (byzVar.f12479d != -1) {
                        hashMap.put(byzVar.f12478c, Integer.valueOf(arrayList.size()));
                        arrayList.add(byzVar);
                    }
                    Iterator it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        ert ertVar = (ert) it2.next();
                        if (ertVar != null && ertVar.s && (z2 || !ertVar.l)) {
                            if (!z || !asList.contains(ertVar.q)) {
                                hashMap.put(ertVar.q, Integer.valueOf(arrayList.size()));
                                arrayList.add(ertVar);
                            }
                        }
                    }
                }
            }
        }
        arrayList.add(new guo());
        fml.e(elfVar2);
        if (acw.u(arrayList2)) {
            fxe.a j = atf.g(elfVar2).j();
            String str = j != null ? j.fit : "";
            elfVar.n.setVisibility(8);
            elfVar.w.setVisibility(0);
            elfVar.w.setText(str);
            return;
        }
        if (acw.u(arrayList)) {
            String string = elfVar2.getString(R.string.empty_tools);
            elfVar.n.setVisibility(8);
            elfVar.w.setVisibility(0);
            elfVar.w.setText(string);
            return;
        }
        elfVar.n.setVisibility(0);
        elfVar.w.setVisibility(8);
        elfVar.invalidateOptionsMenu();
        bzj bzjVar = elfVar.r;
        if (bzjVar == null) {
            bzj bzjVar2 = new bzj(elfVar.aa, arrayList);
            elfVar.r = bzjVar2;
            elf elfVar3 = elfVar.aa;
            ffi ffiVar = new ffi(0);
            ffiVar.f16702d = elfVar3;
            bzjVar2.g(ert.class, ffiVar);
            elfVar.r.g(byz.class, new fsk(2));
            elfVar.r.g(guo.class, new fsk(1));
            elfVar.u.setAdapter(elfVar.r);
            elfVar.u.getViewTreeObserver().addOnGlobalLayoutListener(new fhv(3, elfVar));
        } else {
            bzjVar.h(arrayList);
            elfVar.r.notifyDataSetChanged();
        }
        elfVar.r.i = new dcq(12, elfVar);
    }
}
