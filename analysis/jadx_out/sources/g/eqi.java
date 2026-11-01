package g;

import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import cn.trinea.android.developertools.R;
import com.google.android.gms.internal.ads.zzry;
import g.fxe;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public final class eqi extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15994a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15995b;

    public /* synthetic */ eqi() {
        this.f15994a = 7;
    }

    public /* synthetic */ eqi(ContextWrapper contextWrapper, int i) {
        this.f15994a = i;
        this.f15995b = contextWrapper;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ eqi(Looper looper, Object obj, int i) {
        super(looper);
        this.f15994a = i;
        this.f15995b = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ eqi(Object obj, Looper looper, int i) {
        super(looper);
        this.f15994a = i;
        this.f15995b = obj;
    }

    private final void c(Message message) {
        int size;
        fdy[] fdyVarArr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        fzn fznVar = (fzn) this.f15995b;
        while (true) {
            synchronized (((HashMap) fznVar.f17730e)) {
                try {
                    size = ((ArrayList) fznVar.h).size();
                    if (size <= 0) {
                        return;
                    }
                    fdyVarArr = new fdy[size];
                    ((ArrayList) fznVar.h).toArray(fdyVarArr);
                    ((ArrayList) fznVar.h).clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (int i = 0; i < size; i++) {
                fdy fdyVar = fdyVarArr[i];
                int size2 = ((ArrayList) fdyVar.f16632a).size();
                for (int i2 = 0; i2 < size2; i2++) {
                    dhg dhgVar = (dhg) ((ArrayList) fdyVar.f16632a).get(i2);
                    if (!dhgVar.f14169a) {
                        dhgVar.f14171c.onReceive((Context) fznVar.f17729d, (Intent) fdyVar.f16634c);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x02a0, code lost:
    
        if (r5 < r12) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02f0, code lost:
    
        if (r5 < r12) goto L141;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x06a2  */
    /* JADX WARN: Removed duplicated region for block: B:411:? A[RETURN, SYNTHETIC] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void handleMessage(Message message) {
        boolean z;
        boolean z2;
        Object h;
        int i;
        MenuItem findItem;
        int intValue;
        String trim;
        cte cteVar;
        NetworkInfo networkInfo = null;
        r8 = null;
        r8 = null;
        r8 = null;
        cte cteVar2 = null;
        ArrayList arrayList = null;
        final int i2 = 0;
        char c2 = 1;
        switch (this.f15994a) {
            case 0:
                ctl ctlVar = (ctl) this.f15995b;
                switch (message.what) {
                    case 1:
                        ctlVar.p((fgs) message.obj, true);
                        return;
                    case 2:
                        fgs fgsVar = (fgs) message.obj;
                        ctlVar.getClass();
                        LinkedHashMap linkedHashMap = (LinkedHashMap) ctlVar.f13470e;
                        String str = fgsVar.f16751a;
                        awa awaVar = (awa) linkedHashMap.get(str);
                        if (awaVar != null) {
                            awaVar.aa(fgsVar);
                            if (awaVar.z()) {
                                linkedHashMap.remove(str);
                            }
                        }
                        if (((LinkedHashSet) ctlVar.f13466a).contains(fgsVar.f16752b)) {
                            ((WeakHashMap) ctlVar.m).remove(fgsVar.h());
                        }
                        return;
                    case 3:
                    case 8:
                    default:
                        akf.f10373a.post(new eea(message, 0));
                        return;
                    case 4:
                        awa awaVar2 = (awa) message.obj;
                        ctlVar.getClass();
                        awaVar2.getClass();
                        String str2 = awaVar2.v;
                        int i3 = alz.NO_STORE.index;
                        fnq fnqVar = (fnq) ctlVar.f13467b;
                        Bitmap bitmap = awaVar2.k;
                        cjm cjmVar = (cjm) fnqVar.f17099f;
                        if (str2 == null || bitmap == null) {
                            throw new NullPointerException("key == null || bitmap == null");
                        }
                        StringBuilder sb = dxc.f14999a;
                        int allocationByteCount = bitmap.getAllocationByteCount();
                        if (allocationByteCount < 0) {
                            throw new IllegalStateException("Negative size: " + bitmap);
                        }
                        if (allocationByteCount > cjmVar.maxSize()) {
                            cjmVar.remove(str2);
                        } else {
                            cjmVar.put(str2, new fta(bitmap, allocationByteCount));
                        }
                        ((LinkedHashMap) ctlVar.f13470e).remove(str2);
                        ctlVar.q(awaVar2);
                        awaVar2.r.getClass();
                        return;
                    case 5:
                        awa awaVar3 = (awa) message.obj;
                        ctlVar.getClass();
                        WeakHashMap weakHashMap = (WeakHashMap) ctlVar.f13472g;
                        boolean z3 = ctlVar.f13471f;
                        cp cpVar = (cp) ctlVar.l;
                        Future future = awaVar3.u;
                        gsp gspVar = awaVar3.q;
                        if (future != null && future.isCancelled()) {
                            return;
                        }
                        if (cpVar.isShutdown()) {
                            ctlVar.u(awaVar3, false);
                            return;
                        }
                        if (z3) {
                            Context context = (Context) ctlVar.j;
                            StringBuilder sb2 = dxc.f14999a;
                            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                        }
                        int i4 = awaVar3.t;
                        if (i4 > 0) {
                            awaVar3.t = i4 - 1;
                            z = gspVar.c(networkInfo);
                        } else {
                            z = false;
                        }
                        if (z) {
                            awaVar3.r.getClass();
                            if (awaVar3.h instanceof clp) {
                                awaVar3.f10960e |= sy.NO_CACHE.index;
                            }
                            awaVar3.u = cpVar.submit(awaVar3);
                            return;
                        }
                        if (z3) {
                            gspVar.getClass();
                            if (gspVar instanceof dam) {
                                z2 = true;
                                ctlVar.u(awaVar3, z2);
                                if (z2) {
                                    return;
                                }
                                fgs fgsVar2 = awaVar3.i;
                                if (fgsVar2 != null && (h = fgsVar2.h()) != null) {
                                    fgsVar2.f16754d = true;
                                    weakHashMap.put(h, fgsVar2);
                                }
                                ArrayList arrayList2 = awaVar3.l;
                                if (arrayList2 != null) {
                                    int size = arrayList2.size();
                                    while (i2 < size) {
                                        fgs fgsVar3 = (fgs) arrayList2.get(i2);
                                        Object h2 = fgsVar3.h();
                                        if (h2 != null) {
                                            fgsVar3.f16754d = true;
                                            weakHashMap.put(h2, fgsVar3);
                                        }
                                        i2++;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                        z2 = false;
                        ctlVar.u(awaVar3, z2);
                        if (z2) {
                        }
                        break;
                    case 6:
                        ctlVar.u((awa) message.obj, false);
                        return;
                    case 7:
                        ctlVar.getClass();
                        ArrayList arrayList3 = (ArrayList) ctlVar.h;
                        ArrayList arrayList4 = new ArrayList(arrayList3);
                        arrayList3.clear();
                        Handler handler = (Handler) ctlVar.k;
                        handler.sendMessage(handler.obtainMessage(8, arrayList4));
                        if (arrayList4.isEmpty()) {
                            return;
                        }
                        ((awa) arrayList4.get(0)).r.getClass();
                        return;
                    case 9:
                        NetworkInfo networkInfo2 = (NetworkInfo) message.obj;
                        cp cpVar2 = (cp) ctlVar.l;
                        WeakHashMap weakHashMap2 = (WeakHashMap) ctlVar.f13472g;
                        if (awf.n(cpVar2)) {
                            if (networkInfo2 != null) {
                                cpVar2.getClass();
                                if (networkInfo2.isConnectedOrConnecting()) {
                                    int type = networkInfo2.getType();
                                    if (type == 0) {
                                        int subtype = networkInfo2.getSubtype();
                                        switch (subtype) {
                                            case 1:
                                            case 2:
                                                cpVar2.a(1);
                                                break;
                                            default:
                                                switch (subtype) {
                                                    case 12:
                                                        break;
                                                    case 13:
                                                    case 14:
                                                    case 15:
                                                        cpVar2.a(3);
                                                        break;
                                                    default:
                                                        cpVar2.a(3);
                                                        break;
                                                }
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 6:
                                                cpVar2.a(2);
                                                break;
                                        }
                                    } else if (type == 1 || type == 6 || type == 9) {
                                        cpVar2.a(4);
                                    } else {
                                        cpVar2.a(3);
                                    }
                                }
                            }
                            cpVar2.a(3);
                        }
                        if (networkInfo2 == null || !networkInfo2.isConnected() || weakHashMap2.isEmpty()) {
                            return;
                        }
                        Iterator it = weakHashMap2.values().iterator();
                        while (it.hasNext()) {
                            fgs fgsVar4 = (fgs) it.next();
                            it.remove();
                            akf akfVar = fgsVar4.f16753c;
                            ctlVar.p(fgsVar4, false);
                        }
                        return;
                    case 10:
                        ctlVar.getClass();
                        return;
                    case 11:
                        Object obj = message.obj;
                        LinkedHashSet linkedHashSet = (LinkedHashSet) ctlVar.f13466a;
                        WeakHashMap weakHashMap3 = (WeakHashMap) ctlVar.m;
                        if (linkedHashSet.add(obj)) {
                            Iterator it2 = ((LinkedHashMap) ctlVar.f13470e).values().iterator();
                            while (it2.hasNext()) {
                                awa awaVar4 = (awa) it2.next();
                                awaVar4.r.getClass();
                                fgs fgsVar5 = awaVar4.i;
                                ArrayList arrayList5 = awaVar4.l;
                                boolean z4 = (arrayList5 == null || arrayList5.isEmpty()) ? false : true;
                                if (fgsVar5 != null || z4) {
                                    if (fgsVar5 != null && fgsVar5.f16752b.equals(obj)) {
                                        awaVar4.aa(fgsVar5);
                                        weakHashMap3.put(fgsVar5.h(), fgsVar5);
                                    }
                                    if (z4) {
                                        for (int size2 = arrayList5.size() - 1; size2 >= 0; size2--) {
                                            fgs fgsVar6 = (fgs) arrayList5.get(size2);
                                            if (fgsVar6.f16752b.equals(obj)) {
                                                awaVar4.aa(fgsVar6);
                                                weakHashMap3.put(fgsVar6.h(), fgsVar6);
                                            }
                                        }
                                    }
                                    if (awaVar4.z()) {
                                        it2.remove();
                                    }
                                }
                            }
                            return;
                        }
                        return;
                    case 12:
                        Object obj2 = message.obj;
                        if (((LinkedHashSet) ctlVar.f13466a).remove(obj2)) {
                            Iterator it3 = ((WeakHashMap) ctlVar.m).values().iterator();
                            while (it3.hasNext()) {
                                fgs fgsVar7 = (fgs) it3.next();
                                if (fgsVar7.f16752b.equals(obj2)) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(fgsVar7);
                                    it3.remove();
                                }
                            }
                            if (arrayList != null) {
                                Handler handler2 = (Handler) ctlVar.k;
                                handler2.sendMessage(handler2.obtainMessage(13, arrayList));
                                return;
                            }
                            return;
                        }
                        return;
                }
            case 1:
                atk atkVar = (atk) this.f15995b;
                bff.p(message, "msg");
                super.handleMessage(message);
                int i5 = message.what;
                int i6 = atk.f10802d;
                if (i5 == 1) {
                    Menu menu = atkVar.y;
                    Integer valueOf = menu != null ? Integer.valueOf(menu.size() - 1) : null;
                    if (valueOf != null && (intValue = valueOf.intValue()) >= 0) {
                        int i7 = 0;
                        while (true) {
                            if (menu != null) {
                                MenuItem item = menu.getItem(i7);
                                if (item != null) {
                                    item.setEnabled(true);
                                }
                            }
                            if (i7 != intValue) {
                                i7++;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(atkVar.z)) {
                        Menu menu2 = atkVar.y;
                        if (menu2 != null && (findItem = menu2.findItem(R.id.bundle_info)) != null) {
                            hbj hbjVar = atkVar.s;
                            findItem.setVisible(hbjVar != null && hbjVar.i);
                        }
                        a.a.ab abVar = atkVar.f10804e;
                        if (abVar != null) {
                            abVar.loadDataWithBaseURL(null, atkVar.z, "text/html", "utf-8", null);
                        }
                    }
                    atkVar.i = false;
                    return;
                }
                if (i5 == 2) {
                    atkVar.i = false;
                    a.a.ab abVar2 = atkVar.f10804e;
                    if (abVar2 != null) {
                        abVar2.hideLoadingProgress();
                    }
                    coz cozVar = atkVar.p;
                    String str3 = cozVar != null ? cozVar.reason : null;
                    if (str3 != null) {
                        int hashCode = str3.hashCode();
                        if (hashCode != -580047918) {
                            if (hashCode != 3016401) {
                                if (hashCode == 109648666 && str3.equals("split")) {
                                    i = R.string.manifest_error_split;
                                }
                            } else if (str3.equals("base")) {
                                i = R.string.manifest_error_base;
                            }
                        } else if (str3.equals("conflict")) {
                            i = R.string.manifest_error_conflict;
                        }
                        AlertDialog.Builder title = new AlertDialog.Builder(atkVar).setTitle(R.string.manifest_parse_failed);
                        if (cozVar != null || (r0 = cozVar.source) == null) {
                            String str4 = atkVar.f10805f;
                        }
                        title.setMessage(atkVar.getString(i, str4)).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).show();
                        return;
                    }
                    i = R.string.manifest_error_read;
                    AlertDialog.Builder title2 = new AlertDialog.Builder(atkVar).setTitle(R.string.manifest_parse_failed);
                    if (cozVar != null) {
                    }
                    String str42 = atkVar.f10805f;
                    title2.setMessage(atkVar.getString(i, str42)).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).show();
                    return;
                }
                return;
            case 2:
                ka kaVar = (ka) this.f15995b;
                super.handleMessage(message);
                int i8 = message.what;
                if (i8 != 1) {
                    if (i8 != 2) {
                        return;
                    }
                    gm.f(kaVar.p, R.string.save_failed);
                    return;
                } else {
                    String str5 = (String) message.obj;
                    if (fgj.e().g(kaVar, dov.e(kaVar, str5), false, false, true)) {
                        gm.h(kaVar.p, R.string.save_file_success, str5);
                    } else {
                        gm.h(kaVar.p, R.string.open_fail_path, str5);
                    }
                    fnp.g(kaVar.p, kaVar.getString(R.string.app_name));
                    return;
                }
            case 3:
                c(message);
                return;
            case 4:
                doq doqVar = (doq) this.f15995b;
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        auj aujVar = (auj) message.obj;
                        doqVar.ae = aujVar;
                        if (aujVar != null && hca.g(aujVar.h)) {
                            doqVar.t();
                            return;
                        } else {
                            if (cro.ba(doqVar.bb, doqVar.af)) {
                                doqVar._a();
                                return;
                            }
                            return;
                        }
                    case 2:
                        doqVar.aa((String) message.obj);
                        return;
                    case 3:
                        doqVar.x();
                        gm.f(doqVar.bb, R.string.save_failed);
                        return;
                    case 4:
                        doqVar.x();
                        gm.j(doqVar.bb, R.string.save_no_file, doqVar.ab());
                        return;
                    case 5:
                        doqVar.w(message.obj);
                        return;
                    case 6:
                        efx efxVar = doqVar.bb;
                        cgg cggVar = doqVar.af;
                        if (cro.q != null) {
                            if (cggVar.getMode() == 1) {
                                if (cux.au(efxVar, cggVar)) {
                                    int av = cggVar.isMultiProcess() ? byh.av(efxVar, 0, cux.az(cggVar.getCode())) : cro.av(efxVar, 0, cux.az(cggVar.getCode()));
                                    fxe.a j = atf.g(efxVar).j();
                                    if (j != null) {
                                        i2 = j.mTC;
                                        break;
                                    }
                                }
                                gm.c(efxVar, R.string.donation_version_trial_exceed_tips);
                                return;
                            }
                            doqVar.q();
                            return;
                        }
                        return;
                    case 7:
                        efx efxVar2 = doqVar.bb;
                        cgg cggVar2 = doqVar.af;
                        if (cro.q != null) {
                            if (cggVar2.getMode() == 1) {
                                if (cux.au(efxVar2, cggVar2)) {
                                    int av2 = cggVar2.isMultiProcess() ? byh.av(efxVar2, 0, cux.az(cggVar2.getCode())) : cro.av(efxVar2, 0, cux.az(cggVar2.getCode()));
                                    fxe.a j2 = atf.g(efxVar2).j();
                                    if (j2 != null) {
                                        i2 = j2.mTC;
                                        break;
                                    }
                                }
                                gm.c(efxVar2, R.string.donation_version_trial_exceed_tips);
                                return;
                            }
                            doqVar.z((auj) message.obj);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            case 5:
                final b.c.d dVar = (b.c.d) this.f15995b;
                super.handleMessage(message);
                int i9 = message.what;
                if (i9 == 2) {
                    final String str6 = (String) message.obj;
                    dVar.al();
                    View findViewById = dVar.findViewById(R.id.snackbar_layout);
                    trim = TextUtils.isEmpty(dVar.f358f) ? "" : dVar.f358f.trim();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(acw.bk(dVar.u));
                    dVar.h = afo.ar(findViewById, dVar.getString(R.string.save_to_path_success, trim, awf.ad(sb3, File.separator, "so")), -2, R.string.open, new View.OnClickListener() { // from class: g.eon
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            switch (i2) {
                                case 0:
                                    b.c.d dVar2 = dVar;
                                    if (!baf.ap(dVar2.u, str6, true)) {
                                        gm.f(dVar2.u, R.string.open_fail);
                                        break;
                                    }
                                    break;
                                default:
                                    b.c.d dVar3 = dVar;
                                    if (!baf.ap(dVar3.u, str6, true)) {
                                        gm.f(dVar3.u, R.string.open_fail);
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
                if (i9 == 3) {
                    dVar.al();
                    gm.f(dVar.u, R.string.save_failed);
                    return;
                }
                if (i9 != 12) {
                    if (i9 != 13) {
                        return;
                    }
                    dVar.af();
                    gm.f(dVar.u, R.string.save_failed);
                    return;
                }
                final String str7 = (String) message.obj;
                dVar.af();
                View findViewById2 = dVar.findViewById(R.id.snackbar_layout);
                trim = TextUtils.isEmpty(dVar.i) ? "" : dVar.i.trim();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(acw.bk(dVar.u));
                String string = dVar.getString(R.string.save_to_path_success, trim, awf.ad(sb4, File.separator, "so"));
                final char c3 = c2 == true ? 1 : 0;
                dVar.h = afo.ar(findViewById2, string, -2, R.string.open, new View.OnClickListener() { // from class: g.eon
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (c3) {
                            case 0:
                                b.c.d dVar2 = dVar;
                                if (!baf.ap(dVar2.u, str7, true)) {
                                    gm.f(dVar2.u, R.string.open_fail);
                                    break;
                                }
                                break;
                            default:
                                b.c.d dVar3 = dVar;
                                if (!baf.ap(dVar3.u, str7, true)) {
                                    gm.f(dVar3.u, R.string.open_fail);
                                    break;
                                }
                                break;
                        }
                    }
                });
                return;
            case 6:
                yk ykVar = (yk) this.f15995b;
                int i10 = message.what;
                if (i10 == 0) {
                    ykVar.l++;
                    return;
                }
                if (i10 == 1) {
                    ykVar.f20346c++;
                    return;
                }
                if (i10 == 2) {
                    long j3 = message.arg1;
                    int i11 = ykVar.f20347d + 1;
                    ykVar.f20347d = i11;
                    long j4 = ykVar.f20350g + j3;
                    ykVar.f20350g = j4;
                    ykVar.i = j4 / i11;
                    return;
                }
                if (i10 == 3) {
                    long j5 = message.arg1;
                    ykVar.h++;
                    long j6 = ykVar.m + j5;
                    ykVar.m = j6;
                    ykVar.k = j6 / ykVar.f20347d;
                    return;
                }
                if (i10 != 4) {
                    akf.f10373a.post(new eea(message, 1));
                    return;
                }
                Long l = (Long) message.obj;
                ykVar.f20345b++;
                long longValue = l.longValue() + ykVar.f20348e;
                ykVar.f20348e = longValue;
                ykVar.f20344a = longValue / ykVar.f20345b;
                return;
            case 7:
                try {
                    ((Handler) this.f15995b).handleMessage(message);
                    return;
                } catch (Exception e2) {
                    erl.ac(e2);
                    return;
                }
            case 8:
                gk gkVar = (gk) this.f15995b;
                super.handleMessage(message);
                int i12 = message.what;
                if (i12 != 1) {
                    if (i12 != 2) {
                        return;
                    }
                    gm.f(gkVar.j, R.string.save_failed);
                    return;
                } else {
                    String str8 = (String) message.obj;
                    if (fgj.e().g(gkVar, dov.e(gkVar, str8), false, false, true)) {
                        gm.h(gkVar.j, R.string.save_file_success, str8);
                    } else {
                        gm.h(gkVar.j, R.string.open_fail_path, str8);
                    }
                    fnp.g(gkVar.j, gkVar.getString(R.string.app_name));
                    return;
                }
            case 9:
                HashSet hashSet = ((cpx) this.f15995b).f13303f;
                int i13 = message.what;
                if (i13 == 1) {
                    Iterator it4 = new ArrayList(hashSet).iterator();
                    while (it4.hasNext()) {
                        it4.next();
                    }
                    return;
                } else {
                    if (i13 != 2) {
                        return;
                    }
                    Iterator it5 = new ArrayList(hashSet).iterator();
                    while (it5.hasNext()) {
                        it5.next();
                    }
                    return;
                }
            default:
                bgy bgyVar = (bgy) this.f15995b;
                int i14 = message.what;
                if (i14 == 1) {
                    cteVar = (cte) message.obj;
                    try {
                        bgyVar.i.queueInputBuffer(cteVar.f13462c, 0, cteVar.f13463d, cteVar.f13460a, cteVar.f13461b);
                    } catch (RuntimeException e3) {
                        zzry.zza(bgyVar.f11558e, null, e3);
                    }
                } else {
                    if (i14 != 2) {
                        if (i14 == 3) {
                            bgyVar.h.zze();
                        } else if (i14 != 4) {
                            zzry.zza(bgyVar.f11558e, null, new IllegalStateException(String.valueOf(message.what)));
                        } else {
                            try {
                                bgyVar.i.setParameters((Bundle) message.obj);
                            } catch (RuntimeException e4) {
                                zzry.zza(bgyVar.f11558e, null, e4);
                            }
                        }
                        if (cteVar2 == null) {
                            ArrayDeque arrayDeque = bgy.f11556b;
                            synchronized (arrayDeque) {
                                arrayDeque.add(cteVar2);
                            }
                            return;
                        }
                        return;
                    }
                    cteVar = (cte) message.obj;
                    int i15 = cteVar.f13462c;
                    MediaCodec.CryptoInfo cryptoInfo = cteVar.f13464e;
                    long j7 = cteVar.f13460a;
                    int i16 = cteVar.f13461b;
                    try {
                        synchronized (bgy.f11555a) {
                            bgyVar.i.queueSecureInputBuffer(i15, 0, cryptoInfo, j7, i16);
                        }
                    } catch (RuntimeException e5) {
                        zzry.zza(bgyVar.f11558e, null, e5);
                    }
                }
                cteVar2 = cteVar;
                if (cteVar2 == null) {
                }
        }
    }
}
