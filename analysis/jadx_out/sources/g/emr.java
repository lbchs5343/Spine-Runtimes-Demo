package g;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.ContentInfo;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import cn.trinea.android.developertools.R;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.gms.internal.ads.zzbat;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzbno;
import com.google.android.gms.internal.ads.zzbtx;
import com.google.android.gms.internal.ads.zzcaq;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzdfj;
import com.google.android.gms.internal.ads.zzeag;
import com.google.android.gms.internal.ads.zzena;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzgee;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import j$.util.Optional;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class emr implements dry, caf, ghx, bwb, atd, fsz, btp, eya, bsh, dad, cwb, fsj, cra, lb, zzcaq, bez, zzgee, zzenh {

    /* renamed from: b, reason: collision with root package name */
    public static volatile emr f15810b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15811c;
    public Object n;

    public /* synthetic */ emr(int i) {
        this.f15811c = i;
    }

    public /* synthetic */ emr(int i, Object obj) {
        this.f15811c = i;
        this.n = obj;
    }

    public emr(ClipData clipData, int i) {
        this.f15811c = 6;
        this.n = dgd.t(clipData, i);
    }

    public emr(Context context) {
        this.f15811c = 0;
        this.n = new cei(context);
    }

    private final void ag(Throwable th) {
    }

    private final void ah(Throwable th) {
    }

    public static Map p(Map map, Map map2) {
        if (map.isEmpty()) {
            return map2;
        }
        if (map2.isEmpty()) {
            return map;
        }
        HashMap hashMap = new HashMap(map2.size() + map.size());
        for (Map.Entry entry : map.entrySet()) {
            cwx cwxVar = (cwx) map2.remove((cwx) entry.getValue());
            if (cwxVar != null) {
                hashMap.put((cwx) entry.getKey(), cwxVar);
            } else {
                hashMap.put((cwx) entry.getKey(), (cwx) entry.getValue());
            }
        }
        hashMap.putAll(map2);
        return hashMap;
    }

    public static void q(hed hedVar, cwx cwxVar) {
        if (cwxVar.bn()) {
            u(hedVar, cwxVar, w(hedVar));
        }
    }

    public static void t(Context context, bme bmeVar, awn awnVar, emg emgVar) {
        zzbcn.zza(context);
        if (((Boolean) zzbel.zzj.zze()).booleanValue()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkP)).booleanValue()) {
                ga.f17769b.execute(new chq(context, bmeVar, awnVar, emgVar, 2, false));
                return;
            }
        }
        new zzbtx(context, bmeVar, awnVar.f10978a, null).zzb(emgVar);
    }

    public static void u(ebh ebhVar, cwx cwxVar, Collection collection) {
        if (collection.isEmpty()) {
            return;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (evh.e(((cwx) it.next()).q())) {
                cwxVar.bh(new oe(collection, ebhVar, cwxVar, 2));
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.HashSet, java.util.Set] */
    /* JADX WARN: Type inference failed for: r5v0, types: [g.hed, g.lh] */
    public static Set w(hed hedVar) {
        ?? r2;
        dik dikVar = (dik) hedVar.l.k(acq.z);
        if (dikVar != null) {
            return dikVar.f14228b;
        }
        HashSet hashSet = new HashSet();
        cci cciVar = hedVar.am;
        if (cciVar.bk()) {
            r2 = new HashSet(cciVar.y);
            cci cciVar2 = cciVar.ai;
            while (true) {
                cci cciVar3 = cciVar2;
                cci cciVar4 = cciVar;
                cciVar = cciVar3;
                if (cciVar == cciVar4) {
                    break;
                }
                r2.addAll(cciVar.y);
                cciVar2 = cciVar.ai;
            }
        } else {
            r2 = cciVar.y;
        }
        hashSet.addAll(r2);
        hashSet.addAll(hedVar.ae);
        boolean isEmpty = hashSet.isEmpty();
        HashSet hashSet2 = hashSet;
        if (isEmpty) {
            hashSet2 = Collections.EMPTY_SET;
        }
        dik dikVar2 = dik.f14227a;
        dik dikVar3 = evh.m(hashSet2) ? dik.f14227a : new dik(hashSet2);
        hedVar.m(dikVar3);
        return dikVar3.f14228b;
    }

    @Override // g.atd
    public void a(int i) {
        ((ContentInfo.Builder) this.n).setFlags(i);
    }

    public void aa(int i) {
        gii giiVar;
        cyx cyxVar;
        dlv dlvVar = (dlv) this.n;
        giiVar = dlvVar.jv;
        giiVar.d();
        if (dlvVar.ia.isShown() && (cyxVar = dlvVar.tl) != null && i == 1) {
            cyxVar.dq(dlvVar.bf.get(3), dlvVar, dlvVar);
        }
    }

    public void ab(cwx cwxVar, jb jbVar) {
        dwg dwgVar = (dwg) this.n;
        cci w = dwgVar.w(cwxVar);
        if (w != null) {
            w.bm(jbVar);
            return;
        }
        aht l = dwgVar.l.l(cwxVar);
        if (l != null) {
            for (cwx cwxVar2 : l.f10240e) {
                if (!cwxVar2.equals(cwx.t)) {
                    jbVar.accept(cwxVar, cwxVar2);
                    ab(cwxVar2, jbVar);
                }
            }
        }
    }

    public cwx ac(cwx cwxVar, Map map) {
        if (map.isEmpty()) {
            return null;
        }
        cwxVar.getClass();
        if (cwxVar instanceof btl) {
            return (cwx) map.get(cwxVar);
        }
        if (cwxVar instanceof aoe) {
            cwx ac = ac(cwxVar.k(), map);
            if (ac == null) {
                return null;
            }
            return new aoe(ac);
        }
        cwx bo = cwxVar.bo();
        if (bo != null && bo.bn()) {
            cwx ac2 = ac(bo, map);
            if (ac2 == null) {
                return null;
            }
            return new gzg(ac2, cwxVar.bl());
        }
        if (!cwxVar.bm()) {
            return null;
        }
        cwx bj = cwxVar.bj();
        if (bj == null) {
            List c2 = cwxVar.c();
            if (evh.e(c2)) {
                return cwx.bd(cwxVar, evh.g(c2, new fss(this, 2, map)));
            }
            return null;
        }
        cwx ac3 = ac(bj, map);
        if (ac3 == null) {
            return null;
        }
        cwx bg = cwxVar.bg();
        cwx ac4 = ac(bg, map);
        if (ac4 != null) {
            bg = ac4;
        }
        return new gvo((aog) ac3, (aog) bg);
    }

    public List ad(cwx cwxVar) {
        dwg dwgVar = (dwg) this.n;
        cci w = dwgVar.w(cwxVar);
        if (w != null) {
            return w.y;
        }
        aht l = dwgVar.l.l(cwxVar);
        if (l == null || l.f10237b.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        List list = l.f10237b;
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public void ae(long j, long j2, String str) {
        String string;
        long currentTimeMillis = System.currentTimeMillis();
        b.b.b bVar = (b.b.b) this.n;
        if (currentTimeMillis - bVar.l.get() >= 200) {
            bVar.l.set(currentTimeMillis);
            if (str != null && str.startsWith("SOURCE:")) {
                string = bVar.getString(R.string.decompile_saving_source_progress, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j2 > 0 ? (j * 100) / j2 : 0L));
            } else if (str == null || !str.startsWith("RES:")) {
                string = bVar.getString(R.string.decompile_saving_progress, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j2 > 0 ? (j * 100) / j2 : 0L));
            } else {
                string = bVar.getString(R.string.decompile_saving_res_progress, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j2 > 0 ? (j * 100) / j2 : 0L));
            }
            String o = b.b.b.o(bVar, str);
            if (!o.isEmpty()) {
                string = awf.i(string, "\n", o);
            }
            eqi eqiVar = bVar.ah;
            eqiVar.sendMessage(eqiVar.obtainMessage(5, string));
        }
    }

    public void af(boolean z) {
        boolean a2;
        JSONObject jSONObject;
        Context context = (Context) this.n;
        try {
            SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "npth", 0);
            long j = d2.getLong("history_time", -1L);
            if (j < 0) {
                d2.edit().putLong("history_time", System.currentTimeMillis()).apply();
            } else if (System.currentTimeMillis() - j > AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) {
                File file = new File(afo.as(context), "crash_history");
                if (file.exists()) {
                    file.delete();
                }
                d2.edit().putLong("history_time", System.currentTimeMillis()).apply();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (z) {
            File file2 = new File(afo.as((Context) this.n), "CrashLogJava");
            File[] listFiles = !file2.exists() ? null : TextUtils.isEmpty(".npth") ? file2.listFiles() : file2.listFiles(new foo());
            if (listFiles == null) {
                return;
            }
            Arrays.sort(listFiles, Collections.reverseOrder());
            for (int i = 0; i < listFiles.length && i < 50; i++) {
                File file3 = listFiles[i];
                try {
                    akj j2 = akj.j();
                    String absolutePath = file3.getAbsolutePath();
                    synchronized (j2) {
                        try {
                            fdc fdcVar = (fdc) j2.h;
                            a2 = fdcVar != null ? fdcVar.a((SQLiteDatabase) j2.f10384f, absolutePath) : false;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (!a2) {
                        ja ag = cro.ag(file3.getAbsolutePath());
                        if (ag != null && (jSONObject = (JSONObject) ag.f19457b) != null) {
                            String name = file3.getName();
                            boolean z2 = true;
                            if (!name.startsWith("launch_") && !name.startsWith("anr_") && name.startsWith("java_") && jSONObject.optInt("is_dart") != 1) {
                                jSONObject.optInt("isJava");
                            }
                            ((JSONObject) ag.f19457b).put("upload_scene", "launch_scan");
                            if (eg.y((String) ag.f19456a, jSONObject.toString(), ag.f19459d).f13765e == 0) {
                                if (!file3.exists() || !file3.delete()) {
                                    z2 = false;
                                }
                                if (!z2) {
                                    akj j3 = akj.j();
                                    String absolutePath2 = file3.getAbsolutePath();
                                    aak aakVar = new aak();
                                    aakVar.f9852a = absolutePath2;
                                    aakVar.f9853b = System.currentTimeMillis();
                                    j3.p(aakVar);
                                }
                            }
                        }
                    } else if (file3.exists()) {
                        file3.delete();
                    }
                } catch (Exception unused) {
                    Context context2 = eca.f15278c;
                }
            }
        }
    }

    @Override // g.eya
    public Object ak(Object obj) {
        return Optional.ofNullable(((eya) this.n).ak((ehi) obj));
    }

    @Override // g.atd
    public dui build() {
        ContentInfo build;
        build = ((ContentInfo.Builder) this.n).build();
        return new dui(new fnq(build));
    }

    @Override // g.bwb
    public void d(ArrayList arrayList) {
        sd sdVar;
        gwf gwfVar = (gwf) this.n;
        ArrayList arrayList2 = new ArrayList();
        int i = 3;
        if (!acw.u(arrayList)) {
            ajr ajrVar = new ajr();
            cwq cwqVar = gwfVar.j;
            if (ern.h(cwqVar.v, cwqVar.f13643c) && gwfVar.f18870d) {
                gwfVar.j.ad(null, null, new eie(i, ajrVar));
                arrayList2.add(ajrVar);
                arrayList2.add(new edn());
            }
            arrayList2.addAll(arrayList);
        }
        efx efxVar = gwfVar.f18871e;
        if (efxVar.isFinishing() || efxVar.isDestroyed()) {
            return;
        }
        String trim = efxVar.an.getText().toString().trim();
        String str = efxVar.au.f18872f;
        if (str == null) {
            str = "";
        }
        if (TextUtils.equals(trim, str)) {
            int i2 = 0;
            if (!efxVar.aw) {
                efxVar.as.setVisibility(8);
                efxVar.bj.setVisibility(0);
                efxVar.bd.setVisibility(0);
            }
            if (efxVar.ak != null) {
                Iterator it = arrayList2.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    if (((cng) it.next()) instanceof auj) {
                        i3++;
                    }
                }
                efxVar.ak.setText(efxVar.getString(eyt.bq(efxVar.au.f18872f) ? R.string.app_list_count_all : R.string.app_list_count_search, Integer.valueOf(i3)));
                efxVar.ak.setVisibility((i3 != 0 || eyt.bq(efxVar.au.f18872f)) ? 0 : 8);
            }
            if ((arrayList2.size() > 1 || eyt.bq(efxVar.au.f18872f) || efx.bk(efxVar.bb)) && (sdVar = efxVar.ar) != null) {
                sdVar.ak(3);
                efxVar.ar = null;
            }
            if (acw.u(arrayList2)) {
                efxVar.getString(R.string.tips_no_application);
                efxVar.bd.setVisibility(8);
                efxVar.as.setVisibility(0);
                efxVar.ay.setVisibility(0);
                efxVar.findViewById(R.id.progress_bar).setVisibility(8);
                efxVar.ay.setText(R.string.search_app_none);
                efxVar.bq();
                return;
            }
            if (arrayList2.size() <= 1) {
                if (eyt.bq(efxVar.au.f18872f)) {
                    gm.c(efxVar.bb, R.string.app_too_few_for_premission);
                } else {
                    efxVar.bq();
                }
            }
            dfi dfiVar = efxVar.at;
            if (dfiVar != null) {
                dfiVar.h(arrayList2);
                efxVar.at.notifyDataSetChanged();
                return;
            }
            csm e2 = efxVar.e(efxVar, efxVar.ba);
            dfi dfiVar2 = new dfi(efxVar.bb, arrayList2);
            efxVar.at = dfiVar2;
            if (efxVar.ax) {
                dfiVar2.g(ajr.class, new ccd(efxVar, efxVar.getResources().getInteger(R.integer.app_span_count), e2));
                efxVar.at.g(edn.class, new fsk(i2));
            }
            efxVar.at.g(auj.class, efxVar.e(efxVar, efxVar.ba));
            efxVar.bd.setAdapter(efxVar.at);
        }
    }

    @Override // g.fsj
    public Bitmap dq(hcl hclVar) {
        String str;
        fzx fzxVar = (fzx) this.n;
        String str2 = hclVar.f19223d;
        String str3 = hclVar.f19222c;
        if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            str = dzm.ae(str2, fzxVar.mn);
        } else if (!TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2)) {
            str = dzm.ae(str3, fzxVar.mn);
        } else if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
            str = null;
        } else {
            str = dzm.ae(str2, fzxVar.mn) + dzm.ae(str3, fzxVar.mn);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Bitmap bitmap = (Bitmap) fzxVar.f17753ab.get(str);
        if (bitmap != null) {
            return bitmap;
        }
        ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(fzxVar.ig, str, new dzh(this, hclVar, str, 15));
        return (Bitmap) fzxVar.f17753ab.get(str);
    }

    @Override // g.atd
    public void e(Uri uri) {
        ((ContentInfo.Builder) this.n).setLinkUri(uri);
    }

    @Override // g.bsh
    public int f(View view) {
        return (view.getTop() - ((yx) view.getLayoutParams()).f20372c.top) - ((ViewGroup.MarginLayoutParams) ((yx) view.getLayoutParams())).topMargin;
    }

    @Override // g.fsz
    public boolean g(int i) {
        ka kaVar = (ka) this.n;
        cng f2 = kaVar.u.f(i);
        if (f2 == null || !(f2 instanceof bfr)) {
            return false;
        }
        fso.ae(kaVar.p, "", ((bfr) f2).f11469c, true);
        return true;
    }

    @Override // g.bsh
    public View h(int i) {
        return ((androidx.recyclerview.widget.b) this.n).eo(i);
    }

    @Override // g.btp
    public void i(x xVar) {
        ((dmr) ((aco) this.n).f9979b).f14436a.l(new eie(12, this));
    }

    @Override // g.bsh
    public int j() {
        androidx.recyclerview.widget.b bVar = (androidx.recyclerview.widget.b) this.n;
        return bVar.dn - bVar.er();
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        boolean z;
        boolean z2;
        int e2 = anpVar.e();
        dre dreVar = (dre) this.n;
        Context context = dreVar.aw;
        int e3 = anpVar.e();
        ActionBarContextView actionBarContextView = dreVar.am;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) dreVar.am.getLayoutParams();
            if (dreVar.am.isShown()) {
                if (dreVar.by == null) {
                    dreVar.by = new Rect();
                    dreVar.cb = new Rect();
                }
                Rect rect = dreVar.by;
                Rect rect2 = dreVar.cb;
                rect.set(anpVar.h(), anpVar.e(), anpVar.i(), anpVar.f());
                ViewGroup viewGroup = dreVar.bq;
                if (Build.VERSION.SDK_INT >= 29) {
                    boolean z3 = dnh.f14457a;
                    can.a(viewGroup, rect, rect2);
                } else {
                    if (!dnh.f14457a) {
                        dnh.f14457a = true;
                        try {
                            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                            dnh.f14458b = declaredMethod;
                            if (!declaredMethod.isAccessible()) {
                                dnh.f14458b.setAccessible(true);
                            }
                        } catch (NoSuchMethodException unused) {
                        }
                    }
                    Method method = dnh.f14458b;
                    if (method != null) {
                        try {
                            method.invoke(viewGroup, rect, rect2);
                        } catch (Exception unused2) {
                        }
                    }
                }
                int i = rect.top;
                int i2 = rect.left;
                int i3 = rect.right;
                anp u = goi.u(dreVar.bq);
                int h = u == null ? 0 : u.h();
                int i4 = u == null ? 0 : u.i();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                if (i <= 0 || dreVar.at != null) {
                    View view2 = dreVar.at;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i5 = marginLayoutParams2.height;
                        int i6 = marginLayoutParams.topMargin;
                        if (i5 != i6 || marginLayoutParams2.leftMargin != h || marginLayoutParams2.rightMargin != i4) {
                            marginLayoutParams2.height = i6;
                            marginLayoutParams2.leftMargin = h;
                            marginLayoutParams2.rightMargin = i4;
                            dreVar.at.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    dreVar.at = view3;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = h;
                    layoutParams.rightMargin = i4;
                    dreVar.bq.addView(dreVar.at, -1, layoutParams);
                }
                View view4 = dreVar.at;
                r9 = view4 != null;
                if (r9 && view4.getVisibility() != 0) {
                    View view5 = dreVar.at;
                    view5.setBackgroundColor((view5.getWindowSystemUiVisibility() & 8192) != 0 ? eyt.af(context, R.color.abc_decor_view_status_guard_light) : eyt.af(context, R.color.abc_decor_view_status_guard));
                }
                if (!dreVar.bv && r9) {
                    e3 = 0;
                }
                z = r9;
                r9 = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                r9 = false;
            }
            if (r9) {
                dreVar.am.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = dreVar.at;
        if (view6 != null) {
            view6.setVisibility(z ? 0 : 8);
        }
        return goi.t(view, e2 != e3 ? anpVar.g(anpVar.h(), e3, anpVar.i(), anpVar.f()) : anpVar);
    }

    @Override // g.bsh
    public int l() {
        return ((androidx.recyclerview.widget.b) this.n).fd();
    }

    @Override // g.bsh
    public int m(View view) {
        return view.getBottom() + ((yx) view.getLayoutParams()).f20372c.bottom + ((ViewGroup.MarginLayoutParams) ((yx) view.getLayoutParams())).bottomMargin;
    }

    @Override // g.btp
    public void o(int i) {
        ((dmr) ((aco) this.n).f9979b).l(i, false);
    }

    @Override // g.dad
    public void onCancel() {
        ((androidx.fragment.app.a) this.n).j();
    }

    @Override // g.lb
    public void onConnectionFailed(nk nkVar) {
        switch (this.f15811c) {
            case 23:
                ((dko) this.n).onConnectionFailed(nkVar);
                return;
            default:
                synchronized (((zzbat) this.n).f4682f) {
                    try {
                        zzbat zzbatVar = (zzbat) this.n;
                        zzbatVar.f4680d = null;
                        if (zzbatVar.f4677a != null) {
                            zzbatVar.f4677a = null;
                        }
                        zzbatVar.f4682f.notifyAll();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    @Override // g.caf
    public boolean r(ftn ftnVar) {
        esf esfVar = (esf) this.n;
        if (ftnVar == esfVar.p) {
            return false;
        }
        ((gyg) ftnVar).ax.getClass();
        esfVar.getClass();
        caf cafVar = esfVar.v;
        if (cafVar != null) {
            return cafVar.r(ftnVar);
        }
        return false;
    }

    @Override // g.fsz
    public void s(androidx.recyclerview.widget.p pVar, int i) {
    }

    @Override // g.atd
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.n).setExtras(bundle);
    }

    @Override // g.bez
    public void v(Object obj) {
        ProxyBillingActivityV2 proxyBillingActivityV2 = (ProxyBillingActivityV2) this.n;
        etm etmVar = (etm) obj;
        proxyBillingActivityV2.getClass();
        Intent data = etmVar.getData();
        int i = gbs.d(data, "ProxyBillingActivityV2").f15636a;
        ResultReceiver resultReceiver = proxyBillingActivityV2.f405d;
        if (resultReceiver != null) {
            resultReceiver.send(i, data == null ? null : data.getExtras());
        }
        if (etmVar.getResultCode() != -1 || i != 0) {
            etmVar.getResultCode();
        }
        proxyBillingActivityV2.finish();
    }

    @Override // g.caf
    public void x(ftn ftnVar, boolean z) {
        if (ftnVar instanceof gyg) {
            ((gyg) ftnVar).aw.aa().at(false);
        }
        caf cafVar = ((esf) this.n).v;
        if (cafVar != null) {
            cafVar.x(ftnVar, z);
        }
    }

    public Map y(cwx cwxVar) {
        int size;
        if (!cwxVar.bm()) {
            return Collections.EMPTY_MAP;
        }
        List ad = ((dwg) this.n).o.ad(cwxVar);
        if (ad.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        List c2 = cwxVar.c();
        if (!evh.m(c2) && (size = c2.size()) == ad.size()) {
            HashMap hashMap = new HashMap(size);
            for (int i = 0; i < size; i++) {
                cwx cwxVar2 = (cwx) c2.get(i);
                cwx cwxVar3 = (cwx) ad.get(i);
                if (cwxVar3.q() != null) {
                    cwxVar3 = new btl(cwxVar3.l(), Collections.EMPTY_LIST);
                }
                hashMap.put(cwxVar3, cwxVar2);
            }
            return hashMap;
        }
        return Collections.EMPTY_MAP;
    }

    public cwx z(cwx cwxVar, cwx cwxVar2, cwx cwxVar3) {
        by byVar = null;
        if (cwxVar3 == null || cwxVar2 == null) {
            return null;
        }
        Map map = Collections.EMPTY_MAP;
        cci w = ((dwg) this.n).w(cwxVar);
        if (w != null) {
            byVar = (by) w.l.k(acq.av);
            if (byVar == null) {
                HashMap hashMap = new HashMap();
                cwx cwxVar4 = w.ak.f20149d;
                hashMap.put(cwxVar4.l(), y(cwxVar4));
                w.bm(new jb(this, 3, hashMap));
                by byVar2 = new by(w.y, hashMap);
                w.m(byVar2);
                byVar = byVar2;
            }
        }
        if (byVar != null) {
            Map map2 = (Map) byVar.f12426b.get(cwxVar2.l());
            if (map2 == null) {
                map2 = map;
            }
            map = p(map, map2);
        }
        Map p = p(map, y(cwxVar));
        for (cwx bj = cwxVar.bj(); bj != null; bj = bj.bj()) {
            p = p(p, y(bj));
        }
        return ac(cwxVar3, p);
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    /* renamed from: zza */
    public void mo3zza() {
        switch (this.f15811c) {
            case 25:
                zzbno zzbnoVar = (zzbno) this.n;
                agd.e("Rejecting reference for JS Engine.");
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhq)).booleanValue()) {
                    zzbnoVar.zzh(new IllegalStateException("Unable to create JS engine reference."), "SdkJavascriptFactory.createNewReference.FailureCallback");
                    return;
                } else {
                    zzbnoVar.zzg();
                    return;
                }
            default:
                synchronized (((zzena) this.n)) {
                    ((zzena) this.n).f7267c = null;
                }
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        int i = this.f15811c;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        switch (this.f15811c) {
            case 27:
                ((zzcfk) obj).zzd("sendMessageToNativeJs", (Map) this.n);
                return;
            case 28:
                ((zzeag) this.n).f6729d.zzdo((zzfff) obj);
                return;
            default:
                zzdfj zzdfjVar = (zzdfj) obj;
                synchronized (((zzena) this.n)) {
                    ((zzena) this.n).f7267c = zzdfjVar;
                    zzdfjVar.zzk();
                }
                return;
        }
    }
}
