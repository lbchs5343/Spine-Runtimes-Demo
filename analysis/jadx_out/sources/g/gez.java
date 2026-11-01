package g;

import android.net.Uri;
import android.os.Looper;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class gez implements jn, caf {

    /* renamed from: d, reason: collision with root package name */
    public static final gez f18007d = new gez(true, (String) null, (Exception) null);

    /* renamed from: e, reason: collision with root package name */
    public Object f18008e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f18009f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18010g;

    public gez() {
        this.f18009f = 2;
        ArrayList arrayList = new ArrayList();
        this.f18008e = arrayList;
        nq nqVar = new nq();
        Boolean bool = Boolean.TRUE;
        nqVar.f19724f = Arrays.asList(bool, Boolean.FALSE);
        nqVar.f19720b = new fov(1);
        nqVar.f19719a = new fov(2);
        arrayList.add(nqVar);
        nqVar.f19723e = "verify dex file checksum before load";
        nqVar.f19725g = bool;
        nqVar.f19722d = new agx(11, this);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            nq nqVar2 = (nq) it.next();
            String str = nqVar2.f19721c;
            String str2 = nqVar2.f19723e;
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException(tn.x("Description should be set for option: ", str));
            }
            if (nqVar2.f19719a == null) {
                throw new IllegalArgumentException(tn.x("Parser should be set for option: ", str));
            }
            if (nqVar2.f19720b == null) {
                throw new IllegalArgumentException(tn.x("Formatter should be set for option: ", str));
            }
            if (nqVar2.f19722d == null) {
                throw new IllegalArgumentException(tn.x("Setter should be set for option: ", str));
            }
        }
    }

    public /* synthetic */ gez(int i) {
        this.f18009f = i;
    }

    public /* synthetic */ gez(int i, Object obj) {
        this.f18009f = i;
        this.f18008e = obj;
    }

    public gez(Uri uri, boolean z, boolean z2) {
        this.f18009f = 9;
        this.f18008e = uri;
        this.f18010g = z;
    }

    public gez(BottomSheetBehavior bottomSheetBehavior, boolean z) {
        this.f18009f = 1;
        this.f18008e = bottomSheetBehavior;
        this.f18010g = z;
    }

    public gez(adh adhVar, cuz cuzVar) {
        this.f18009f = 3;
        this.f18010g = false;
        this.f18008e = cuzVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public gez(dwm dwmVar, boolean z) {
        this(6, dwmVar);
        this.f18009f = 6;
        this.f18010g = z;
    }

    public gez(ggg gggVar, hed hedVar) {
        this.f18009f = 5;
        HashSet hashSet = new HashSet();
        this.f18008e = hashSet;
        this.f18010g = gggVar.f18080c;
        gez gezVar = gggVar.f18079b;
        if (gezVar != null) {
            hashSet.addAll((HashSet) gezVar.f18008e);
        }
        cci cciVar = hedVar.am;
        cciVar.av();
        for (hcd hcdVar : cciVar.ag) {
            if (hcdVar.h.be()) {
                hashSet.add(hcdVar.f19217g.f14710b);
            }
        }
        Iterator it = cciVar.i.iterator();
        while (it.hasNext()) {
            hashSet.add(((cci) it.next()).ak.i());
        }
        hashSet.addAll((Set) hedVar.am.f12631ab.k.f17099f);
    }

    public gez(boolean z) {
        this.f18009f = 4;
        this.f18008e = null;
        this.f18010g = z;
    }

    public gez(boolean z, String str, Exception exc) {
        this.f18009f = 0;
        this.f18010g = z;
        this.f18008e = exc;
    }

    @Override // g.jn
    public void _bl(Object obj) {
        cuz cuzVar = (cuz) this.f18008e;
        atp atpVar = (atp) obj;
        cuzVar.f13567g = false;
        cuzVar.r.clear();
        cuzVar.t.clear();
        cuzVar.i = atpVar;
        bze bzeVar = cuzVar.j;
        bzeVar.f12492b = atpVar;
        bzeVar.notifyDataSetChanged();
        Object obj2 = cuzVar.o;
        if (obj2 != null) {
            cuzVar.ae(((File) obj2).getPath());
        }
        her herVar = ((gkm) cuzVar.getLoaderManager()).f18311c;
        if (herVar.f19356c) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        fm fmVar = (fm) herVar.f19355b.f(0);
        if (fmVar != null) {
            fmVar.y(true);
            gob gobVar = herVar.f19355b;
            int w = erl.w(gobVar.f18483b, 0, gobVar.f18485d);
            if (w >= 0) {
                Object[] objArr = gobVar.f18482a;
                Object obj3 = objArr[w];
                Object obj4 = bfc.f11438c;
                if (obj3 != obj4) {
                    objArr[w] = obj4;
                    gobVar.f18484c = true;
                }
            }
        }
        this.f18010g = true;
    }

    public void c() {
    }

    public void h(fjq fjqVar) {
        if (this.f18010g) {
            int i = gbs.f17875a;
            return;
        }
        try {
            ((dzh) this.f18008e).q(new fij(fjqVar, cq.DEFAULT));
        } catch (Throwable unused) {
            int i2 = gbs.f17875a;
        }
    }

    public duh i(String str, boolean z) {
        return new duh(this, str, Boolean.valueOf(z), 1);
    }

    public String j(String str) {
        HashSet hashSet = (HashSet) this.f18008e;
        int i = 2;
        String str2 = str;
        while (hashSet.contains(str2)) {
            str2 = str + i;
            i++;
        }
        hashSet.add(str2);
        return str2;
    }

    public boolean k(CharSequence charSequence, int i) {
        if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
            throw new IllegalArgumentException();
        }
        dwm dwmVar = (dwm) this.f18008e;
        if (dwmVar == null) {
            return p();
        }
        dwmVar.getClass();
        char c2 = 2;
        for (int i2 = 0; i2 < i && c2 == 2; i2++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i2));
            gez gezVar = cl.f13046b;
            if (directionality != 0) {
                if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            break;
                        case 16:
                        case 17:
                            break;
                        default:
                            c2 = 2;
                            break;
                    }
                }
                c2 = 0;
            }
            c2 = 1;
        }
        if (c2 == 0) {
            return true;
        }
        if (c2 != 1) {
            return p();
        }
        return false;
    }

    public void l(HashMap hashMap) {
        Object apply;
        Iterator it = ((ArrayList) this.f18008e).iterator();
        while (it.hasNext()) {
            nq nqVar = (nq) it.next();
            String str = nqVar.f19721c;
            String str2 = (String) hashMap.get(str);
            if (str2 == null) {
                apply = nqVar.f19725g;
            } else {
                try {
                    apply = nqVar.f19719a.apply(str2);
                } catch (Exception e2) {
                    throw new RuntimeException(awf.t("Parse failed for option: ", str, ", value: ", str2), e2);
                }
            }
            try {
                nqVar.f19722d.n(apply);
            } catch (Exception e3) {
                throw new RuntimeException("Setter invoke failed for option: " + str + ", value: " + apply, e3);
            }
        }
    }

    public duh m(long j, String str) {
        return new duh(this, str, Long.valueOf(j), 0);
    }

    public String n(ejb ejbVar) {
        boolean z = this.f18010g;
        String str = ada.COLUMN_VALUE;
        if (z) {
            List list = ejbVar.f15633f;
            if (list.isEmpty()) {
                return ada.COLUMN_VALUE;
            }
            return "r" + ((vm) list.get(0)).f20177c.f18327e;
        }
        if (ejbVar.f15629b) {
            return "this";
        }
        String str2 = ejbVar.f15630c;
        if (!cbd.e(str2)) {
            List list2 = ejbVar.f15633f;
            if (!list2.isEmpty()) {
                str = "r" + ((vm) list2.get(0)).f20177c.f18327e;
            }
            str2 = str;
        }
        String j = j(str2);
        ejbVar.f15630c = j;
        return j;
    }

    public duh o(String str, String str2) {
        return new duh(this, str, str2, 3);
    }

    public boolean p() {
        return this.f18010g;
    }

    @Override // g.caf
    public boolean r(ftn ftnVar) {
        ((bbp) this.f18008e).f11237f.onMenuOpened(108, ftnVar);
        return true;
    }

    public String toString() {
        switch (this.f18009f) {
            case 3:
                return ((cuz) this.f18008e).toString();
            default:
                return super.toString();
        }
    }

    @Override // g.caf
    public void x(ftn ftnVar, boolean z) {
        esf esfVar;
        bbp bbpVar = (bbp) this.f18008e;
        if (this.f18010g) {
            return;
        }
        this.f18010g = true;
        ActionMenuView actionMenuView = bbpVar.f11235d.h.f115ab;
        if (actionMenuView != null && (esfVar = actionMenuView.f82b) != null) {
            esfVar.ah();
            csq csqVar = esfVar.k;
            if (csqVar != null && csqVar.n()) {
                csqVar.f12458g.dismiss();
            }
        }
        bbpVar.f11237f.onPanelClosed(108, ftnVar);
        this.f18010g = false;
    }
}
