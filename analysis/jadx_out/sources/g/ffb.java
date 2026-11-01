package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.Log;
import android.view.View;
import android.widget.CompoundButton;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzcam;
import com.google.android.gms.internal.ads.zzfxd;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Objects;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.invoke.MethodHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public abstract class ffb implements ggq {

    /* renamed from: f, reason: collision with root package name */
    public static boolean f16690f;

    /* renamed from: g, reason: collision with root package name */
    public static Field f16691g;
    public static boolean h;
    public static ExecutorService i;
    public static Constructor j;
    public static final dcu k = new dcu();
    public static final ehz l = new ehz(2);
    public static Field m;

    public static void aa(int i2, gri griVar, brh brhVar) {
        float f2 = brhVar.ct;
        hac hacVar = brhVar.bx;
        int l2 = hacVar.f19105e.l();
        hac hacVar2 = brhVar.as;
        int l3 = hacVar2.f19105e.l();
        int n = hacVar.n() + l2;
        int n2 = l3 - hacVar2.n();
        if (l2 == l3) {
            f2 = 0.5f;
        } else {
            l2 = n;
            l3 = n2;
        }
        int di = brhVar.di();
        int i3 = (l3 - l2) - di;
        if (l2 > l3) {
            i3 = (l2 - l3) - di;
        }
        int i4 = (int) (i3 > 0 ? (f2 * i3) + 0.5f : f2 * i3);
        int i5 = l2 + i4;
        int i6 = i5 + di;
        if (l2 > l3) {
            i5 = l2 - i4;
            i6 = i5 - di;
        }
        brhVar.dt(i5, i6);
        bt(i2 + 1, griVar, brhVar);
    }

    public static int ab(fza fzaVar, eek eekVar) {
        ArrayList arrayList = fzaVar.ac;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2) == eekVar) {
                return i2;
            }
        }
        return -1;
    }

    public static boolean ac(fza fzaVar, fza fzaVar2) {
        if (fzaVar == fzaVar2 || fzaVar.z.contains(fzaVar2)) {
            return true;
        }
        return n(fzaVar, fzaVar2, new BitSet(), true, new bev(9));
    }

    public static boolean ad(List list) {
        if (evh.m(list)) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((fza) it.next()).ac.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public static void ae(ArrayList arrayList) {
        int i2;
        Object obj;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            i2 = size - 1;
            if (i3 >= i2) {
                break;
            }
            flj fljVar = (flj) arrayList.get(i3);
            i3++;
            flj fljVar2 = (flj) arrayList.get(i3);
            fljVar.f16975d = Float.valueOf(fljVar2.s);
            if (fljVar.r == null && (obj = fljVar2.p) != null) {
                fljVar.r = obj;
                if (fljVar instanceof epo) {
                    ((epo) fljVar).c();
                }
            }
        }
        flj fljVar3 = (flj) arrayList.get(i2);
        if ((fljVar3.p == null || fljVar3.r == null) && arrayList.size() > 1) {
            arrayList.remove(fljVar3);
        }
    }

    public static boolean af(fza fzaVar, eek eekVar) {
        Iterator it = fzaVar.ac.iterator();
        while (it.hasNext()) {
            if (((eek) it.next()) == eekVar) {
                return true;
            }
        }
        return false;
    }

    public static fza ag(List list, csv csvVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fza fzaVar = (fza) it.next();
            if (fzaVar.l.g(csvVar)) {
                return fzaVar;
            }
        }
        return null;
    }

    public static boolean ah(cih cihVar) {
        eek s = s(cihVar);
        if (s == null) {
            return false;
        }
        hay hayVar = s.ah;
        return hayVar == hay.RETURN || hayVar == hay.THROW || hayVar == hay.BREAK || hayVar == hay.CONTINUE;
    }

    public static gsh ai(hed hedVar, eek eekVar) {
        if (!eekVar.l.g(csv.WRAPPED)) {
            return null;
        }
        Iterator it = hedVar.ak.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((fza) it.next()).ac.iterator();
            while (it2.hasNext()) {
                gsh au = au((eek) it2.next(), eekVar);
                if (au != null) {
                    return au;
                }
            }
        }
        return null;
    }

    public static List aj(fza fzaVar) {
        if (fzaVar == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        if (fzaVar.z.size() >= 2) {
            return Collections.EMPTY_LIST;
        }
        arrayList.add(fzaVar);
        for (fza ca = ca(fzaVar); ca != null && ca.z.size() < 2 && ca.f17685e.size() == 1; ca = ca(ca)) {
            arrayList.add(ca);
        }
        return arrayList;
    }

    public static Object ak(Method method, Class cls, Object obj, Object[] objArr) {
        MethodHandle unreflectSpecial;
        MethodHandle bindTo;
        Object invokeWithArguments;
        Constructor constructor = j;
        if (constructor == null) {
            constructor = cnf.v().getDeclaredConstructor(Class.class, Integer.TYPE);
            constructor.setAccessible(true);
            j = constructor;
        }
        unreflectSpecial = cnf.u(constructor.newInstance(cls, -1)).unreflectSpecial(method, cls);
        bindTo = unreflectSpecial.bindTo(obj);
        invokeWithArguments = bindTo.invokeWithArguments(objArr);
        return invokeWithArguments;
    }

    public static void al(HashSet hashSet, fza fzaVar, fza fzaVar2) {
        hashSet.add(fzaVar);
        for (fza fzaVar3 : fzaVar.f17685e) {
            if (fzaVar3 != fzaVar2 && !hashSet.contains(fzaVar3)) {
                al(hashSet, fzaVar3, fzaVar2);
            }
        }
    }

    public static void am(hed hedVar, BitSet bitSet, Consumer consumer) {
        if (bitSet == giu.f18223a || bitSet.isEmpty()) {
            return;
        }
        List list = hedVar.ak;
        int i2 = 0;
        while (true) {
            int nextSetBit = bitSet.nextSetBit(i2);
            if (nextSetBit < 0) {
                return;
            }
            consumer.n((fza) list.get(nextSetBit));
            i2 = nextSetBit + 1;
        }
    }

    public static fza an(hed hedVar, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return null;
        }
        fza fzaVar = (fza) arrayList.get(0);
        ArrayList arrayList2 = new ArrayList(hedVar.ak.size());
        ce(hedVar, fzaVar, new fov(19), new efe(4, arrayList2));
        HashSet hashSet = new HashSet(arrayList2);
        for (int i2 = 1; i2 < arrayList.size(); i2++) {
            fza fzaVar2 = (fza) arrayList.get(i2);
            ArrayList arrayList3 = new ArrayList(hedVar.ak.size());
            ce(hedVar, fzaVar2, new fov(19), new efe(4, arrayList3));
            hashSet.retainAll(arrayList3);
        }
        return ap(new ArrayList(hashSet), false);
    }

    public static boolean ao(fza fzaVar) {
        if (fzaVar != null) {
            if (fzaVar.l.g(csv.LOOP_START)) {
                List list = fzaVar.f17685e;
                if (list.size() == 1) {
                    fza fzaVar2 = (fza) list.get(0);
                    if (fzaVar2.l.g(csv.LOOP_END)) {
                        for (gcv gcvVar : fzaVar2.l.e(acq.at)) {
                            if (gcvVar.f17902c.equals(fzaVar) && gcvVar.f17903d.equals(fzaVar2)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static fza ap(List list, boolean z) {
        if (list.size() == 1) {
            return (fza) list.get(0);
        }
        if (!z) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                fza fzaVar = (fza) it.next();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    fza fzaVar2 = (fza) it2.next();
                    if (fzaVar == fzaVar2 || fzaVar.ae(fzaVar2)) {
                    }
                }
                return fzaVar;
            }
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            fza fzaVar3 = (fza) it3.next();
            Iterator it4 = list.iterator();
            while (it4.hasNext()) {
                fza fzaVar4 = (fza) it4.next();
                if (!z) {
                    if (fzaVar3 != fzaVar4 && !av(fzaVar4, fzaVar3)) {
                        break;
                    }
                } else if (fzaVar3 != fzaVar4 && !ac(fzaVar4, fzaVar3)) {
                    break;
                }
            }
            return fzaVar3;
        }
        return null;
    }

    public static fza aq(hed hedVar, List list) {
        BitSet v = v(hedVar);
        BitSet v2 = v(hedVar);
        Iterator it = list.iterator();
        boolean z = true;
        while (it.hasNext()) {
            fza fzaVar = (fza) it.next();
            v2.clear();
            v2.set(fzaVar.x);
            v2.or(fzaVar.i);
            if (z) {
                v.or(v2);
                z = false;
            } else {
                v.and(v2);
            }
        }
        v.clear(hedVar.ad.x);
        if (!v.isEmpty()) {
            fza bv = bv(hedVar, v);
            if (bv != null) {
                return bv;
            }
            BitSet v3 = v(hedVar);
            v3.set(hedVar.ad.x);
            Iterable.b.forEach(hedVar.ac, new bgc(v3, 0));
            if (!hedVar.ap.isEmpty()) {
                Iterable.b.forEach(hedVar.ap, new esv(hedVar, 1, v3));
            }
            v.andNot(v3);
            fza bv2 = bv(hedVar, v);
            if (bv2 != null) {
                return bv2;
            }
            BitSet v4 = v(hedVar);
            int size = hedVar.ak.size();
            while (true) {
                am(hedVar, v, new bgc(v4, 1));
                v4.andNot(v3);
                int cardinality = v4.cardinality();
                if (cardinality == 1) {
                    return bv(hedVar, v4);
                }
                if (cardinality == 0) {
                    break;
                }
                int i2 = size - 1;
                if (size < 0) {
                    hedVar.bu("Path cross not found for " + list + ", limit reached: " + hedVar.ak.size());
                    return null;
                }
                v.clear();
                v.or(v4);
                v4.clear();
                size = i2;
            }
        }
        return null;
    }

    public static boolean ar(fza fzaVar, fza fzaVar2) {
        if (fzaVar.f17684d.size() == 1 && fzaVar2.f17684d.size() == 1 && ((fza) fzaVar.f17684d.get(0)).equals(fzaVar2.f17684d.get(0))) {
            ArrayList arrayList = fzaVar.ac;
            ArrayList arrayList2 = fzaVar2.ac;
            if (arrayList.size() == arrayList2.size()) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    eek eekVar = (eek) arrayList.get(i2);
                    eek eekVar2 = (eek) arrayList2.get(i2);
                    if (eekVar != eekVar2) {
                        if (eekVar._p(eekVar2) && Objects.equals(eekVar.aj, eekVar2.aj)) {
                            gks gksVar = eekVar.ai;
                            gks gksVar2 = eekVar2.ai;
                            if (gksVar == null || gksVar2 == null) {
                                if (gksVar == gksVar2) {
                                }
                            } else if (gksVar.f18327e == gksVar2.f18327e) {
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static ExecutorService as() {
        if (i == null) {
            synchronized (ffb.class) {
                try {
                    if (i == null) {
                        i = Executors.newFixedThreadPool(Math.max(Runtime.getRuntime().availableProcessors(), 1), new dew(1));
                    }
                } finally {
                }
            }
        }
        return i;
    }

    public static void at(hed hedVar, fza fzaVar, fza fzaVar2, Consumer consumer) {
        consumer.n(fzaVar);
        if (fzaVar == fzaVar2) {
            return;
        }
        if (fzaVar.z.contains(fzaVar2)) {
            consumer.n(fzaVar2);
            return;
        }
        BitSet v = v(hedVar);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.addLast(fzaVar);
        while (true) {
            fza fzaVar3 = (fza) arrayDeque.peekLast();
            if (fzaVar3 == null) {
                return;
            }
            Iterator it = fzaVar3.z.iterator();
            while (true) {
                if (it.hasNext()) {
                    fza fzaVar4 = (fza) it.next();
                    if (fzaVar4 == fzaVar2) {
                        arrayDeque.removeFirst();
                        arrayDeque.addLast(fzaVar4);
                        Iterable.b.forEach(arrayDeque, consumer);
                        return;
                    } else {
                        int i2 = fzaVar4.x;
                        if (!v.get(i2)) {
                            v.set(i2);
                            arrayDeque.addLast(fzaVar4);
                            break;
                        }
                    }
                } else {
                    arrayDeque.pollLast();
                    if (arrayDeque.isEmpty()) {
                        return;
                    }
                }
            }
        }
    }

    public static gsh au(eek eekVar, eek eekVar2) {
        for (gsh gshVar : eekVar.aj) {
            gshVar.getClass();
            if (gshVar instanceof cly) {
                eek eekVar3 = ((cly) gshVar).f13104a;
                if (eekVar3 == eekVar2) {
                    return gshVar;
                }
                gsh au = au(eekVar3, eekVar2);
                if (au != null) {
                    return au;
                }
            }
        }
        if (eekVar instanceof dwk) {
            return aw(((dwk) eekVar).f14942a, eekVar2);
        }
        return null;
    }

    public static boolean av(fza fzaVar, fza fzaVar2) {
        if (fzaVar == fzaVar2 || fzaVar2.ae(fzaVar) || fzaVar.f17684d.contains(fzaVar2)) {
            return true;
        }
        return n(fzaVar, fzaVar2, new BitSet(), false, new bev(9));
    }

    public static gsh aw(eii eiiVar, eek eekVar) {
        if (eiiVar.h()) {
            return au((bgw) eiiVar.f15589c.f16224f, eekVar);
        }
        Iterator it = eiiVar.f15588b.iterator();
        while (it.hasNext()) {
            gsh aw = aw((eii) it.next(), eekVar);
            if (aw != null) {
                return aw;
            }
        }
        return null;
    }

    public static boolean ax(brh brhVar) {
        fol folVar;
        fol folVar2;
        fol[] folVarArr = brhVar.ch;
        fol folVar3 = folVarArr[0];
        fol folVar4 = folVarArr[1];
        brh brhVar2 = brhVar.bj;
        aep aepVar = brhVar2 != null ? (aep) brhVar2 : null;
        if (aepVar != null) {
            fol folVar5 = aepVar.ch[0];
            fol folVar6 = fol.FIXED;
        }
        if (aepVar != null) {
            fol folVar7 = aepVar.ch[1];
            fol folVar8 = fol.FIXED;
        }
        fol folVar9 = fol.FIXED;
        boolean z = folVar3 == folVar9 || brhVar.i() || folVar3 == fol.WRAP_CONTENT || (folVar3 == (folVar2 = fol.MATCH_CONSTRAINT) && brhVar.da == 0 && brhVar.bq == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && brhVar.ec(0)) || (folVar3 == folVar2 && brhVar.da == 1 && brhVar.dq(0, brhVar.eb()));
        boolean z2 = folVar4 == folVar9 || brhVar.e() || folVar4 == fol.WRAP_CONTENT || (folVar4 == (folVar = fol.MATCH_CONSTRAINT) && brhVar.by == 0 && brhVar.bq == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && brhVar.ec(1)) || (folVar4 == folVar && brhVar.by == 1 && brhVar.dq(1, brhVar.di()));
        return (brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && (z || z2)) || (z && z2);
    }

    public static void ay(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            aml.a(view, charSequence);
            return;
        }
        dlo dloVar = dlo.f14376b;
        if (dloVar != null && dloVar.i == view) {
            dlo.m(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new dlo(view, charSequence);
            return;
        }
        dlo dloVar2 = dlo.f14375a;
        if (dloVar2 != null && dloVar2.i == view) {
            dloVar2.n();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static fza az(fza fzaVar, Boolean bool, boolean z) {
        if (!fzaVar.ac.isEmpty()) {
            return null;
        }
        if (!bool.booleanValue() && fzaVar.f17685e.size() > 1) {
            return null;
        }
        if (bool.booleanValue() && fzaVar.z.size() > 1) {
            return null;
        }
        List list = bool.booleanValue() ? fzaVar.f17685e : z ? fzaVar.z : fzaVar.f17684d;
        if (list.size() != 1) {
            return null;
        }
        return (fza) list.get(0);
    }

    public static fza ba(fza fzaVar, Boolean bool, boolean z) {
        while (true) {
            fza az = az(fzaVar, bool, z);
            if (az == null) {
                return fzaVar;
            }
            fzaVar = az;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0174, code lost:
    
        if (r11 != null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x014c, code lost:
    
        r9 = r10;
        r11 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0149, code lost:
    
        r11.destroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0147, code lost:
    
        if (r11 != null) goto L98;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x019f A[Catch: IOException -> 0x019b, TryCatch #21 {IOException -> 0x019b, blocks: (B:112:0x0197, B:100:0x019f, B:102:0x01a4), top: B:111:0x0197 }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01a4 A[Catch: IOException -> 0x019b, TRY_LEAVE, TryCatch #21 {IOException -> 0x019b, blocks: (B:112:0x0197, B:100:0x019f, B:102:0x01a4), top: B:111:0x0197 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0197 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168 A[Catch: IOException -> 0x0164, TryCatch #15 {IOException -> 0x0164, blocks: (B:79:0x0160, B:66:0x0168, B:68:0x016d), top: B:78:0x0160 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x016d A[Catch: IOException -> 0x0164, TRY_LEAVE, TryCatch #15 {IOException -> 0x0164, blocks: (B:79:0x0160, B:66:0x0168, B:68:0x016d), top: B:78:0x0160 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x013b A[Catch: IOException -> 0x0137, TryCatch #0 {IOException -> 0x0137, blocks: (B:94:0x0133, B:85:0x013b, B:87:0x0140), top: B:93:0x0133 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0140 A[Catch: IOException -> 0x0137, TRY_LEAVE, TryCatch #0 {IOException -> 0x0137, blocks: (B:94:0x0133, B:85:0x013b, B:87:0x0140), top: B:93:0x0133 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v11, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v22, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static dsg bb(String[] strArr, boolean z, long j2) {
        Process process;
        ?? r12;
        StringBuilder sb;
        Process process2;
        ?? r4;
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        StringBuilder sb2;
        StringBuilder sb3;
        boolean waitFor;
        OutputStream outputStream = null;
        int i2 = -1;
        if (strArr.length == 0) {
            return new dsg(-1, (String) null, (String) null);
        }
        boolean z2 = false;
        try {
            try {
                process = Runtime.getRuntime().exec(z ? "su" : "sh");
            } catch (Throwable th) {
                th = th;
                process = j2;
                dataOutputStream = dataOutputStream2;
            }
        } catch (IOException e2) {
            e = e2;
            sb = null;
            process2 = null;
            r12 = null;
        } catch (Exception e3) {
            e = e3;
            sb = null;
            process2 = null;
            r12 = null;
        } catch (Throwable th2) {
            th = th2;
            process = null;
            r12 = null;
        }
        try {
            DataOutputStream dataOutputStream3 = new DataOutputStream(process.getOutputStream());
            try {
                try {
                    for (String str : strArr) {
                        if (str != null) {
                            dataOutputStream3.write(str.getBytes());
                            dataOutputStream3.writeBytes("\n");
                            dataOutputStream3.flush();
                        }
                    }
                    dataOutputStream3.writeBytes("exit\n");
                    dataOutputStream3.flush();
                    if (j2 <= 0) {
                        i2 = process.waitFor();
                    } else if (Build.VERSION.SDK_INT >= 26) {
                        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                        waitFor = process.waitFor(j2, TimeUnit.MILLISECONDS);
                        if (waitFor) {
                            i2 = process.exitValue();
                        } else {
                            z2 = true;
                        }
                    }
                    sb3 = new StringBuilder();
                    try {
                        j2 = new StringBuilder();
                        r12 = new BufferedReader(new InputStreamReader(process.getInputStream()));
                        try {
                            r4 = new BufferedReader(new InputStreamReader(process.getErrorStream()));
                            while (true) {
                                try {
                                    String readLine = r12.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb3.append(readLine);
                                    sb3.append("\n");
                                } catch (IOException e4) {
                                    sb = sb3;
                                    e = e4;
                                    process2 = process;
                                    dataOutputStream2 = dataOutputStream3;
                                    e.printStackTrace();
                                    sb2 = new StringBuilder();
                                    sb2.append(e);
                                    if (dataOutputStream2 != null) {
                                    }
                                    if (r12 != null) {
                                    }
                                    if (r4 != null) {
                                    }
                                } catch (Exception e5) {
                                    sb = sb3;
                                    e = e5;
                                    process2 = process;
                                    dataOutputStream2 = dataOutputStream3;
                                    e.printStackTrace();
                                    sb2 = new StringBuilder();
                                    sb2.append(e);
                                    if (dataOutputStream2 != null) {
                                    }
                                    if (r12 != null) {
                                    }
                                    if (r4 != null) {
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    dataOutputStream = dataOutputStream3;
                                    outputStream = dataOutputStream;
                                    if (outputStream != null) {
                                        try {
                                            outputStream.close();
                                        } catch (IOException e6) {
                                            e6.printStackTrace();
                                            if (process == null) {
                                                throw th;
                                            }
                                            process.destroy();
                                            throw th;
                                        }
                                    }
                                    if (r12 != null) {
                                        r12.close();
                                    }
                                    if (r4 != null) {
                                        r4.close();
                                    }
                                    if (process == null) {
                                    }
                                }
                            }
                            while (true) {
                                String readLine2 = r4.readLine();
                                if (readLine2 != null) {
                                    j2.append(readLine2);
                                    j2.append("\n");
                                } else {
                                    try {
                                        break;
                                    } catch (IOException e7) {
                                        e7.printStackTrace();
                                    }
                                }
                            }
                            dataOutputStream3.close();
                            r12.close();
                            r4.close();
                            process.destroy();
                        } catch (IOException e8) {
                            sb = sb3;
                            e = e8;
                            process2 = process;
                            r4 = null;
                            dataOutputStream2 = dataOutputStream3;
                        } catch (Exception e9) {
                            sb = sb3;
                            e = e9;
                            process2 = process;
                            r4 = null;
                            dataOutputStream2 = dataOutputStream3;
                        } catch (Throwable th4) {
                            th = th4;
                            r4 = null;
                            dataOutputStream = dataOutputStream3;
                        }
                    } catch (IOException e10) {
                        sb = sb3;
                        e = e10;
                        process2 = process;
                        r12 = null;
                        r4 = r12;
                        dataOutputStream2 = dataOutputStream3;
                        e.printStackTrace();
                        sb2 = new StringBuilder();
                        sb2.append(e);
                        if (dataOutputStream2 != null) {
                            try {
                                dataOutputStream2.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        if (r12 != null) {
                            r12.close();
                        }
                        if (r4 != null) {
                            r4.close();
                        }
                    } catch (Exception e12) {
                        sb = sb3;
                        e = e12;
                        process2 = process;
                        r12 = null;
                        r4 = r12;
                        dataOutputStream2 = dataOutputStream3;
                        e.printStackTrace();
                        sb2 = new StringBuilder();
                        sb2.append(e);
                        if (dataOutputStream2 != null) {
                            try {
                                dataOutputStream2.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        if (r12 != null) {
                            r12.close();
                        }
                        if (r4 != null) {
                            r4.close();
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    r12 = null;
                    r4 = null;
                    dataOutputStream = dataOutputStream3;
                }
            } catch (IOException e14) {
                e = e14;
                process2 = process;
                sb = null;
                r12 = null;
            } catch (Exception e15) {
                e = e15;
                process2 = process;
                sb = null;
                r12 = null;
            }
        } catch (IOException e16) {
            e = e16;
            process2 = process;
            sb = null;
            r12 = null;
            DataOutputStream dataOutputStream4 = r12;
            r4 = dataOutputStream4;
            dataOutputStream2 = dataOutputStream4;
            e.printStackTrace();
            sb2 = new StringBuilder();
            sb2.append(e);
            if (dataOutputStream2 != null) {
            }
            if (r12 != null) {
            }
            if (r4 != null) {
            }
        } catch (Exception e17) {
            e = e17;
            process2 = process;
            sb = null;
            r12 = null;
            DataOutputStream dataOutputStream5 = r12;
            r4 = dataOutputStream5;
            dataOutputStream2 = dataOutputStream5;
            e.printStackTrace();
            sb2 = new StringBuilder();
            sb2.append(e);
            if (dataOutputStream2 != null) {
            }
            if (r12 != null) {
            }
            if (r4 != null) {
            }
        } catch (Throwable th6) {
            th = th6;
            r12 = null;
            r4 = r12;
            if (outputStream != null) {
            }
            if (r12 != null) {
            }
            if (r4 != null) {
            }
            if (process == null) {
            }
        }
        if (z2 && j2.length() == 0) {
            j2.append("Timeout, possibly due to lack of permissions.");
        }
        return new dsg(i2, sb3 != null ? sb3.toString() : null, j2.toString());
    }

    public static ArrayList bc(JsonReader jsonReader, cgf cgfVar, float f2, cce cceVar, boolean z) {
        JsonReader jsonReader2;
        cgf cgfVar2;
        float f3;
        cce cceVar2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            cgfVar.t("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            if (!nextName.equals(ada.COLUMN_KEY)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    JsonReader jsonReader3 = jsonReader;
                    cgf cgfVar3 = cgfVar;
                    float f4 = f2;
                    cce cceVar3 = cceVar;
                    boolean z3 = z;
                    flj c2 = ht.c(jsonReader3, cgfVar3, f4, cceVar3, false, z3);
                    jsonReader2 = jsonReader3;
                    cgfVar2 = cgfVar3;
                    f3 = f4;
                    cceVar2 = cceVar3;
                    z2 = z3;
                    arrayList.add(c2);
                } else {
                    jsonReader2 = jsonReader;
                    cgfVar2 = cgfVar;
                    f3 = f2;
                    cceVar2 = cceVar;
                    z2 = z;
                    while (jsonReader2.hasNext()) {
                        arrayList.add(ht.c(jsonReader2, cgfVar2, f3, cceVar2, true, z2));
                    }
                }
                jsonReader2.endArray();
                jsonReader = jsonReader2;
                cgfVar = cgfVar2;
                f2 = f3;
                cceVar = cceVar2;
                z = z2;
            } else {
                JsonReader jsonReader4 = jsonReader;
                arrayList.add(ht.c(jsonReader4, cgfVar, f2, cceVar, false, z));
                jsonReader = jsonReader4;
            }
        }
        jsonReader.endObject();
        ae(arrayList);
        return arrayList;
    }

    public static boolean bd(fza fzaVar) {
        acq acqVar = acq.bh;
        if (!fzaVar.l.j(acqVar)) {
            if (!fzaVar.l.g(csv.EXC_BOTTOM_SPLITTER)) {
                if (!fzaVar.l.g(csv.REMOVE)) {
                    if (fzaVar.l.g(csv.SYNTHETIC)) {
                        List list = fzaVar.f17684d;
                        if (list.size() != 1 || !((fza) list.get(0)).l.j(acqVar)) {
                        }
                    }
                    return false;
                }
            }
        }
        return true;
    }

    public static fza be(fza fzaVar) {
        fza ag = ag(fzaVar.f17685e, csv.EXC_TOP_SPLITTER);
        if (ag != null) {
            return ag;
        }
        throw new gck("Can't find top splitter block for handler:" + fzaVar);
    }

    public static final int bf(int i2, int i3, int i4) {
        if (i4 > 0) {
            if (i2 < i3) {
                int i5 = i3 % i4;
                if (i5 < 0) {
                    i5 += i4;
                }
                int i6 = i2 % i4;
                if (i6 < 0) {
                    i6 += i4;
                }
                int i7 = (i5 - i6) % i4;
                if (i7 < 0) {
                    i7 += i4;
                }
                return i3 - i7;
            }
        } else {
            if (i4 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            }
            if (i2 > i3) {
                int i8 = -i4;
                int i9 = i2 % i8;
                if (i9 < 0) {
                    i9 += i8;
                }
                int i10 = i3 % i8;
                if (i10 < 0) {
                    i10 += i8;
                }
                int i11 = (i9 - i10) % i8;
                if (i11 < 0) {
                    i11 += i8;
                }
                return i11 + i3;
            }
        }
        return i3;
    }

    public static ArrayList bg(hed hedVar, fza fzaVar, boolean z) {
        ArrayList arrayList = new ArrayList(hedVar.ak.size());
        ce(hedVar, fzaVar, z ? new fov(8) : new gpn(19), new efe(4, arrayList));
        return arrayList;
    }

    public static void bh(int i2, brh brhVar, gri griVar, brh brhVar2, boolean z) {
        float f2 = brhVar2.cp;
        hac hacVar = brhVar2.cw;
        int n = hacVar.n() + hacVar.f19105e.l();
        hac hacVar2 = brhVar2.br;
        int l2 = hacVar2.f19105e.l() - hacVar2.n();
        if (l2 >= n) {
            int eb = brhVar2.eb();
            if (brhVar2.aq != 8) {
                int i3 = brhVar2.da;
                if (i3 == 2) {
                    eb = (int) (brhVar2.cp * 0.5f * (brhVar instanceof aep ? brhVar.eb() : brhVar.bj.eb()));
                } else if (i3 == 0) {
                    eb = l2 - n;
                }
                eb = Math.max(brhVar2.bl, eb);
                int i4 = brhVar2.bs;
                if (i4 > 0) {
                    eb = Math.min(i4, eb);
                }
            }
            int i5 = n + ((int) ((f2 * ((l2 - n) - eb)) + 0.5f));
            brhVar2.dx(i5, eb + i5);
            bk(i2 + 1, griVar, brhVar2, z);
        }
    }

    public static void bi(Context context) {
        boolean z;
        Object obj = dzz.f15159c;
        if (((Boolean) zzbej.zza.zze()).booleanValue()) {
            try {
                if (Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0) {
                    synchronized (dzz.f15159c) {
                        z = dzz.f15160d;
                    }
                    if (z) {
                        return;
                    }
                    dcy zzb = new bbu(context).zzb();
                    agd.k("Updating ad debug logging enablement.");
                    zzcam.zza(zzb, "AdDebugLogUpdater.updateEnablement");
                }
            } catch (Exception unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
    }

    public static List bj(hed hedVar, BitSet bitSet) {
        if (bitSet == null || bitSet == giu.f18223a) {
            return Collections.EMPTY_LIST;
        }
        int cardinality = bitSet.cardinality();
        if (cardinality == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(cardinality);
        int i2 = 0;
        while (true) {
            int nextSetBit = bitSet.nextSetBit(i2);
            if (nextSetBit < 0) {
                return arrayList;
            }
            arrayList.add((fza) hedVar.ak.get(nextSetBit));
            i2 = nextSetBit + 1;
        }
    }

    public static void bk(int i2, gri griVar, brh brhVar, boolean z) {
        hac hacVar;
        hac hacVar2;
        char c2;
        hac hacVar3;
        hac hacVar4;
        if (brhVar.ca) {
            return;
        }
        if (!(brhVar instanceof aep) && brhVar.dg() && ax(brhVar)) {
            aep.ac(brhVar, griVar, new dcu());
        }
        hac m2 = brhVar.m(dih.LEFT);
        hac m3 = brhVar.m(dih.RIGHT);
        int l2 = m2.l();
        int l3 = m3.l();
        HashSet hashSet = m2.f19104d;
        if (hashSet != null && m2.h) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                hac hacVar5 = (hac) it.next();
                brh brhVar2 = hacVar5.f19102b;
                int i3 = i2 + 1;
                boolean ax = ax(brhVar2);
                hac hacVar6 = brhVar2.cw;
                hac hacVar7 = brhVar2.br;
                if (brhVar2.dg() && ax) {
                    c2 = 0;
                    aep.ac(brhVar2, griVar, new dcu());
                } else {
                    c2 = 0;
                }
                boolean z2 = (hacVar5 == hacVar6 && (hacVar4 = hacVar7.f19105e) != null && hacVar4.h) || (hacVar5 == hacVar7 && (hacVar3 = hacVar6.f19105e) != null && hacVar3.h);
                fol folVar = brhVar2.ch[c2];
                fol folVar2 = fol.MATCH_CONSTRAINT;
                if (folVar != folVar2 || ax) {
                    if (!brhVar2.dg()) {
                        if (hacVar5 == hacVar6 && hacVar7.f19105e == null) {
                            int n = hacVar6.n() + l2;
                            brhVar2.dx(n, brhVar2.eb() + n);
                            bk(i3, griVar, brhVar2, z);
                        } else if (hacVar5 == hacVar7 && hacVar6.f19105e == null) {
                            int n2 = l2 - hacVar7.n();
                            brhVar2.dx(n2 - brhVar2.eb(), n2);
                            bk(i3, griVar, brhVar2, z);
                        } else if (z2 && !brhVar2.eg()) {
                            u(i3, griVar, brhVar2, z);
                        }
                    }
                } else if (folVar == folVar2 && brhVar2.bs >= 0 && brhVar2.bl >= 0 && (brhVar2.aq == 8 || (brhVar2.da == 0 && brhVar2.bq == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT))) {
                    if (!brhVar2.eg() && !brhVar2.f12070cn && z2 && !brhVar2.eg()) {
                        bh(i3, brhVar, griVar, brhVar2, z);
                    }
                }
            }
        }
        if (brhVar instanceof aar) {
            return;
        }
        HashSet hashSet2 = m3.f19104d;
        if (hashSet2 != null && m3.h) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                hac hacVar8 = (hac) it2.next();
                brh brhVar3 = hacVar8.f19102b;
                int i4 = i2 + 1;
                boolean ax2 = ax(brhVar3);
                hac hacVar9 = brhVar3.cw;
                hac hacVar10 = brhVar3.br;
                if (brhVar3.dg() && ax2) {
                    aep.ac(brhVar3, griVar, new dcu());
                }
                boolean z3 = (hacVar8 == hacVar9 && (hacVar2 = hacVar10.f19105e) != null && hacVar2.h) || (hacVar8 == hacVar10 && (hacVar = hacVar9.f19105e) != null && hacVar.h);
                fol folVar3 = brhVar3.ch[0];
                fol folVar4 = fol.MATCH_CONSTRAINT;
                if (folVar3 != folVar4 || ax2) {
                    if (!brhVar3.dg()) {
                        if (hacVar8 == hacVar9 && hacVar10.f19105e == null) {
                            int n3 = hacVar9.n() + l3;
                            brhVar3.dx(n3, brhVar3.eb() + n3);
                            bk(i4, griVar, brhVar3, z);
                        } else if (hacVar8 == hacVar10 && hacVar9.f19105e == null) {
                            int n4 = l3 - hacVar10.n();
                            brhVar3.dx(n4 - brhVar3.eb(), n4);
                            bk(i4, griVar, brhVar3, z);
                        } else if (z3 && !brhVar3.eg()) {
                            u(i4, griVar, brhVar3, z);
                        }
                    }
                } else if (folVar3 == folVar4 && brhVar3.bs >= 0 && brhVar3.bl >= 0) {
                    if (brhVar3.aq == 8 || (brhVar3.da == 0 && brhVar3.bq == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
                        if (!brhVar3.eg() && !brhVar3.f12070cn && z3 && !brhVar3.eg()) {
                            bh(i4, brhVar, griVar, brhVar3, z);
                        }
                    }
                }
            }
        }
        brhVar.ca = true;
    }

    public static void bl(int i2, brh brhVar, gri griVar, brh brhVar2) {
        float f2 = brhVar2.ct;
        hac hacVar = brhVar2.bx;
        int n = hacVar.n() + hacVar.f19105e.l();
        hac hacVar2 = brhVar2.as;
        int l2 = hacVar2.f19105e.l() - hacVar2.n();
        if (l2 >= n) {
            int di = brhVar2.di();
            if (brhVar2.aq != 8) {
                int i3 = brhVar2.by;
                if (i3 == 2) {
                    di = (int) (f2 * 0.5f * (brhVar instanceof aep ? brhVar.di() : brhVar.bj.di()));
                } else if (i3 == 0) {
                    di = l2 - n;
                }
                di = Math.max(brhVar2.cy, di);
                int i4 = brhVar2.aw;
                if (i4 > 0) {
                    di = Math.min(i4, di);
                }
            }
            int i5 = n + ((int) ((f2 * ((l2 - n) - di)) + 0.5f));
            brhVar2.dt(i5, di + i5);
            bt(i2 + 1, griVar, brhVar2);
        }
    }

    public static void bm(ArrayList arrayList, fza fzaVar, boolean z, Predicate predicate) {
        if (arrayList.contains(fzaVar)) {
            return;
        }
        arrayList.add(fzaVar);
        if (predicate.test(fzaVar)) {
            return;
        }
        Iterator it = (z ? fzaVar.z : fzaVar.f17684d).iterator();
        while (it.hasNext()) {
            bm(arrayList, (fza) it.next(), z, predicate);
        }
    }

    public static void bn(Context context, String str) {
        if (byh.bc() || cro.an(context, "datetrinea", false)) {
            Log.e("tt-", str);
            try {
                buj.ag(acw.af(context) + "/footprint.txt", dlb.c() + " tt-/" + str + "\r\n", true);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static fza bo(int i2, Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            fza fzaVar = (fza) it.next();
            if (fzaVar.y == i2) {
                return fzaVar;
            }
        }
        throw new gck("Can't find block by offset: " + ack.d(i2) + " in list " + iterable);
    }

    public static void bp(LinkedList linkedList, fza fzaVar, List list, HashSet hashSet) {
        for (fza fzaVar2 : acw.bn(fzaVar.f17685e, new btn(1, list))) {
            if (list.contains(fzaVar2) && !hashSet.contains(fzaVar2)) {
                hashSet.add(fzaVar2);
                if (fzaVar2.ac.isEmpty()) {
                    bp(linkedList, fzaVar, list, hashSet);
                } else {
                    linkedList.add(fzaVar2);
                }
                fzaVar = fzaVar2;
            }
        }
    }

    public static eek bq(cih cihVar) {
        if (cihVar == null) {
            return null;
        }
        List c2 = cihVar.c();
        if (c2.isEmpty()) {
            return null;
        }
        return (eek) c2.get(0);
    }

    public static fza br(hed hedVar, fza fzaVar, fza fzaVar2) {
        fza fzaVar3;
        List list = fzaVar.f17685e;
        fon fonVar = new fon(hedVar);
        Iterable.b.forEach(list, new agx(5, fonVar));
        int i2 = fzaVar2.x;
        BitSet bitSet = fonVar.f17143b;
        if (bitSet.get(i2)) {
            return fzaVar2;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        BitSet bitSet2 = new BitSet(hedVar.ak.size());
        arrayDeque.addLast(fzaVar2);
        bitSet2.set(fzaVar2.x);
        do {
            fzaVar3 = (fza) arrayDeque.pollLast();
            if (fzaVar3 == null) {
                fzaVar3 = null;
            } else {
                List list2 = fzaVar3.z;
                for (int size = list2.size() - 1; size >= 0; size--) {
                    fza fzaVar4 = (fza) list2.get(size);
                    int i3 = fzaVar4.x;
                    boolean z = bitSet2.get(i3);
                    bitSet2.set(i3);
                    if (!z) {
                        arrayDeque.addLast(fzaVar4);
                    }
                }
            }
            if (fzaVar3 == null) {
                return null;
            }
        } while (!bitSet.get(fzaVar3.x));
        return fzaVar3;
    }

    public static void bs(hed hedVar, fza fzaVar, int i2, eek eekVar) {
        eek eekVar2 = (eek) fzaVar.ac.get(i2);
        eekVar.s(eekVar2);
        eekVar.br(eekVar2);
        eekVar.au(eekVar2);
        eekVar.ag = eekVar2.ag;
        fzaVar.ac.set(i2, eekVar);
        gks gksVar = eekVar.ai;
        gks gksVar2 = eekVar2.ai;
        if (gksVar == null || gksVar2 == null || !gksVar.x(gksVar2)) {
            fpd.k(hedVar, eekVar2);
        } else {
            fpd.q(hedVar, eekVar2);
        }
        eekVar._bs();
    }

    public static void bt(int i2, gri griVar, brh brhVar) {
        hac hacVar;
        hac hacVar2;
        float f2;
        hac hacVar3;
        hac hacVar4;
        if (brhVar.bd) {
            return;
        }
        if (!(brhVar instanceof aep) && brhVar.dg() && ax(brhVar)) {
            aep.ac(brhVar, griVar, new dcu());
        }
        hac m2 = brhVar.m(dih.TOP);
        hac m3 = brhVar.m(dih.BOTTOM);
        int l2 = m2.l();
        int l3 = m3.l();
        HashSet hashSet = m2.f19104d;
        char c2 = 1;
        if (hashSet != null && m2.h) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                hac hacVar5 = (hac) it.next();
                brh brhVar2 = hacVar5.f19102b;
                int i3 = i2 + 1;
                boolean ax = ax(brhVar2);
                hac hacVar6 = brhVar2.bx;
                hac hacVar7 = brhVar2.as;
                if (brhVar2.dg() && ax) {
                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    aep.ac(brhVar2, griVar, new dcu());
                } else {
                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                }
                boolean z = (hacVar5 == hacVar6 && (hacVar4 = hacVar7.f19105e) != null && hacVar4.h) || (hacVar5 == hacVar7 && (hacVar3 = hacVar6.f19105e) != null && hacVar3.h);
                fol folVar = brhVar2.ch[c2];
                fol folVar2 = fol.MATCH_CONSTRAINT;
                if (folVar != folVar2 || ax) {
                    if (!brhVar2.dg()) {
                        if (hacVar5 == hacVar6 && hacVar7.f19105e == null) {
                            int n = hacVar6.n() + l2;
                            brhVar2.dt(n, brhVar2.di() + n);
                            bt(i3, griVar, brhVar2);
                        } else if (hacVar5 == hacVar7 && hacVar6.f19105e == null) {
                            int n2 = l2 - hacVar7.n();
                            brhVar2.dt(n2 - brhVar2.di(), n2);
                            bt(i3, griVar, brhVar2);
                        } else if (z && !brhVar2.dk()) {
                            aa(i3, griVar, brhVar2);
                        }
                    }
                } else if (folVar == folVar2 && brhVar2.aw >= 0 && brhVar2.cy >= 0 && ((brhVar2.aq == 8 || (brhVar2.by == 0 && brhVar2.bq == f2)) && !brhVar2.dk() && !brhVar2.f12070cn && z && !brhVar2.dk())) {
                    bl(i3, brhVar, griVar, brhVar2);
                }
                c2 = 1;
            }
        }
        char c3 = 1;
        if (brhVar instanceof aar) {
            return;
        }
        HashSet hashSet2 = m3.f19104d;
        if (hashSet2 != null && m3.h) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                hac hacVar8 = (hac) it2.next();
                brh brhVar3 = hacVar8.f19102b;
                int i4 = i2 + 1;
                boolean ax2 = ax(brhVar3);
                hac hacVar9 = brhVar3.bx;
                hac hacVar10 = brhVar3.as;
                if (brhVar3.dg() && ax2) {
                    aep.ac(brhVar3, griVar, new dcu());
                }
                boolean z2 = (hacVar8 == hacVar9 && (hacVar2 = hacVar10.f19105e) != null && hacVar2.h) || (hacVar8 == hacVar10 && (hacVar = hacVar9.f19105e) != null && hacVar.h);
                fol folVar3 = brhVar3.ch[1];
                fol folVar4 = fol.MATCH_CONSTRAINT;
                if (folVar3 != folVar4 || ax2) {
                    if (!brhVar3.dg()) {
                        if (hacVar8 == hacVar9 && hacVar10.f19105e == null) {
                            int n3 = hacVar9.n() + l3;
                            brhVar3.dt(n3, brhVar3.di() + n3);
                            bt(i4, griVar, brhVar3);
                        } else if (hacVar8 == hacVar10 && hacVar9.f19105e == null) {
                            int n4 = l3 - hacVar10.n();
                            brhVar3.dt(n4 - brhVar3.di(), n4);
                            bt(i4, griVar, brhVar3);
                        } else if (z2 && !brhVar3.dk()) {
                            aa(i4, griVar, brhVar3);
                        }
                    }
                } else if (folVar3 == folVar4 && brhVar3.aw >= 0 && brhVar3.cy >= 0 && (brhVar3.aq == 8 || (brhVar3.by == 0 && brhVar3.bq == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT))) {
                    if (!brhVar3.dk() && !brhVar3.f12070cn && z2 && !brhVar3.dk()) {
                        bl(i4, brhVar, griVar, brhVar3);
                    }
                }
            }
        }
        hac m4 = brhVar.m(dih.BASELINE);
        if (m4.f19104d != null && m4.h) {
            int l4 = m4.l();
            Iterator it3 = m4.f19104d.iterator();
            while (it3.hasNext()) {
                hac hacVar11 = (hac) it3.next();
                brh brhVar4 = hacVar11.f19102b;
                int i5 = i2 + 1;
                boolean ax3 = ax(brhVar4);
                hac hacVar12 = brhVar4.bp;
                if (brhVar4.dg() && ax3) {
                    aep.ac(brhVar4, griVar, new dcu());
                }
                if (brhVar4.ch[c3] != fol.MATCH_CONSTRAINT || ax3) {
                    if (brhVar4.dg()) {
                        continue;
                    } else if (hacVar11 == hacVar12) {
                        int n5 = hacVar11.n() + l4;
                        if (brhVar4.cx) {
                            int i6 = n5 - brhVar4.bn;
                            int i7 = brhVar4.bt + i6;
                            brhVar4.cb = i6;
                            brhVar4.bx.m(i6);
                            brhVar4.as.m(i7);
                            hacVar12.m(n5);
                            brhVar4.bg = true;
                        }
                        bt(i5, griVar, brhVar4);
                    }
                }
                c3 = 1;
            }
        }
        brhVar.bd = true;
    }

    public static fza bu(hed hedVar, aea aeaVar) {
        fza fzaVar = aeaVar.i;
        fza be = be(fzaVar);
        List list = aeaVar.j.i;
        ArrayList arrayList = new ArrayList(bj(hedVar, fzaVar.i));
        BitSet v = v(hedVar);
        while (!arrayList.isEmpty()) {
            fza fzaVar2 = (fza) arrayList.remove(0);
            if (!v.get(fzaVar2.x)) {
                v.set(fzaVar2.x);
                for (fza fzaVar3 : fzaVar2.f17685e) {
                    if (!Collection.b.stream(list).anyMatch(new dxx(fzaVar3, 0)) && ac(be, fzaVar3) && fzaVar2 != hedVar.ad) {
                        return fzaVar2;
                    }
                }
                arrayList.addAll(bj(hedVar, fzaVar2.i));
            }
        }
        return null;
    }

    public static fza bv(hed hedVar, BitSet bitSet) {
        if (bitSet.cardinality() != 1) {
            return null;
        }
        return (fza) hedVar.ak.get(bitSet.nextSetBit(0));
    }

    public static boolean bw(hed hedVar, fza fzaVar, eek eekVar, eek eekVar2) {
        ArrayList arrayList = fzaVar.ac;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((eek) arrayList.get(i2)) == eekVar) {
                bs(hedVar, fzaVar, i2, eekVar2);
                return true;
            }
        }
        return false;
    }

    public static fza bx(fza fzaVar) {
        return (fzaVar.l.g(csv.SYNTHETIC) && fzaVar.ac.isEmpty() && fzaVar.f17685e.size() == 1) ? (fza) fzaVar.f17685e.get(0) : fzaVar;
    }

    public static Bitmap by(String str) {
        Paint paint = new Paint(1);
        paint.setTextSize(100);
        paint.setColor(-16777216);
        paint.setTextAlign(Paint.Align.LEFT);
        float f2 = -paint.ascent();
        Bitmap createBitmap = Bitmap.createBitmap((int) (paint.measureText(str) + 0.5f), (int) (paint.descent() + f2 + 0.5f), Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawText(str, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2, paint);
        return createBitmap;
    }

    public static boolean bz(fza fzaVar, fza fzaVar2) {
        csv csvVar = csv.RETURN;
        if (fzaVar.l.g(csvVar) && fzaVar2.l.g(csvVar)) {
            ArrayList arrayList = fzaVar.ac;
            ArrayList arrayList2 = fzaVar2.ac;
            if (arrayList.size() == 1 && arrayList2.size() == 1) {
                eek eekVar = (eek) arrayList.get(0);
                eek eekVar2 = (eek) arrayList2.get(0);
                if (eekVar.aj.size() == eekVar2.aj.size()) {
                    if (eekVar.aj.size() != 0) {
                        gsh j2 = eekVar.j(0);
                        gsh j3 = eekVar2.j(0);
                        if (!((j2.am() && j3.am()) ? j2.equals(j3) : false)) {
                            if (eekVar.bp == eekVar2.bp) {
                                return j2.equals(j3);
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static fza ca(fza fzaVar) {
        List list = fzaVar.z;
        if (list.isEmpty()) {
            return null;
        }
        return (fza) list.get(0);
    }

    public static Drawable cb(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return id.w(compoundButton);
        }
        if (!h) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f16691g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            h = true;
        }
        Field field = f16691g;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException unused2) {
                f16691g = null;
            }
        }
        return null;
    }

    public static final cpk cc(Executor executor) {
        if (executor instanceof gsm) {
        }
        return new cxj(executor);
    }

    public static boolean cd(cih cihVar, hay hayVar) {
        eek s = s(cihVar);
        return s != null && s.ah == hayVar;
    }

    public static void ce(hed hedVar, fza fzaVar, Function function, Consumer consumer) {
        ArrayDeque arrayDeque = new ArrayDeque();
        BitSet bitSet = new BitSet(hedVar.ak.size());
        arrayDeque.addLast(fzaVar);
        bitSet.set(fzaVar.x);
        while (true) {
            fza fzaVar2 = (fza) arrayDeque.pollLast();
            if (fzaVar2 == null) {
                fzaVar2 = null;
            } else {
                List list = (List) function.apply(fzaVar2);
                for (int size = list.size() - 1; size >= 0; size--) {
                    fza fzaVar3 = (fza) list.get(size);
                    int i2 = fzaVar3.x;
                    boolean z = bitSet.get(i2);
                    bitSet.set(i2);
                    if (!z) {
                        arrayDeque.addLast(fzaVar3);
                    }
                }
            }
            if (fzaVar2 == null) {
                return;
            } else {
                consumer.n(fzaVar2);
            }
        }
    }

    public static fza cf(fza fzaVar) {
        return ba(fzaVar, Boolean.FALSE, true);
    }

    public static /* synthetic */ boolean cg(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean ch(fza fzaVar, fza fzaVar2) {
        fza cf;
        fza cf2;
        if (fzaVar == fzaVar2) {
            return true;
        }
        if (fzaVar == null || fzaVar2 == null) {
            return false;
        }
        return bz(fzaVar, fzaVar2) || (cf = cf(fzaVar)) == (cf2 = cf(fzaVar2)) || bz(cf, cf2) || ar(fzaVar, fzaVar2);
    }

    public static void ci(hed hedVar, fza fzaVar, Predicate predicate) {
        BitSet v = v(hedVar);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(fzaVar);
        while (true) {
            fza fzaVar2 = (fza) arrayDeque.poll();
            if (fzaVar2 == null || predicate.test(fzaVar2)) {
                return;
            }
            for (fza fzaVar3 : fzaVar2.f17685e) {
                int i2 = fzaVar3.x;
                if (!v.get(i2)) {
                    v.set(i2);
                    arrayDeque.add(fzaVar3);
                }
            }
        }
    }

    public static boolean n(fza fzaVar, fza fzaVar2, BitSet bitSet, boolean z, bev bevVar) {
        for (fza fzaVar3 : z ? fzaVar.z : fzaVar.f17684d) {
            if (fzaVar3 == fzaVar2) {
                return true;
            }
            if (fzaVar3 != fzaVar) {
                int i2 = fzaVar3.x;
                if (bitSet.get(i2)) {
                    continue;
                } else {
                    bitSet.set(i2);
                    if (fzaVar2.f17687g.get(fzaVar3.x) || n(fzaVar3, fzaVar2, bitSet, z, bevVar)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static fza o(hed hedVar, eek eekVar, List list) {
        if (eekVar == null) {
            return null;
        }
        if (eekVar instanceof abi) {
            abi abiVar = (abi) eekVar;
            for (fza fzaVar : hedVar.ak) {
                czc czcVar = (czc) fzaVar.l.k(acq.am);
                if (czcVar != null) {
                    Iterator it = czcVar.f13803a.iterator();
                    while (it.hasNext()) {
                        if (((abi) it.next()) == abiVar) {
                            return fzaVar;
                        }
                    }
                }
            }
            return null;
        }
        if (!eekVar.l.g(csv.WRAPPED)) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                fza fzaVar2 = (fza) it2.next();
                if (af(fzaVar2, eekVar)) {
                    return fzaVar2;
                }
            }
            return null;
        }
        for (fza fzaVar3 : hedVar.ak) {
            Iterator it3 = fzaVar3.ac.iterator();
            while (it3.hasNext()) {
                eek eekVar2 = (eek) it3.next();
                if (eekVar2 == eekVar || au(eekVar2, eekVar) != null) {
                    return fzaVar3;
                }
            }
        }
        return null;
    }

    public static void p(int i2, int i3, int i4) {
        if (i2 < 0 || i3 > i4) {
            StringBuilder z = awf.z(i2, i3, "fromIndex: ", ", toIndex: ", ", size: ");
            z.append(i4);
            throw new IndexOutOfBoundsException(z.toString());
        }
        if (i2 > i3) {
            throw new IllegalArgumentException(tn.t(i2, i3, "fromIndex: ", " > toIndex: "));
        }
    }

    public static void q(fza fzaVar, fza fzaVar2, AbstractCollection abstractCollection, BitSet bitSet, boolean z) {
        if (bitSet.get(fzaVar2.x)) {
            return;
        }
        bitSet.set(fzaVar2.x);
        for (fza fzaVar3 : z ? fzaVar2.f17684d : fzaVar2.z) {
            if (fzaVar3.f17687g.get(fzaVar.x)) {
                abstractCollection.add(fzaVar3);
                q(fzaVar, fzaVar3, abstractCollection, bitSet, z);
            }
        }
    }

    public static fza r(List list, fza fzaVar) {
        if (list.size() > 2) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                fza fzaVar2 = (fza) it.next();
                if (!bd(fzaVar2)) {
                    arrayList.add(fzaVar2);
                }
            }
            list = arrayList;
        }
        if (list.size() == 2) {
            fza fzaVar3 = (fza) list.get(0);
            return fzaVar3 != fzaVar ? fzaVar3 : (fza) list.get(1);
        }
        throw new gck("Incorrect nodes count for selectOther: " + fzaVar + " in " + list);
    }

    public static eek s(cih cihVar) {
        if (cihVar == null) {
            return null;
        }
        List c2 = cihVar.c();
        if (c2.isEmpty()) {
            return null;
        }
        return (eek) awf.q(1, c2);
    }

    public static eek t(hed hedVar) {
        if (!hedVar.ar) {
            Iterator it = hedVar.ak.iterator();
            eek eekVar = null;
            while (it.hasNext()) {
                ArrayList arrayList = ((fza) it.next()).ac;
                int size = arrayList.size();
                if (size != 0) {
                    if (size <= 1 && eekVar == null) {
                        eekVar = (eek) arrayList.get(0);
                    }
                }
            }
            return eekVar;
        }
        return null;
    }

    public static void u(int i2, gri griVar, brh brhVar, boolean z) {
        float f2 = brhVar.cp;
        hac hacVar = brhVar.cw;
        int l2 = hacVar.f19105e.l();
        hac hacVar2 = brhVar.br;
        int l3 = hacVar2.f19105e.l();
        int n = hacVar.n() + l2;
        int n2 = l3 - hacVar2.n();
        if (l2 == l3) {
            f2 = 0.5f;
        } else {
            l2 = n;
            l3 = n2;
        }
        int eb = brhVar.eb();
        int i3 = (l3 - l2) - eb;
        if (l2 > l3) {
            i3 = (l2 - l3) - eb;
        }
        int i4 = ((int) (i3 > 0 ? (f2 * i3) + 0.5f : f2 * i3)) + l2;
        int i5 = i4 + eb;
        if (l2 > l3) {
            i5 = i4 - eb;
        }
        brhVar.dx(i4, i5);
        bk(i2 + 1, griVar, brhVar, z);
    }

    public static BitSet v(hed hedVar) {
        return new BitSet(hedVar.ak.size());
    }

    public static boolean w(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static HashSet x(fza fzaVar, fza fzaVar2) {
        HashSet hashSet = new HashSet();
        hashSet.add(fzaVar);
        if (fzaVar != fzaVar2) {
            al(hashSet, fzaVar2, fzaVar);
        }
        return hashSet;
    }

    public static fza y(List list) {
        if (list.size() == 1) {
            return (fza) list.get(0);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fza fzaVar = (fza) it.next();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                fza fzaVar2 = (fza) it2.next();
                if (fzaVar == fzaVar2 || av(fzaVar, fzaVar2)) {
                }
            }
            return fzaVar;
        }
        return null;
    }

    public static fza z(hed hedVar, fza fzaVar, fza fzaVar2) {
        if (fzaVar == fzaVar2) {
            return fzaVar;
        }
        if (fzaVar == null || fzaVar2 == null) {
            return null;
        }
        return aq(hedVar, Arrays.asList(fzaVar, fzaVar2));
    }

    public void a(boolean z) {
    }

    public void b(boolean z) {
    }
}
