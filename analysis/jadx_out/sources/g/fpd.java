package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.ads.zzbdn;
import com.google.android.gms.internal.ads.zzbdo;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbnu;
import com.google.android.gms.internal.ads.zzcas;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzhgq;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class fpd implements ayv, btp, bol, ebz, zzcas, zzbdn {

    /* renamed from: b, reason: collision with root package name */
    public static fpd f17186b;

    /* renamed from: c, reason: collision with root package name */
    public Object f17187c;

    /* renamed from: d, reason: collision with root package name */
    public Object f17188d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f17189e;

    /* renamed from: f, reason: collision with root package name */
    public Object f17190f;

    public /* synthetic */ fpd(int i) {
        this.f17189e = i;
    }

    public fpd(Context context) {
        this.f17189e = 0;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f17187c = newSingleThreadScheduledExecutor;
        this.f17188d = Executors.newSingleThreadExecutor();
        this.f17190f = context;
        newSingleThreadScheduledExecutor.scheduleAtFixedRate(new aku(15, this), 0L, 86400L, TimeUnit.SECONDS);
    }

    public fpd(hed hedVar) {
        this.f17189e = 11;
        this.f17190f = hedVar;
        this.f17187c = ffb.v(hedVar);
        this.f17188d = ffb.v(hedVar);
    }

    public fpd(hed hedVar, int i) {
        this.f17189e = 6;
        this.f17190f = hedVar;
        this.f17187c = new ArrayList();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public fpd(wg wgVar, dqr dqrVar) {
        this(wgVar, dqrVar, aje.f10300a);
        this.f17189e = 14;
        bff.p(wgVar, "store");
    }

    public fpd(wg wgVar, dqr dqrVar, bin binVar) {
        this.f17189e = 14;
        bff.p(wgVar, "store");
        bff.p(binVar, "defaultCreationExtras");
        this.f17190f = wgVar;
        this.f17187c = dqrVar;
        this.f17188d = binVar;
    }

    public /* synthetic */ fpd(Object obj, Object obj2, Object obj3, int i) {
        this.f17189e = i;
        this.f17188d = obj;
        this.f17190f = obj2;
        this.f17187c = obj3;
    }

    public /* synthetic */ fpd(Object obj, Object obj2, Object obj3, int i, byte b2) {
        this.f17189e = i;
        this.f17187c = obj;
        this.f17190f = obj2;
        this.f17188d = obj3;
    }

    public /* synthetic */ fpd(Object obj, Object obj2, Object obj3, int i, boolean z) {
        this.f17189e = i;
        this.f17190f = obj;
        this.f17187c = obj2;
        this.f17188d = obj3;
    }

    public fpd(String str) {
        this.f17189e = 18;
        akj akjVar = new akj(21);
        this.f17187c = akjVar;
        this.f17188d = akjVar;
        this.f17190f = str;
    }

    public fpd(List list) {
        this.f17189e = 16;
        this.f17188d = list;
        this.f17190f = new ArrayList(list.size());
        this.f17187c = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            ((ArrayList) this.f17190f).add(new fdn((List) ((fiz) list.get(i)).f16873c.z));
            ((ArrayList) this.f17187c).add(((fiz) list.get(i)).f16874d.dq());
        }
    }

    public static void g(hed hedVar) {
        fpd fpdVar = new fpd(hedVar, 0);
        for (fza fzaVar : hedVar.ak) {
            Iterator it = fzaVar.ac.iterator();
            while (it.hasNext()) {
                eek eekVar = (eek) it.next();
                if (eekVar.l.g(csv.REMOVE)) {
                    ((ArrayList) fpdVar.f17187c).add(eekVar);
                }
            }
            fpdVar.f17188d = fzaVar.ac;
            fpdVar.u();
        }
    }

    public static void h(hed hedVar, gsh gshVar) {
        if (!(gshVar instanceof gks)) {
            if (gshVar instanceof cly) {
                k(hedVar, ((cly) gshVar).f13104a);
            }
        } else {
            gks gksVar = (gks) gshVar;
            vm vmVar = gksVar.f18326a;
            if (vmVar != null) {
                vmVar.v(gksVar);
            }
        }
    }

    public static void j(hed hedVar, eek eekVar) {
        vm vmVar;
        gks gksVar = eekVar.ai;
        if (gksVar == null) {
            return;
        }
        if (hedVar != null && (vmVar = gksVar.f18326a) != null) {
            ArrayList arrayList = vmVar.f20178d;
            if (vmVar.f20177c.ae == eekVar) {
                int size = arrayList.size();
                if (size == 0) {
                    hedVar.at.remove(vmVar);
                } else if (acw.bh(arrayList, new brj(0))) {
                    Iterator it = new ArrayList(arrayList).iterator();
                    while (it.hasNext()) {
                        gks gksVar2 = (gks) it.next();
                        eek eekVar2 = gksVar2.ae;
                        if (eekVar2 != null) {
                            ((abi) eekVar2)._ax(gksVar2);
                        }
                    }
                    hedVar.at.remove(vmVar);
                } else {
                    if (!acw.bh(arrayList, new brj(1))) {
                        throw new gck("Can't remove SSA var: " + vmVar + ", still in use, count: " + size + ", list:\n  " + ((String) Collection.b.stream(arrayList).map(new gpn(0)).collect(Collectors.joining("\n  "))));
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((gks) it2.next()).f18326a = null;
                    }
                    hedVar.at.remove(vmVar);
                }
            }
        }
        eekVar.ai = null;
    }

    public static void k(hed hedVar, eek eekVar) {
        q(hedVar, eekVar);
        j(hedVar, eekVar);
        eekVar.w(csv.DONT_GENERATE);
    }

    public static void l(hed hedVar, eek eekVar) {
        if (eekVar == null) {
            return;
        }
        if (eekVar.l.g(csv.WRAPPED)) {
            k(hedVar, eekVar);
            return;
        }
        fza o = ffb.o(hedVar, eekVar, hedVar.ak);
        if (o != null) {
            k(hedVar, eekVar);
            p(hedVar, o, eekVar);
        } else {
            eekVar.w(csv.DONT_GENERATE);
            hedVar.bu("Not found block with instruction: " + eekVar);
        }
    }

    public static final SharedPreferences m(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    public static void n(hed hedVar, List list) {
        Iterable.b.forEach(list, new bra(hedVar, 6));
        Iterable.b.forEach(list, new bra(hedVar, 7));
    }

    public static boolean p(hed hedVar, fza fzaVar, eek eekVar) {
        Iterator it = fzaVar.ac.iterator();
        while (it.hasNext()) {
            if (((eek) it.next()) == eekVar) {
                it.remove();
                return true;
            }
        }
        if (eekVar.l.g(csv.WRAPPED)) {
            return false;
        }
        hedVar.bu("Failed to remove instruction: " + eekVar + " from block: " + fzaVar);
        return false;
    }

    public static void q(hed hedVar, eek eekVar) {
        Iterator it = eekVar.aj.iterator();
        while (it.hasNext()) {
            h(hedVar, (gsh) it.next());
        }
        if (eekVar.ah == hay.PHI) {
            for (gsh gshVar : eekVar.aj) {
                if (gshVar instanceof gks) {
                    ((gks) gshVar).f18326a.k();
                }
            }
        }
        eekVar.w(csv.REMOVE);
        eekVar.w(csv.DONT_GENERATE);
    }

    public static final void r(Context context) {
        if (m(context).edit().putLong("app_set_id_last_used_time", System.currentTimeMillis()).commit()) {
            return;
        }
        String valueOf = String.valueOf(context.getPackageName());
        Log.e("AppSet", valueOf.length() != 0 ? "Failed to store app set ID last used time for App ".concat(valueOf) : new String("Failed to store app set ID last used time for App "));
        throw new auq("Failed to store the app set ID last used time.");
    }

    public static void s(List list, List list2) {
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            eek eekVar = (eek) it.next();
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (list.get(i) == eekVar) {
                    list.remove(i);
                    break;
                }
                i++;
            }
        }
    }

    @Override // g.ayv
    public chw a() {
        eeo eeoVar = new eeo();
        ((ExecutorService) this.f17188d).execute(new fuy(this, 6, eeoVar));
        return eeoVar.f15402a;
    }

    @Override // g.ebz
    public void dq(Bitmap bitmap) {
        if (bitmap != null) {
            hcl hclVar = (hcl) this.f17190f;
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, hclVar.f19224e, hclVar.h, false);
            ((akg) ((fnq) this.f17188d).f17099f).f17753ab.put((String) this.f17187c, createScaledBitmap);
            dxo.d(new efr(this, 6, createScaledBitmap));
        }
    }

    @Override // g.fcc
    public Object get() {
        switch (this.f17189e) {
            case 10:
                return new ahe((Context) ((fcc) this.f17190f).get(), (ahy) ((fcc) this.f17187c).get(), (hau) ((fbc) this.f17188d).get());
            default:
                int i = 13;
                return new crh(new cuf(i), new fbc(i), (ekr) ((fzn) this.f17190f).get(), (dwp) ((fzm) this.f17187c).get(), (efs) ((duw) this.f17188d).get());
        }
    }

    @Override // g.btp
    public void i(x xVar) {
        switch (this.f17189e) {
            case 1:
                fyl fylVar = (fyl) this.f17188d;
                vg vgVar = (vg) this.f17190f;
                fylVar.getClass();
                fyl.f(vgVar);
                break;
            default:
                cdy.i((cdy) this.f17188d, (fnq) this.f17190f);
                break;
        }
    }

    @Override // g.btp
    public void o(int i) {
        switch (this.f17189e) {
            case 1:
                vg vgVar = (vg) this.f17190f;
                fyl fylVar = (fyl) this.f17188d;
                if (i != 1000) {
                    SimpleDateFormat simpleDateFormat = dlb.f14354a;
                    if (System.currentTimeMillis() - ((edm) this.f17187c).f15364b <= 172800000) {
                        if (!acr.bc(fylVar.f17639b)) {
                            fyl.d(fylVar, fylVar.f17639b, vgVar, i);
                            break;
                        } else {
                            fyl.f(vgVar);
                            break;
                        }
                    } else {
                        fylVar.getClass();
                        fyl.e(vgVar, i, null);
                        break;
                    }
                } else {
                    fyl.d(fylVar, fylVar.f17639b, vgVar, i);
                    break;
                }
            default:
                if (!dyd.bi(((cdy) this.f17188d).f12719e)) {
                    ((elf) this.f17187c).runOnUiThread(new dj(this, i, 5));
                    break;
                } else {
                    ((fnq) this.f17190f).o(i);
                    break;
                }
        }
    }

    public blj t(Class cls, String str) {
        blj m;
        dqr dqrVar = (dqr) this.f17187c;
        bff.p(str, "key");
        wg wgVar = (wg) this.f17190f;
        wgVar.getClass();
        LinkedHashMap linkedHashMap = wgVar.f20209a;
        blj bljVar = (blj) linkedHashMap.get(str);
        if (!cls.isInstance(bljVar)) {
            ewp ewpVar = new ewp((bin) this.f17188d);
            ewpVar.f11665b.put(bmr.y, str);
            try {
                m = dqrVar.l(cls, ewpVar);
            } catch (AbstractMethodError unused) {
                m = dqrVar.m(cls);
            }
            bff.p(m, "viewModel");
            blj bljVar2 = (blj) linkedHashMap.put(str, m);
            if (bljVar2 != null) {
                bljVar2.j();
            }
            return m;
        }
        ecl eclVar = dqrVar instanceof ecl ? (ecl) dqrVar : null;
        if (eclVar != null) {
            bff.d(bljVar);
            euu euuVar = eclVar.f15307b;
            if (euuVar != null) {
                hbu hbuVar = eclVar.f15308c;
                bff.d(hbuVar);
                fso.u(bljVar, hbuVar, euuVar);
            }
        }
        bff.ag(bljVar, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        return bljVar;
    }

    public String toString() {
        switch (this.f17189e) {
            case 8:
                Object obj = this.f17188d;
                fpd fpdVar = (fpd) this.f17187c;
                if (fpdVar == null) {
                    return "$";
                }
                if (!(obj instanceof Integer)) {
                    return fpdVar.toString() + "." + obj;
                }
                return fpdVar.toString() + "[" + obj + "]";
            case 18:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.f17190f);
                sb.append('{');
                akj akjVar = (akj) ((akj) this.f17187c).f10384f;
                String str = "";
                while (akjVar != null) {
                    Object obj2 = akjVar.h;
                    sb.append(str);
                    if (obj2 == null || !obj2.getClass().isArray()) {
                        sb.append(obj2);
                    } else {
                        sb.append((CharSequence) Arrays.deepToString(new Object[]{obj2}), 1, r3.length() - 1);
                    }
                    akjVar = (akj) akjVar.f10384f;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public void u() {
        hed hedVar = (hed) this.f17190f;
        ArrayList arrayList = (ArrayList) this.f17187c;
        if (arrayList.isEmpty()) {
            return;
        }
        if (((List) this.f17188d) == null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                l(hedVar, (eek) it.next());
            }
        } else {
            n(hedVar, arrayList);
            s((List) this.f17188d, arrayList);
        }
        arrayList.clear();
    }

    public void v(eek eekVar) {
        ((ArrayList) this.f17187c).add(eekVar);
        k((hed) this.f17190f, eekVar);
    }

    public ku w() {
        String str = ((String) this.f17190f) == null ? " backendName" : "";
        if (((cq) this.f17188d) == null) {
            str = str.concat(" priority");
        }
        if (str.isEmpty()) {
            return new ku((String) this.f17190f, (byte[]) this.f17187c, (cq) this.f17188d);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbdn
    public void zza() {
        zzbdo zzbdoVar = (zzbdo) this.f17187c;
        fdy h = new dxb(zzbdoVar.zza()).h();
        Intent intent = (Intent) h.f16634c;
        Context context = (Context) this.f17190f;
        intent.setPackage(zzhgq.zza(context));
        intent.setData((Uri) this.f17188d);
        context.startActivity(intent, (Bundle) h.f16632a);
        zzbdoVar.zzf((Activity) context);
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public /* bridge */ /* synthetic */ void zza(Object obj) {
        zzfko zzfkoVar;
        agd.e("loadNewJavascriptEngine (success): Trying to acquire lock");
        synchronized (((zzbnu) this.f17188d).f4890d) {
            try {
                agd.e("loadNewJavascriptEngine (success): Lock acquired");
                zzbnu zzbnuVar = (zzbnu) this.f17188d;
                zzbnuVar.f4887a = 0;
                zzbnt zzbntVar = zzbnuVar.h;
                if (zzbntVar != null && ((zzbnt) this.f17190f) != zzbntVar) {
                    agd.e("New JS engine is loaded, marking previous one as destroyable.");
                    ((zzbnu) this.f17188d).h.zzb();
                }
                ((zzbnu) this.f17188d).h = (zzbnt) this.f17190f;
                if (((Boolean) zzbeg.zzd.zze()).booleanValue() && (zzfkoVar = ((zzbnu) this.f17188d).f4889c) != null) {
                    zzfka zzfkaVar = (zzfka) this.f17187c;
                    zzfkaVar.zzg(true);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        agd.e("loadNewJavascriptEngine (success): Lock released");
    }
}
