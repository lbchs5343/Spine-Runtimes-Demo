package androidx.fragment.app;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.akj;
import g.awf;
import g.bcn;
import g.bio;
import g.bjn;
import g.bkp;
import g.brp;
import g.byd;
import g.cdh;
import g.cem;
import g.cxn;
import g.cyp;
import g.dco;
import g.dcq;
import g.dek;
import g.dnu;
import g.dou;
import g.dts;
import g.egi;
import g.egk;
import g.eud;
import g.evf;
import g.fay;
import g.fc;
import g.flu;
import g.fpd;
import g.fqv;
import g.fxh;
import g.fzt;
import g.gbv;
import g.gff;
import g.gpp;
import g.gpu;
import g.gyj;
import g.gyx;
import g.hbu;
import g.iz;
import g.tn;
import g.ut;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class v {

    /* renamed from: a, reason: collision with root package name */
    public brp f208a;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f209ab;
    public final cxn ad;
    public brp ae;
    public fay af;
    public boolean ag;
    public ArrayList ai;
    public boolean aj;
    public final egi ak;
    public androidx.activity.b al;
    public final bjn am;

    /* renamed from: d, reason: collision with root package name */
    public boolean f212d;

    /* renamed from: e, reason: collision with root package name */
    public l f213e;

    /* renamed from: f, reason: collision with root package name */
    public final cxn f214f;

    /* renamed from: g, reason: collision with root package name */
    public final gpu f215g;
    public boolean h;
    public final cxn i;
    public ArrayList j;
    public brp k;
    public final akj l;
    public ArrayList m;
    public egk o;
    public boolean p;
    public ArrayDeque q;
    public final byd r;
    public ArrayList s;
    public Fragment t;
    public Fragment u;
    public ArrayList w;
    public int x;
    public final cxn y;
    public final CopyOnWriteArrayList z;
    public final ArrayList n = new ArrayList();
    public final e ah = new e();
    public final o v = new o(this);

    /* renamed from: b, reason: collision with root package name */
    public final bcn f210b = new bcn(this, 4, false);
    public final AtomicInteger aa = new AtomicInteger();
    public final Map ac = awf.ab();

    /* renamed from: c, reason: collision with root package name */
    public final Map f211c = awf.ab();

    /* JADX WARN: Type inference failed for: r0v10, types: [g.cxn] */
    /* JADX WARN: Type inference failed for: r0v11, types: [g.cxn] */
    /* JADX WARN: Type inference failed for: r0v12, types: [g.cxn] */
    /* JADX WARN: Type inference failed for: r0v13, types: [g.cxn] */
    public v() {
        DesugarCollections.synchronizedMap(new HashMap());
        this.l = new akj(this);
        this.z = new CopyOnWriteArrayList();
        final int i = 0;
        this.i = new dts(this) { // from class: g.cxn

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ androidx.fragment.app.v f13697b;

            {
                this.f13697b = this;
            }

            @Override // g.dts
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        androidx.fragment.app.v vVar = this.f13697b;
                        if (vVar.at()) {
                            vVar.ar(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        androidx.fragment.app.v vVar2 = this.f13697b;
                        if (vVar2.at() && num.intValue() == 80) {
                            vVar2.bd(false);
                            break;
                        }
                        break;
                    case 2:
                        enr enrVar = (enr) obj;
                        androidx.fragment.app.v vVar3 = this.f13697b;
                        if (vVar3.at()) {
                            vVar3.bu(enrVar.f15871a, false);
                            break;
                        }
                        break;
                    default:
                        gre greVar = (gre) obj;
                        androidx.fragment.app.v vVar4 = this.f13697b;
                        if (vVar4.at()) {
                            vVar4.ck(greVar.f18630a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i2 = 1;
        this.f214f = new dts(this) { // from class: g.cxn

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ androidx.fragment.app.v f13697b;

            {
                this.f13697b = this;
            }

            @Override // g.dts
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        androidx.fragment.app.v vVar = this.f13697b;
                        if (vVar.at()) {
                            vVar.ar(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        androidx.fragment.app.v vVar2 = this.f13697b;
                        if (vVar2.at() && num.intValue() == 80) {
                            vVar2.bd(false);
                            break;
                        }
                        break;
                    case 2:
                        enr enrVar = (enr) obj;
                        androidx.fragment.app.v vVar3 = this.f13697b;
                        if (vVar3.at()) {
                            vVar3.bu(enrVar.f15871a, false);
                            break;
                        }
                        break;
                    default:
                        gre greVar = (gre) obj;
                        androidx.fragment.app.v vVar4 = this.f13697b;
                        if (vVar4.at()) {
                            vVar4.ck(greVar.f18630a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i3 = 2;
        this.y = new dts(this) { // from class: g.cxn

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ androidx.fragment.app.v f13697b;

            {
                this.f13697b = this;
            }

            @Override // g.dts
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        androidx.fragment.app.v vVar = this.f13697b;
                        if (vVar.at()) {
                            vVar.ar(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        androidx.fragment.app.v vVar2 = this.f13697b;
                        if (vVar2.at() && num.intValue() == 80) {
                            vVar2.bd(false);
                            break;
                        }
                        break;
                    case 2:
                        enr enrVar = (enr) obj;
                        androidx.fragment.app.v vVar3 = this.f13697b;
                        if (vVar3.at()) {
                            vVar3.bu(enrVar.f15871a, false);
                            break;
                        }
                        break;
                    default:
                        gre greVar = (gre) obj;
                        androidx.fragment.app.v vVar4 = this.f13697b;
                        if (vVar4.at()) {
                            vVar4.ck(greVar.f18630a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i4 = 3;
        this.ad = new dts(this) { // from class: g.cxn

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ androidx.fragment.app.v f13697b;

            {
                this.f13697b = this;
            }

            @Override // g.dts
            public final void accept(Object obj) {
                switch (i4) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        androidx.fragment.app.v vVar = this.f13697b;
                        if (vVar.at()) {
                            vVar.ar(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        androidx.fragment.app.v vVar2 = this.f13697b;
                        if (vVar2.at() && num.intValue() == 80) {
                            vVar2.bd(false);
                            break;
                        }
                        break;
                    case 2:
                        enr enrVar = (enr) obj;
                        androidx.fragment.app.v vVar3 = this.f13697b;
                        if (vVar3.at()) {
                            vVar3.bu(enrVar.f15871a, false);
                            break;
                        }
                        break;
                    default:
                        gre greVar = (gre) obj;
                        androidx.fragment.app.v vVar4 = this.f13697b;
                        if (vVar4.at()) {
                            vVar4.ck(greVar.f18630a, false);
                            break;
                        }
                        break;
                }
            }
        };
        this.am = new bjn(this);
        this.x = -1;
        this.ak = new egi(this);
        this.f215g = new gpu(2);
        this.q = new ArrayDeque();
        this.r = new byd(14, this);
    }

    public static boolean an(Fragment fragment) {
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        Iterator it = fragment.mChildFragmentManager.ah.g().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Fragment fragment2 = (Fragment) it.next();
            if (fragment2 != null) {
                z = an(fragment2);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boolean ao(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public static boolean ap(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        v vVar = fragment.mFragmentManager;
        return fragment.equals(vVar.u) && ap(vVar.t);
    }

    public final void aq(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        int i6;
        int i7;
        boolean z5 = ((j) arrayList.get(i)).k;
        ArrayList arrayList3 = this.s;
        if (arrayList3 == null) {
            this.s = new ArrayList();
        } else {
            arrayList3.clear();
        }
        ArrayList arrayList4 = this.s;
        e eVar = this.ah;
        arrayList4.addAll(eVar.i());
        Fragment fragment = this.u;
        int i8 = i;
        boolean z6 = false;
        while (true) {
            int i9 = 1;
            if (i8 >= i2) {
                boolean z7 = z5;
                this.s.clear();
                if (!z7 && this.x >= 1) {
                    for (int i10 = i; i10 < i2; i10++) {
                        Iterator it = ((j) arrayList.get(i10)).p.iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = ((fzt) it.next()).f17750g;
                            if (fragment2 != null && fragment2.mFragmentManager != null) {
                                eVar.m(bq(fragment2));
                            }
                        }
                    }
                }
                for (int i11 = i; i11 < i2; i11++) {
                    j jVar = (j) arrayList.get(i11);
                    if (((Boolean) arrayList2.get(i11)).booleanValue()) {
                        jVar.d(-1);
                        v vVar = jVar.f191a;
                        ArrayList arrayList5 = jVar.p;
                        boolean z8 = true;
                        for (int size = arrayList5.size() - 1; size >= 0; size--) {
                            fzt fztVar = (fzt) arrayList5.get(size);
                            Fragment fragment3 = fztVar.f17750g;
                            if (fragment3 != null) {
                                fragment3.mBeingSaved = false;
                                fragment3.setPopDirection(z8);
                                int i12 = jVar.q;
                                int i13 = 8194;
                                if (i12 != 4097) {
                                    if (i12 != 8194) {
                                        i13 = 4100;
                                        if (i12 != 8197) {
                                            i13 = i12 != 4099 ? i12 != 4100 ? 0 : 8197 : 4099;
                                        }
                                    } else {
                                        i13 = 4097;
                                    }
                                }
                                fragment3.setNextTransition(i13);
                                fragment3.setSharedElementNames(jVar.l, jVar.r);
                            }
                            switch (fztVar.f17747d) {
                                case 1:
                                    fragment3.setAnimations(fztVar.f17745b, fztVar.f17746c, fztVar.f17748e, fztVar.i);
                                    z8 = true;
                                    vVar.bz(fragment3, true);
                                    vVar.ce(fragment3);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + fztVar.f17747d);
                                case 3:
                                    fragment3.setAnimations(fztVar.f17745b, fztVar.f17746c, fztVar.f17748e, fztVar.i);
                                    vVar.bg(fragment3);
                                    z8 = true;
                                case 4:
                                    fragment3.setAnimations(fztVar.f17745b, fztVar.f17746c, fztVar.f17748e, fztVar.i);
                                    vVar.getClass();
                                    if (ao(2)) {
                                        Objects.toString(fragment3);
                                    }
                                    if (fragment3.mHidden) {
                                        fragment3.mHidden = false;
                                        fragment3.mHiddenChanged = !fragment3.mHiddenChanged;
                                    }
                                    z8 = true;
                                case 5:
                                    fragment3.setAnimations(fztVar.f17745b, fztVar.f17746c, fztVar.f17748e, fztVar.i);
                                    vVar.bz(fragment3, true);
                                    if (ao(2)) {
                                        Objects.toString(fragment3);
                                    }
                                    if (!fragment3.mHidden) {
                                        fragment3.mHidden = true;
                                        fragment3.mHiddenChanged = !fragment3.mHiddenChanged;
                                        vVar.bo(fragment3);
                                    }
                                    z8 = true;
                                case 6:
                                    fragment3.setAnimations(fztVar.f17745b, fztVar.f17746c, fztVar.f17748e, fztVar.i);
                                    vVar.cg(fragment3);
                                    z8 = true;
                                case 7:
                                    fragment3.setAnimations(fztVar.f17745b, fztVar.f17746c, fztVar.f17748e, fztVar.i);
                                    vVar.bz(fragment3, true);
                                    vVar.cj(fragment3);
                                    z8 = true;
                                case 8:
                                    vVar.az(null);
                                    z8 = true;
                                case 9:
                                    vVar.az(fragment3);
                                    z8 = true;
                                case 10:
                                    vVar.bf(fragment3, fztVar.f17744a);
                                    z8 = true;
                            }
                        }
                    } else {
                        jVar.d(1);
                        v vVar2 = jVar.f191a;
                        ArrayList arrayList6 = jVar.p;
                        int size2 = arrayList6.size();
                        for (int i14 = 0; i14 < size2; i14++) {
                            fzt fztVar2 = (fzt) arrayList6.get(i14);
                            Fragment fragment4 = fztVar2.f17750g;
                            if (fragment4 != null) {
                                fragment4.mBeingSaved = false;
                                fragment4.setPopDirection(false);
                                fragment4.setNextTransition(jVar.q);
                                fragment4.setSharedElementNames(jVar.r, jVar.l);
                            }
                            switch (fztVar2.f17747d) {
                                case 1:
                                    fragment4.setAnimations(fztVar2.f17745b, fztVar2.f17746c, fztVar2.f17748e, fztVar2.i);
                                    vVar2.bz(fragment4, false);
                                    vVar2.bg(fragment4);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + fztVar2.f17747d);
                                case 3:
                                    fragment4.setAnimations(fztVar2.f17745b, fztVar2.f17746c, fztVar2.f17748e, fztVar2.i);
                                    vVar2.ce(fragment4);
                                case 4:
                                    fragment4.setAnimations(fztVar2.f17745b, fztVar2.f17746c, fztVar2.f17748e, fztVar2.i);
                                    vVar2.getClass();
                                    if (ao(2)) {
                                        Objects.toString(fragment4);
                                    }
                                    if (!fragment4.mHidden) {
                                        fragment4.mHidden = true;
                                        fragment4.mHiddenChanged = !fragment4.mHiddenChanged;
                                        vVar2.bo(fragment4);
                                    }
                                case 5:
                                    fragment4.setAnimations(fztVar2.f17745b, fztVar2.f17746c, fztVar2.f17748e, fztVar2.i);
                                    vVar2.bz(fragment4, false);
                                    if (ao(2)) {
                                        Objects.toString(fragment4);
                                    }
                                    if (fragment4.mHidden) {
                                        fragment4.mHidden = false;
                                        fragment4.mHiddenChanged = !fragment4.mHiddenChanged;
                                    }
                                case 6:
                                    fragment4.setAnimations(fztVar2.f17745b, fztVar2.f17746c, fztVar2.f17748e, fztVar2.i);
                                    vVar2.cj(fragment4);
                                case 7:
                                    fragment4.setAnimations(fztVar2.f17745b, fztVar2.f17746c, fztVar2.f17748e, fztVar2.i);
                                    vVar2.bz(fragment4, false);
                                    vVar2.cg(fragment4);
                                case 8:
                                    vVar2.az(fragment4);
                                case 9:
                                    vVar2.az(null);
                                case 10:
                                    vVar2.bf(fragment4, fztVar2.f17749f);
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i15 = i; i15 < i2; i15++) {
                    j jVar2 = (j) arrayList.get(i15);
                    if (booleanValue) {
                        for (int size3 = jVar2.p.size() - 1; size3 >= 0; size3--) {
                            Fragment fragment5 = ((fzt) jVar2.p.get(size3)).f17750g;
                            if (fragment5 != null) {
                                bq(fragment5).n();
                            }
                        }
                    } else {
                        Iterator it2 = jVar2.p.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment6 = ((fzt) it2.next()).f17750g;
                            if (fragment6 != null) {
                                bq(fragment6).n();
                            }
                        }
                    }
                }
                br(this.x, true);
                HashSet hashSet = new HashSet();
                for (int i16 = i; i16 < i2; i16++) {
                    Iterator it3 = ((j) arrayList.get(i16)).p.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment7 = ((fzt) it3.next()).f17750g;
                        if (fragment7 != null && (viewGroup = fragment7.mContainer) != null) {
                            hashSet.add(y.j(viewGroup, ch()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    y yVar = (y) it4.next();
                    yVar.f221a = booleanValue;
                    yVar.o();
                    yVar.k();
                }
                for (int i17 = i; i17 < i2; i17++) {
                    j jVar3 = (j) arrayList.get(i17);
                    if (((Boolean) arrayList2.get(i17)).booleanValue() && jVar3.f193c >= 0) {
                        jVar3.f193c = -1;
                    }
                    jVar3.getClass();
                }
                return;
            }
            j jVar4 = (j) arrayList.get(i8);
            if (((Boolean) arrayList2.get(i8)).booleanValue()) {
                z = z5;
                i3 = i8;
                z2 = z6;
                int i18 = 1;
                ArrayList arrayList7 = this.s;
                ArrayList arrayList8 = jVar4.p;
                int size4 = arrayList8.size() - 1;
                while (size4 >= 0) {
                    fzt fztVar3 = (fzt) arrayList8.get(size4);
                    int i19 = fztVar3.f17747d;
                    if (i19 != i18) {
                        if (i19 != 3) {
                            switch (i19) {
                                case 8:
                                    fragment = null;
                                    break;
                                case 9:
                                    fragment = fztVar3.f17750g;
                                    break;
                                case 10:
                                    fztVar3.f17749f = fztVar3.f17744a;
                                    break;
                            }
                            size4--;
                            i18 = 1;
                        }
                        arrayList7.add(fztVar3.f17750g);
                        size4--;
                        i18 = 1;
                    }
                    arrayList7.remove(fztVar3.f17750g);
                    size4--;
                    i18 = 1;
                }
            } else {
                ArrayList arrayList9 = this.s;
                ArrayList arrayList10 = jVar4.p;
                int i20 = 0;
                while (i20 < arrayList10.size()) {
                    fzt fztVar4 = (fzt) arrayList10.get(i20);
                    int i21 = fztVar4.f17747d;
                    if (i21 != i9) {
                        if (i21 != 2) {
                            if (i21 == 3 || i21 == 6) {
                                z3 = z5;
                                arrayList9.remove(fztVar4.f17750g);
                                Fragment fragment8 = fztVar4.f17750g;
                                if (fragment8 == fragment) {
                                    arrayList10.add(i20, new fzt(fragment8, 9));
                                    i20++;
                                    i4 = i8;
                                    z4 = z6;
                                    i5 = 1;
                                    fragment = null;
                                }
                            } else if (i21 != 7) {
                                if (i21 != 8) {
                                    z3 = z5;
                                } else {
                                    z3 = z5;
                                    arrayList10.add(i20, new fzt(9, fragment, 0));
                                    fztVar4.h = true;
                                    i20++;
                                    fragment = fztVar4.f17750g;
                                }
                            }
                            i4 = i8;
                            z4 = z6;
                            i5 = 1;
                        } else {
                            z3 = z5;
                            Fragment fragment9 = fztVar4.f17750g;
                            int i22 = fragment9.mContainerId;
                            int size5 = arrayList9.size() - 1;
                            boolean z9 = false;
                            while (size5 >= 0) {
                                int i23 = i8;
                                Fragment fragment10 = (Fragment) arrayList9.get(size5);
                                boolean z10 = z6;
                                if (fragment10.mContainerId != i22) {
                                    i6 = i22;
                                } else if (fragment10 == fragment9) {
                                    i6 = i22;
                                    z9 = true;
                                } else {
                                    if (fragment10 == fragment) {
                                        i6 = i22;
                                        i7 = 0;
                                        arrayList10.add(i20, new fzt(9, fragment10, 0));
                                        i20++;
                                        fragment = null;
                                    } else {
                                        i6 = i22;
                                        i7 = 0;
                                    }
                                    fzt fztVar5 = new fzt(3, fragment10, i7);
                                    fztVar5.f17745b = fztVar4.f17745b;
                                    fztVar5.f17748e = fztVar4.f17748e;
                                    fztVar5.f17746c = fztVar4.f17746c;
                                    fztVar5.i = fztVar4.i;
                                    arrayList10.add(i20, fztVar5);
                                    arrayList9.remove(fragment10);
                                    i20++;
                                    fragment = fragment;
                                }
                                size5--;
                                i22 = i6;
                                z6 = z10;
                                i8 = i23;
                            }
                            i4 = i8;
                            z4 = z6;
                            i5 = 1;
                            if (z9) {
                                arrayList10.remove(i20);
                                i20--;
                            } else {
                                fztVar4.f17747d = 1;
                                fztVar4.h = true;
                                arrayList9.add(fragment9);
                            }
                        }
                        i20 += i5;
                        z5 = z3;
                        z6 = z4;
                        i8 = i4;
                        i9 = 1;
                    }
                    z3 = z5;
                    i4 = i8;
                    z4 = z6;
                    i5 = 1;
                    arrayList9.add(fztVar4.f17750g);
                    i20 += i5;
                    z5 = z3;
                    z6 = z4;
                    i8 = i4;
                    i9 = 1;
                }
                z = z5;
                i3 = i8;
                z2 = z6;
            }
            z6 = z2 || jVar4.w;
            i8 = i3 + 1;
            z5 = z;
        }
    }

    public final void ar(boolean z, Configuration configuration) {
        if (z && (this.af instanceof gpp)) {
            bl(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z) {
                    fragment.mChildFragmentManager.ar(true, configuration);
                }
            }
        }
    }

    public final void as() {
        boolean z = true;
        this.h = true;
        ci(true);
        Iterator it = be().iterator();
        while (it.hasNext()) {
            ((y) it.next()).q();
        }
        fay fayVar = this.af;
        boolean z2 = fayVar instanceof gyj;
        e eVar = this.ah;
        if (z2) {
            z = eVar.f179a.f195b;
        } else {
            u uVar = fayVar.h;
            if (awf.n(uVar)) {
                z = true ^ uVar.isChangingConfigurations();
            }
        }
        if (z) {
            Iterator it2 = this.ac.values().iterator();
            while (it2.hasNext()) {
                Iterator<String> it3 = ((w) it2.next()).mFragments.iterator();
                while (it3.hasNext()) {
                    eVar.f179a.h(it3.next());
                }
            }
        }
        cd(-1);
        Object obj = this.af;
        if (obj instanceof fxh) {
            ((fxh) obj).removeOnTrimMemoryListener(this.f214f);
        }
        Object obj2 = this.af;
        if (obj2 instanceof gpp) {
            ((gpp) obj2).removeOnConfigurationChangedListener(this.i);
        }
        Object obj3 = this.af;
        if (obj3 instanceof dnu) {
            ((dnu) obj3).removeOnMultiWindowModeChangedListener(this.y);
        }
        Object obj4 = this.af;
        if (obj4 instanceof gbv) {
            ((gbv) obj4).removeOnPictureInPictureModeChangedListener(this.ad);
        }
        Object obj5 = this.af;
        if (obj5 instanceof bkp) {
            ((bkp) obj5).removeMenuProvider(this.am);
        }
        this.af = null;
        this.o = null;
        this.t = null;
        if (this.al != null) {
            Iterator it4 = this.f210b.f11286d.iterator();
            while (it4.hasNext()) {
                ((gyx) it4.next()).cancel();
            }
            this.al = null;
        }
        brp brpVar = this.f208a;
        if (brpVar != null) {
            brpVar.f();
            this.ae.f();
            this.k.f();
        }
    }

    public final boolean at() {
        Fragment fragment = this.t;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.t.getParentFragmentManager().at();
    }

    public final boolean au() {
        return bk(-1, 0);
    }

    public final boolean av(MenuItem menuItem) {
        if (this.x < 1) {
            return false;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void aw(j jVar, boolean z) {
        if (z && (this.af == null || this.h)) {
            return;
        }
        bp(z);
        jVar.f(this.ai, this.w);
        this.f209ab = true;
        try {
            bw(this.ai, this.w);
            bb();
            cl();
            boolean z2 = this.f212d;
            e eVar = this.ah;
            if (z2) {
                this.f212d = false;
                Iterator it = eVar.f().iterator();
                while (it.hasNext()) {
                    x xVar = (x) it.next();
                    Fragment fragment = xVar.f220e;
                    if (fragment.mDeferStart) {
                        if (this.f209ab) {
                            this.f212d = true;
                        } else {
                            fragment.mDeferStart = false;
                            xVar.n();
                        }
                    }
                }
            }
            eVar.f181c.values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            bb();
            throw th;
        }
    }

    public final void ax(Parcelable parcelable) {
        akj akjVar;
        x xVar;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.af.h.getClassLoader());
                this.f211c.put(str.substring(7), bundle2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.af.h.getClassLoader());
                arrayList.add((m) bundle.getParcelable("state"));
            }
        }
        e eVar = this.ah;
        HashMap hashMap = eVar.f182d;
        HashMap hashMap2 = eVar.f181c;
        hashMap.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            hashMap.put(mVar.mWho, mVar);
        }
        k kVar = (k) bundle3.getParcelable("state");
        if (kVar == null) {
            return;
        }
        hashMap2.clear();
        Iterator<String> it2 = kVar.mActive.iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            akjVar = this.l;
            if (!hasNext) {
                break;
            }
            m j = eVar.j(it2.next(), null);
            if (j != null) {
                Fragment fragment = (Fragment) this.f213e.f196c.get(j.mWho);
                if (fragment != null) {
                    if (ao(2)) {
                        fragment.toString();
                    }
                    xVar = new x(akjVar, eVar, fragment, j);
                } else {
                    xVar = new x(this.l, this.ah, this.af.h.getClassLoader(), bi(), j);
                }
                Fragment fragment2 = xVar.f220e;
                fragment2.mFragmentManager = this;
                if (ao(2)) {
                    fragment2.toString();
                }
                xVar.p(this.af.h.getClassLoader());
                eVar.m(xVar);
                xVar.f217b = this.x;
            }
        }
        l lVar = this.f213e;
        lVar.getClass();
        Iterator it3 = new ArrayList(lVar.f196c.values()).iterator();
        while (it3.hasNext()) {
            Fragment fragment3 = (Fragment) it3.next();
            if (hashMap2.get(fragment3.mWho) == null) {
                if (ao(2)) {
                    fragment3.toString();
                    Objects.toString(kVar.mActive);
                }
                this.f213e.i(fragment3);
                fragment3.mFragmentManager = this;
                x xVar2 = new x(akjVar, eVar, fragment3);
                xVar2.f217b = 1;
                xVar2.n();
                fragment3.mRemoving = true;
                xVar2.n();
            }
        }
        ArrayList<String> arrayList2 = kVar.mAdded;
        eVar.f180b.clear();
        if (arrayList2 != null) {
            for (String str3 : arrayList2) {
                Fragment k = eVar.k(str3);
                if (k == null) {
                    throw new IllegalStateException(tn.ad("No instantiated fragment for (", str3, ")"));
                }
                if (ao(2)) {
                    k.toString();
                }
                eVar.h(k);
            }
        }
        if (kVar.mBackStack != null) {
            this.j = new ArrayList(kVar.mBackStack.length);
            int i = 0;
            while (true) {
                s[] sVarArr = kVar.mBackStack;
                if (i >= sVarArr.length) {
                    break;
                }
                j instantiate = sVarArr[i].instantiate(this);
                if (ao(2)) {
                    int i2 = instantiate.f193c;
                    instantiate.toString();
                    PrintWriter printWriter = new PrintWriter(new dou());
                    instantiate.g("  ", printWriter, false);
                    printWriter.close();
                }
                this.j.add(instantiate);
                i++;
            }
        } else {
            this.j = null;
        }
        this.aa.set(kVar.mBackStackIndex);
        String str4 = kVar.mPrimaryNavActiveWho;
        if (str4 != null) {
            Fragment k2 = eVar.k(str4);
            this.u = k2;
            cb(k2);
        }
        ArrayList<String> arrayList3 = kVar.mBackStackStateKeys;
        if (arrayList3 != null) {
            for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                this.ac.put(arrayList3.get(i3), kVar.mBackStackStates.get(i3));
            }
        }
        this.q = new ArrayDeque(kVar.mLaunchedFragments);
    }

    public final boolean ay(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z = (i2 & 1) != 0;
        ArrayList arrayList3 = this.j;
        int i3 = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i < 0) {
                i3 = z ? 0 : this.j.size() - 1;
            } else {
                int size = this.j.size() - 1;
                while (size >= 0) {
                    j jVar = (j) this.j.get(size);
                    if (i >= 0 && i == jVar.f193c) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    i3 = size;
                } else if (z) {
                    i3 = size;
                    while (i3 > 0) {
                        j jVar2 = (j) this.j.get(i3 - 1);
                        if (i < 0 || i != jVar2.f193c) {
                            break;
                        }
                        i3--;
                    }
                } else if (size != this.j.size() - 1) {
                    i3 = size + 1;
                }
            }
        }
        if (i3 < 0) {
            return false;
        }
        for (int size2 = this.j.size() - 1; size2 >= i3; size2--) {
            arrayList.add((j) this.j.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void az(Fragment fragment) {
        if (fragment != null) {
            if (!fragment.equals(this.ah.k(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
            }
        }
        Fragment fragment2 = this.u;
        this.u = fragment;
        cb(fragment2);
        cb(this.u);
    }

    public final void ba() {
        Iterator it = this.ah.g().iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.ba();
            }
        }
    }

    public final void bb() {
        this.f209ab = false;
        this.w.clear();
        this.ai.clear();
    }

    public final Fragment bc(String str) {
        e eVar = this.ah;
        ArrayList arrayList = eVar.f180b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && str.equals(fragment.mTag)) {
                return fragment;
            }
        }
        for (x xVar : eVar.f181c.values()) {
            if (xVar != null) {
                Fragment fragment2 = xVar.f220e;
                if (str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final void bd(boolean z) {
        if (z && (this.af instanceof fxh)) {
            bl(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z) {
                    fragment.mChildFragmentManager.bd(true);
                }
            }
        }
    }

    public final HashSet be() {
        HashSet hashSet = new HashSet();
        Iterator it = this.ah.f().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((x) it.next()).f220e.mContainer;
            if (viewGroup != null) {
                hashSet.add(y.j(viewGroup, ch()));
            }
        }
        return hashSet;
    }

    public final void bf(Fragment fragment, fqv fqvVar) {
        if (fragment.equals(this.ah.k(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = fqvVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final x bg(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            dek.d(fragment, str);
        }
        if (ao(2)) {
            fragment.toString();
        }
        x bq = bq(fragment);
        fragment.mFragmentManager = this;
        e eVar = this.ah;
        eVar.m(bq);
        if (!fragment.mDetached) {
            eVar.h(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (an(fragment)) {
                this.p = true;
            }
        }
        return bq;
    }

    public final void bh(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String c2 = awf.c(str, "    ");
        e eVar = this.ah;
        ArrayList arrayList = eVar.f180b;
        String c3 = awf.c(str, "    ");
        HashMap hashMap = eVar.f181c;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (x xVar : hashMap.values()) {
                printWriter.print(str);
                if (xVar != null) {
                    Fragment fragment = xVar.f220e;
                    printWriter.println(fragment);
                    fragment.dump(c3, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                Fragment fragment2 = (Fragment) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.m;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment3 = (Fragment) this.m.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.j;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                j jVar = (j) this.j.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(jVar.toString());
                jVar.g(c2, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.aa.get());
        synchronized (this.n) {
            try {
                int size4 = this.n.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj = (flu) this.n.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.af);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.o);
        if (this.t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.x);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.aj);
        printWriter.print(" mStopped=");
        printWriter.print(this.ag);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.h);
        if (this.p) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.p);
        }
    }

    public final ut bi() {
        Fragment fragment = this.t;
        return fragment != null ? fragment.mFragmentManager.bi() : this.ak;
    }

    public final ViewGroup bj(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId <= 0 || !this.o.d()) {
            return null;
        }
        View c2 = this.o.c(fragment.mContainerId);
        if (c2 instanceof ViewGroup) {
            return (ViewGroup) c2;
        }
        return null;
    }

    public final boolean bk(int i, int i2) {
        ci(false);
        bp(true);
        Fragment fragment = this.u;
        if (fragment != null && i < 0 && fragment.getChildFragmentManager().au()) {
            return true;
        }
        boolean ay = ay(this.ai, this.w, i, i2);
        if (ay) {
            this.f209ab = true;
            try {
                bw(this.ai, this.w);
            } finally {
                bb();
            }
        }
        cl();
        boolean z = this.f212d;
        e eVar = this.ah;
        if (z) {
            this.f212d = false;
            Iterator it = eVar.f().iterator();
            while (it.hasNext()) {
                x xVar = (x) it.next();
                Fragment fragment2 = xVar.f220e;
                if (fragment2.mDeferStart) {
                    if (this.f209ab) {
                        this.f212d = true;
                    } else {
                        fragment2.mDeferStart = false;
                        xVar.n();
                    }
                }
            }
        }
        eVar.f181c.values().removeAll(Collections.singleton(null));
        return ay;
    }

    public final void bl(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new dou());
        fay fayVar = this.af;
        if (fayVar == null) {
            try {
                bh("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
                throw illegalStateException;
            }
        }
        try {
            ((p) fayVar).f204a.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e3) {
            Log.e("FragmentManager", "Failed dumping state", e3);
            throw illegalStateException;
        }
    }

    public final void bm() {
        if (this.af == null) {
            return;
        }
        this.aj = false;
        this.ag = false;
        this.f213e.f199f = false;
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final void bn(flu fluVar, boolean z) {
        if (!z) {
            if (this.af == null) {
                if (!this.h) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.aj || this.ag) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.n) {
            try {
                if (this.af == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.n.add(fluVar);
                    cf();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void bo(Fragment fragment) {
        ViewGroup bj = bj(fragment);
        if (bj != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (bj.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    bj.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) bj.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    public final void bp(boolean z) {
        if (this.f209ab) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.af == null) {
            if (!this.h) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.af.f16497e.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z && (this.aj || this.ag)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.ai == null) {
            this.ai = new ArrayList();
            this.w = new ArrayList();
        }
    }

    public final x bq(Fragment fragment) {
        String str = fragment.mWho;
        e eVar = this.ah;
        x xVar = (x) eVar.f181c.get(str);
        if (xVar != null) {
            return xVar;
        }
        x xVar2 = new x(this.l, eVar, fragment);
        xVar2.p(this.af.h.getClassLoader());
        xVar2.f217b = this.x;
        return xVar2;
    }

    public final void br(int i, boolean z) {
        fay fayVar;
        if (this.af == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.x) {
            this.x = i;
            e eVar = this.ah;
            HashMap hashMap = eVar.f181c;
            Iterator it = eVar.f180b.iterator();
            while (it.hasNext()) {
                x xVar = (x) hashMap.get(((Fragment) it.next()).mWho);
                if (xVar != null) {
                    xVar.n();
                }
            }
            for (x xVar2 : hashMap.values()) {
                if (xVar2 != null) {
                    xVar2.n();
                    Fragment fragment = xVar2.f220e;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        if (fragment.mBeingSaved && !eVar.f182d.containsKey(fragment.mWho)) {
                            xVar2.i();
                        }
                        eVar.e(xVar2);
                    }
                }
            }
            Iterator it2 = eVar.f().iterator();
            while (it2.hasNext()) {
                x xVar3 = (x) it2.next();
                Fragment fragment2 = xVar3.f220e;
                if (fragment2.mDeferStart) {
                    if (this.f209ab) {
                        this.f212d = true;
                    } else {
                        fragment2.mDeferStart = false;
                        xVar3.n();
                    }
                }
            }
            if (this.p && (fayVar = this.af) != null && this.x == 7) {
                ((p) fayVar).f204a.invalidateOptionsMenu();
                this.p = false;
            }
        }
    }

    public final boolean bs(Menu menu) {
        boolean z = false;
        if (this.x < 1) {
            return false;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void bt(Menu menu) {
        if (this.x < 1) {
            return;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void bu(boolean z, boolean z2) {
        if (z2 && (this.af instanceof dnu)) {
            bl(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
                if (z2) {
                    fragment.mChildFragmentManager.bu(z, true);
                }
            }
        }
    }

    public final Bundle bv() {
        int i;
        s[] sVarArr;
        ArrayList<String> arrayList;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = be().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            y yVar = (y) it.next();
            if (yVar.f222b) {
                yVar.f222b = false;
                yVar.k();
            }
        }
        Iterator it2 = be().iterator();
        while (it2.hasNext()) {
            ((y) it2.next()).q();
        }
        ci(true);
        this.aj = true;
        this.f213e.f199f = true;
        e eVar = this.ah;
        eVar.getClass();
        HashMap hashMap = eVar.f181c;
        ArrayList<String> arrayList2 = new ArrayList<>(hashMap.size());
        for (x xVar : hashMap.values()) {
            if (xVar != null) {
                Fragment fragment = xVar.f220e;
                xVar.i();
                arrayList2.add(fragment.mWho);
                if (ao(2)) {
                    fragment.toString();
                    Objects.toString(fragment.mSavedFragmentState);
                }
            }
        }
        e eVar2 = this.ah;
        eVar2.getClass();
        ArrayList arrayList3 = new ArrayList(eVar2.f182d.values());
        if (!arrayList3.isEmpty()) {
            e eVar3 = this.ah;
            synchronized (eVar3.f180b) {
                try {
                    sVarArr = null;
                    if (eVar3.f180b.isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList<>(eVar3.f180b.size());
                        Iterator it3 = eVar3.f180b.iterator();
                        while (it3.hasNext()) {
                            Fragment fragment2 = (Fragment) it3.next();
                            arrayList.add(fragment2.mWho);
                            if (ao(2)) {
                                fragment2.toString();
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList4 = this.j;
            if (arrayList4 != null && (size = arrayList4.size()) > 0) {
                sVarArr = new s[size];
                for (i = 0; i < size; i++) {
                    sVarArr[i] = new s((j) this.j.get(i));
                    if (ao(2)) {
                        Objects.toString(this.j.get(i));
                    }
                }
            }
            k kVar = new k();
            kVar.mActive = arrayList2;
            kVar.mAdded = arrayList;
            kVar.mBackStack = sVarArr;
            kVar.mBackStackIndex = this.aa.get();
            Fragment fragment3 = this.u;
            if (fragment3 != null) {
                kVar.mPrimaryNavActiveWho = fragment3.mWho;
            }
            kVar.mBackStackStateKeys.addAll(this.ac.keySet());
            kVar.mBackStackStates.addAll(this.ac.values());
            kVar.mLaunchedFragments = new ArrayList<>(this.q);
            bundle.putParcelable("state", kVar);
            for (String str : this.f211c.keySet()) {
                bundle.putBundle(tn.x("result_", str), (Bundle) this.f211c.get(str));
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                m mVar = (m) it4.next();
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", mVar);
                bundle.putBundle("fragment_" + mVar.mWho, bundle2);
            }
        }
        return bundle;
    }

    public final void bw(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((j) arrayList.get(i)).k) {
                if (i2 != i) {
                    aq(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((j) arrayList.get(i2)).k) {
                        i2++;
                    }
                }
                aq(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            aq(arrayList, arrayList2, i2, size);
        }
    }

    public final boolean bx(MenuItem menuItem) {
        if (this.x < 1) {
            return false;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void by(fay fayVar, egk egkVar, Fragment fragment) {
        if (this.af != null) {
            throw new IllegalStateException("Already attached");
        }
        this.af = fayVar;
        this.o = egkVar;
        this.t = fragment;
        CopyOnWriteArrayList copyOnWriteArrayList = this.z;
        if (fragment != null) {
            copyOnWriteArrayList.add(new cyp(fragment));
        } else if (fayVar instanceof cem) {
            copyOnWriteArrayList.add((cem) fayVar);
        }
        if (this.t != null) {
            cl();
        }
        if (fayVar instanceof eud) {
            eud eudVar = (eud) fayVar;
            androidx.activity.b onBackPressedDispatcher = eudVar.getOnBackPressedDispatcher();
            this.al = onBackPressedDispatcher;
            iz izVar = eudVar;
            if (fragment != null) {
                izVar = fragment;
            }
            onBackPressedDispatcher.i(izVar, this.f210b);
        }
        if (fragment != null) {
            l lVar = fragment.mFragmentManager.f213e;
            HashMap hashMap = lVar.f197d;
            l lVar2 = (l) hashMap.get(fragment.mWho);
            if (lVar2 == null) {
                lVar2 = new l(lVar.f200g);
                hashMap.put(fragment.mWho, lVar2);
            }
            this.f213e = lVar2;
        } else if (fayVar instanceof gyj) {
            fpd fpdVar = new fpd(((gyj) fayVar).getViewModelStore(), l.f194a);
            String canonicalName = l.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            this.f213e = (l) fpdVar.t(l.class, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        } else {
            this.f213e = new l(false);
        }
        l lVar3 = this.f213e;
        lVar3.f199f = this.aj || this.ag;
        this.ah.f179a = lVar3;
        Object obj = this.af;
        if ((obj instanceof gff) && fragment == null) {
            hbu savedStateRegistry = ((gff) obj).getSavedStateRegistry();
            savedStateRegistry.j("android:support:fragments", new dco(1, this));
            Bundle h = savedStateRegistry.h("android:support:fragments");
            if (h != null) {
                ax(h);
            }
        }
        Object obj2 = this.af;
        if (obj2 instanceof cdh) {
            androidx.activity.result.a activityResultRegistry = ((cdh) obj2).getActivityResultRegistry();
            String x = tn.x("FragmentManager:", fragment != null ? awf.ad(new StringBuilder(), fragment.mWho, ":") : "");
            this.f208a = activityResultRegistry.m(awf.c(x, "StartActivityForResult"), new bio(1), new fc(1, this));
            this.ae = activityResultRegistry.m(awf.c(x, "StartIntentSenderForResult"), new bio(3), new evf(0, this));
            this.k = activityResultRegistry.m(awf.c(x, "RequestPermissions"), new bio(0), new dcq(1, this));
        }
        Object obj3 = this.af;
        if (obj3 instanceof gpp) {
            ((gpp) obj3).addOnConfigurationChangedListener(this.i);
        }
        Object obj4 = this.af;
        if (obj4 instanceof fxh) {
            ((fxh) obj4).addOnTrimMemoryListener(this.f214f);
        }
        Object obj5 = this.af;
        if (obj5 instanceof dnu) {
            ((dnu) obj5).addOnMultiWindowModeChangedListener(this.y);
        }
        Object obj6 = this.af;
        if (obj6 instanceof gbv) {
            ((gbv) obj6).addOnPictureInPictureModeChangedListener(this.ad);
        }
        Object obj7 = this.af;
        if ((obj7 instanceof bkp) && fragment == null) {
            ((bkp) obj7).addMenuProvider(this.am);
        }
    }

    public final void bz(Fragment fragment, boolean z) {
        ViewGroup bj = bj(fragment);
        if (bj == null || !(bj instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) bj).setDrawDisappearingViewsLast(!z);
    }

    public final boolean ca(Menu menu, MenuInflater menuInflater) {
        if (this.x < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                Fragment fragment2 = (Fragment) this.m.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.m = arrayList;
        return z;
    }

    public final void cb(Fragment fragment) {
        if (fragment != null) {
            if (fragment.equals(this.ah.k(fragment.mWho))) {
                fragment.performPrimaryNavigationFragmentChanged();
            }
        }
    }

    public final Fragment cc(int i) {
        e eVar = this.ah;
        ArrayList arrayList = eVar.f180b;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (x xVar : eVar.f181c.values()) {
            if (xVar != null) {
                Fragment fragment2 = xVar.f220e;
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final void cd(int i) {
        try {
            this.f209ab = true;
            for (x xVar : this.ah.f181c.values()) {
                if (xVar != null) {
                    xVar.f217b = i;
                }
            }
            br(i, false);
            Iterator it = be().iterator();
            while (it.hasNext()) {
                ((y) it.next()).q();
            }
            this.f209ab = false;
            ci(true);
        } catch (Throwable th) {
            this.f209ab = false;
            throw th;
        }
    }

    public final void ce(Fragment fragment) {
        if (ao(2)) {
            Objects.toString(fragment);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && isInBackStack) {
            return;
        }
        e eVar = this.ah;
        synchronized (eVar.f180b) {
            eVar.f180b.remove(fragment);
        }
        fragment.mAdded = false;
        if (an(fragment)) {
            this.p = true;
        }
        fragment.mRemoving = true;
        bo(fragment);
    }

    public final void cf() {
        synchronized (this.n) {
            try {
                if (this.n.size() == 1) {
                    this.af.f16497e.removeCallbacks(this.r);
                    this.af.f16497e.post(this.r);
                    cl();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void cg(Fragment fragment) {
        if (ao(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.ah.h(fragment);
            if (ao(2)) {
                fragment.toString();
            }
            if (an(fragment)) {
                this.p = true;
            }
        }
    }

    public final gpu ch() {
        Fragment fragment = this.t;
        return fragment != null ? fragment.mFragmentManager.ch() : this.f215g;
    }

    public final boolean ci(boolean z) {
        boolean z2;
        bp(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.ai;
            ArrayList arrayList2 = this.w;
            synchronized (this.n) {
                if (this.n.isEmpty()) {
                    z2 = false;
                } else {
                    try {
                        int size = this.n.size();
                        z2 = false;
                        for (int i = 0; i < size; i++) {
                            z2 |= ((flu) this.n.get(i)).f(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (!z2) {
                break;
            }
            this.f209ab = true;
            try {
                bw(this.ai, this.w);
                bb();
                z3 = true;
            } catch (Throwable th) {
                bb();
                throw th;
            }
        }
        cl();
        if (this.f212d) {
            this.f212d = false;
            Iterator it = this.ah.f().iterator();
            while (it.hasNext()) {
                x xVar = (x) it.next();
                Fragment fragment = xVar.f220e;
                if (fragment.mDeferStart) {
                    if (this.f209ab) {
                        this.f212d = true;
                    } else {
                        fragment.mDeferStart = false;
                        xVar.n();
                    }
                }
            }
        }
        this.ah.f181c.values().removeAll(Collections.singleton(null));
        return z3;
    }

    public final void cj(Fragment fragment) {
        if (ao(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (ao(2)) {
                fragment.toString();
            }
            e eVar = this.ah;
            synchronized (eVar.f180b) {
                eVar.f180b.remove(fragment);
            }
            fragment.mAdded = false;
            if (an(fragment)) {
                this.p = true;
            }
            bo(fragment);
        }
    }

    public final void ck(boolean z, boolean z2) {
        if (z2 && (this.af instanceof gbv)) {
            bl(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.ah.i()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
                if (z2) {
                    fragment.mChildFragmentManager.ck(z, true);
                }
            }
        }
    }

    public final void cl() {
        synchronized (this.n) {
            try {
                if (!this.n.isEmpty()) {
                    this.f210b.g(true);
                    return;
                }
                bcn bcnVar = this.f210b;
                ArrayList arrayList = this.j;
                bcnVar.g((arrayList != null ? arrayList.size() : 0) > 0 && ap(this.t));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.t)));
            sb.append("}");
        } else {
            fay fayVar = this.af;
            if (fayVar != null) {
                sb.append(fayVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.af)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }
}
