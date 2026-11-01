package g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import androidx.profileinstaller.ProfileInstallReceiver;
import cn.trinea.android.developertools.R;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzbat;
import com.google.android.gms.internal.ads.zzbaw;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbmp;
import com.google.android.gms.internal.ads.zzbno;
import com.google.android.gms.internal.ads.zzcas;
import com.google.android.gms.internal.ads.zzcsy;
import com.google.android.gms.internal.ads.zzdit;
import com.google.android.gms.internal.ads.zzdnk;
import com.google.android.gms.internal.ads.zzgee;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.zip.ZipInputStream;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class eie implements ebz, bwb, bmm, gtx, bol, alj, btp, bsh, dbp, bdg, bjb, zzcas, zzgee, zzbfm {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15584e;

    /* renamed from: g, reason: collision with root package name */
    public final Object f15585g;

    public /* synthetic */ eie(int i, Object obj) {
        this.f15584e = i;
        this.f15585g = obj;
    }

    public eie(fnq fnqVar, bli bliVar) {
        this.f15584e = 0;
        this.f15585g = fnqVar;
    }

    public eie(hed hedVar) {
        this.f15584e = 19;
        List<vm> list = hedVar.at;
        this.f15585g = new LinkedHashMap(list.size());
        for (vm vmVar : list) {
            ((LinkedHashMap) this.f15585g).put(vmVar, new bfz(vmVar));
        }
    }

    private final void a() {
    }

    private final void z() {
    }

    @Override // g.dbp
    public String[] ab() {
        return ((WebViewProviderFactoryBoundaryInterface) this.f15585g).getSupportedFeatures();
    }

    @Override // g.bmm
    public void ad(czh czhVar, anx anxVar) {
        aux auxVar = (aux) this.f15585g;
        if (anxVar.f10539a.p()) {
            auxVar.complete(anxVar.f10540b);
        } else {
            auxVar.completeExceptionally(new hbk(anxVar));
        }
    }

    @Override // g.gtx
    public Object ao() {
        Constructor constructor = (Constructor) this.f15585g;
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e2) {
            eyt eytVar = cpe.f13267a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.11.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException("Failed to invoke constructor '" + cpe.f(constructor) + "' with no args", e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException("Failed to invoke constructor '" + cpe.f(constructor) + "' with no args", e4.getCause());
        }
    }

    @Override // g.alj
    public void b() {
        float f2;
        float f3;
        switch (this.f15584e) {
            case 11:
                if (((ka) this.f15585g).f19527g) {
                    ((ka) this.f15585g).f19526f.setVisibility(0);
                    ((ka) this.f15585g).f19524d.setVisibility(0);
                    ((ka) this.f15585g).q.setVisibility(8);
                    ((ka) this.f15585g).h.setVisibility(0);
                    ((ka) this.f15585g).k.setVisibility(8);
                    dbv dbvVar = ((ka) this.f15585g).u;
                    if (dbvVar != null && acw.bo(dbvVar.f13943c) > 0) {
                        ((ka) this.f15585g).j.setVisibility(0);
                    }
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) ((ka) this.f15585g).n.getLayoutParams();
                    if (layoutParams != null) {
                        int[] ag = fso.ag(((ka) this.f15585g).p);
                        int i = ag[0];
                        if (i < ag[1]) {
                            f2 = i;
                            f3 = 0.7f;
                        } else {
                            f2 = i;
                            f3 = 0.5f;
                        }
                        layoutParams.width = (int) (f2 * f3);
                        ka kaVar = (ka) this.f15585g;
                        kaVar.i.updateViewLayout(kaVar.n, layoutParams);
                        break;
                    }
                }
                break;
            default:
                if (((fri) this.f15585g).f17289f) {
                    ((fri) this.f15585g).f17286c.setVisibility(0);
                    ((fri) this.f15585g).f17285b.setVisibility(8);
                    ((fri) this.f15585g).k.setVisibility(0);
                    ((fri) this.f15585g).f17287d.setVisibility(8);
                    WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) ((fri) this.f15585g).i.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.width = fso.ao(((fri) this.f15585g).j, r1.h);
                        fri friVar = (fri) this.f15585g;
                        friVar.l.updateViewLayout(friVar.i, layoutParams2);
                        break;
                    }
                }
                break;
        }
    }

    @Override // g.alj
    public void c() {
        switch (this.f15584e) {
            case 11:
                if (((ka) this.f15585g).f19527g) {
                    ((ka) this.f15585g).f19526f.setVisibility(8);
                    ((ka) this.f15585g).f19524d.setVisibility(8);
                    ((ka) this.f15585g).q.setVisibility(8);
                    ((ka) this.f15585g).h.setVisibility(8);
                    ((ka) this.f15585g).k.setVisibility(0);
                    ((ka) this.f15585g).j.setVisibility(8);
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) ((ka) this.f15585g).n.getLayoutParams();
                    if (layoutParams != null) {
                        layoutParams.width = fso.ao(((ka) this.f15585g).p, 76.0f);
                        ka kaVar = (ka) this.f15585g;
                        kaVar.i.updateViewLayout(kaVar.n, layoutParams);
                        break;
                    }
                }
                break;
            default:
                if (((fri) this.f15585g).f17289f) {
                    ((fri) this.f15585g).f17286c.setVisibility(8);
                    ((fri) this.f15585g).f17285b.setVisibility(8);
                    ((fri) this.f15585g).k.setVisibility(8);
                    ((fri) this.f15585g).f17287d.setVisibility(0);
                    WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) ((fri) this.f15585g).i.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.width = fso.ao(((fri) this.f15585g).j, 76.0f);
                        fri friVar = (fri) this.f15585g;
                        friVar.l.updateViewLayout(friVar.i, layoutParams2);
                        break;
                    }
                }
                break;
        }
    }

    @Override // g.dbp
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewProviderBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f15585g).createWebView(webView));
    }

    @Override // g.bwb
    public void d(ArrayList arrayList) {
        Collections.reverse(arrayList);
        ((ajr) this.f15585g).f10335a = arrayList;
    }

    @Override // g.ebz
    public void dq(Bitmap bitmap) {
        Context context;
        float f2;
        Context context2;
        float f3;
        int i;
        Context context3;
        float f4;
        float f5;
        fde fdeVar = (fde) this.f15585g;
        if (bitmap == null) {
            return;
        }
        context = fdeVar.s;
        f2 = fdeVar.nt;
        Bitmap c2 = dxo.c(context, bitmap, (int) f2);
        if (c2 != null) {
            dxo.d(new efr(this, 1, c2));
        }
        if (!fdeVar.ox) {
            f5 = fdeVar.tv;
            if (f5 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                return;
            }
        }
        context2 = fdeVar.s;
        f3 = fdeVar.tv;
        if (f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f4 = fdeVar.tv;
            i = (int) f4;
        } else {
            i = 10;
        }
        Bitmap c3 = dxo.c(context2, bitmap, i);
        if (c3 != null) {
            context3 = fdeVar.s;
            dxo.d(new efr(this, 2, new BitmapDrawable(context3.getResources(), c3)));
        }
    }

    @Override // g.bsh
    public int f(View view) {
        return (view.getLeft() - ((yx) view.getLayoutParams()).f20372c.left) - ((ViewGroup.MarginLayoutParams) ((yx) view.getLayoutParams())).leftMargin;
    }

    @Override // g.fcc
    public Object get() {
        switch (this.f15584e) {
            case 8:
                String packageName = ((Context) ((fcc) this.f15585g).get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
            default:
                return this.f15585g;
        }
    }

    @Override // g.dbp
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(StaticsBoundaryInterface.class, ((WebViewProviderFactoryBoundaryInterface) this.f15585g).getStatics());
    }

    @Override // g.bsh
    public View h(int i) {
        return ((androidx.recyclerview.widget.b) this.f15585g).eo(i);
    }

    @Override // g.btp
    public void i(x xVar) {
        dmr.k((dmr) ((aco) ((emr) this.f15585g).n).f9979b, false);
    }

    @Override // g.bsh
    public int j() {
        androidx.recyclerview.widget.b bVar = (androidx.recyclerview.widget.b) this.f15585g;
        return bVar.f0do - bVar.fj();
    }

    public eqm k(File file) {
        fdy fdyVar = (fdy) this.f15585g;
        try {
            fwt fwtVar = new fwt(file, fdyVar);
            blx x = x(file, fwtVar);
            if (x != fwtVar) {
                fwtVar.close();
            }
            return x.a();
        } catch (Exception e2) {
            if (!((Set) fdyVar.f16632a).contains(evu.DONT_USE_FALLBACK)) {
                return new fzz(file, fdyVar).a();
            }
            throw new IOException("Failed to open zip: " + file, e2);
        }
    }

    @Override // g.bsh
    public int l() {
        return ((androidx.recyclerview.widget.b) this.f15585g).eq();
    }

    @Override // g.bsh
    public int m(View view) {
        return view.getRight() + ((yx) view.getLayoutParams()).f20372c.right + ((ViewGroup.MarginLayoutParams) ((yx) view.getLayoutParams())).rightMargin;
    }

    public void n(String str, JSONArray jSONArray) {
        fzc fzcVar = new fzc();
        fzcVar.f17690c = 1;
        akg akgVar = (akg) this.f15585g;
        fzcVar.f17689b = akgVar;
        if (jSONArray != null && jSONArray.length() > 0) {
            akgVar.g(fzcVar, jSONArray);
        }
        if (akgVar.tl != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("lottieEvent", true);
                jSONObject.put("uttieUrl", akgVar.af);
                if (TextUtils.equals("CSJCLOSE", str)) {
                    jSONObject.put("type", ILivePush.ClickType.CLOSE);
                } else if (TextUtils.equals("clickEvent", str)) {
                    jSONObject.put("type", "clickEvent");
                }
                fzcVar.f17691d = jSONObject;
                akgVar.tl.dq(fzcVar, akgVar, akgVar);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // g.btp
    public void o(int i) {
        aco acoVar = (aco) ((emr) this.f15585g).n;
        ((dmr) acoVar.f9979b).l(i, false);
        elf elfVar = ((dmr) acoVar.f9979b).f14439d;
        int i2 = cdy.f12715a;
        if (i == 1201 || i == 1202 || i == 1991) {
            HashSet hashSet = efc.f15420a;
            if (elfVar.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("pa", false)) {
                elf elfVar2 = ((dmr) acoVar.f9979b).f14440e;
                elfVar2.runOnUiThread(new hdo(elfVar2, i, new get(8, this), 6));
            }
        }
    }

    @Override // g.bjb
    public void onConnected(Bundle bundle) {
        switch (this.f15584e) {
            case 23:
                ((fwr) this.f15585g).j();
                return;
            default:
                synchronized (((zzbat) this.f15585g).f4682f) {
                    try {
                        zzbat zzbatVar = (zzbat) this.f15585g;
                        zzbaw zzbawVar = zzbatVar.f4677a;
                        if (zzbawVar != null) {
                            zzbatVar.f4680d = zzbawVar.zzq();
                        }
                    } catch (DeadObjectException e2) {
                        agd.f("Unable to obtain a cache service instance.", e2);
                        zzbat.g((zzbat) this.f15585g);
                    }
                    ((zzbat) this.f15585g).f4682f.notifyAll();
                }
                return;
        }
    }

    @Override // g.bjb
    public void onConnectionSuspended(int i) {
        switch (this.f15584e) {
            case 23:
                ((fwr) this.f15585g).onConnectionSuspended(i);
                return;
            default:
                synchronized (((zzbat) this.f15585g).f4682f) {
                    zzbat zzbatVar = (zzbat) this.f15585g;
                    zzbatVar.f4680d = null;
                    zzbatVar.f4682f.notifyAll();
                }
                return;
        }
    }

    @Override // g.alj
    public void onDestroy() {
        int i = this.f15584e;
    }

    public cwx p(gsh gshVar) {
        gshVar.getClass();
        return gshVar instanceof gks ? q(((gks) gshVar).f18326a).f11492f : gshVar.j();
    }

    public bfz q(vm vmVar) {
        bfz bfzVar = (bfz) ((LinkedHashMap) this.f15585g).get(vmVar);
        if (bfzVar != null) {
            return bfzVar;
        }
        throw new gck("TypeSearchVarInfo not found in map for var: " + vmVar);
    }

    public void r(int i, Object obj) {
        String str;
        switch (i) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i == 6 || i == 7 || i == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        }
        ((ProfileInstallReceiver) this.f15585g).setResultCode(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [g.caa] */
    /* JADX WARN: Type inference failed for: r4v6, types: [g.caa] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v5, types: [g.caa] */
    /* JADX WARN: Type inference failed for: r6v6, types: [g.caa] */
    /* JADX WARN: Type inference failed for: r6v9, types: [g.caa] */
    public caa s(Context context, String str, InputStream inputStream, String str2, String str3) {
        ?? r6;
        cgh cghVar;
        fnq fnqVar = (fnq) this.f15585g;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            ckf ckfVar = hbp.f19183a;
            cgh cghVar2 = cgh.ZIP;
            try {
                if (str3 != null) {
                    ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(fnqVar.k(str, inputStream, cghVar2)));
                    try {
                        ?? h = ahz.h(context, zipInputStream, str);
                        cqw cqwVar = ebx.f15269c;
                        try {
                            zipInputStream.close();
                            context = h;
                        } catch (RuntimeException e2) {
                            throw e2;
                        }
                    } catch (Throwable th) {
                        cqw cqwVar2 = ebx.f15269c;
                        try {
                            zipInputStream.close();
                        } catch (RuntimeException e3) {
                            throw e3;
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                } else {
                    ZipInputStream zipInputStream2 = new ZipInputStream(inputStream);
                    try {
                        ?? h2 = ahz.h(context, zipInputStream2, null);
                        cqw cqwVar3 = ebx.f15269c;
                        try {
                            zipInputStream2.close();
                            context = h2;
                        } catch (RuntimeException e4) {
                            throw e4;
                        }
                    } catch (Throwable th2) {
                        cqw cqwVar4 = ebx.f15269c;
                        try {
                            zipInputStream2.close();
                        } catch (RuntimeException e5) {
                            throw e5;
                        } catch (Exception unused2) {
                        }
                        throw th2;
                    }
                }
            } catch (Exception unused3) {
            }
            r6 = context;
            cghVar = cghVar2;
        } else {
            ckf ckfVar2 = hbp.f19183a;
            cghVar = cgh.JSON;
            r6 = str3 != null ? ahz.i(new FileInputStream(fnqVar.k(str, inputStream, cghVar).getAbsolutePath()), str) : ahz.i(inputStream, null);
        }
        if (str3 != null && r6.f12534a != null) {
            File file = new File(fnqVar.n(), fnq.j(str, cghVar, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean renameTo = file.renameTo(file2);
            file2.toString();
            if (!renameTo) {
                hbp.b("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return r6;
    }

    public void t(ejd ejdVar) {
        btp btpVar = (btp) this.f15585g;
        if (btpVar != null) {
            btpVar.i(null);
        }
    }

    public void u(long j, long j2, String str) {
        b.b.b bVar = (b.b.b) this.f15585g;
        String string = bVar.getString(R.string.decompile_loading_progress, Long.valueOf(j2 > 0 ? (j * 100) / j2 : 0L));
        String o = b.b.b.o(bVar, str);
        if (!o.isEmpty() && !o.equals(bVar.getString(R.string.decompile_source)) && !o.equals(bVar.getString(R.string.decompile_resource))) {
            string = awf.i(string, "\n", o);
        }
        eqi eqiVar = bVar.ah;
        eqiVar.sendMessage(eqiVar.obtainMessage(5, string));
    }

    public void v() {
        btp btpVar = (btp) this.f15585g;
        if (btpVar != null) {
            btpVar.o(1991);
        }
    }

    @Override // g.bmm
    public void w(czh czhVar, Throwable th) {
        ((aux) this.f15585g).completeExceptionally(th);
    }

    public blx x(File file, fwt fwtVar) {
        fdy fdyVar = (fdy) this.f15585g;
        Set set = (Set) fdyVar.f16632a;
        if (file.getName().endsWith(".apk") || set.contains(evu.DONT_USE_FALLBACK)) {
            return fwtVar;
        }
        try {
            fwtVar.p();
            int v = fwtVar.v();
            ByteBuffer byteBuffer = fwtVar.k;
            byteBuffer.position(v + 4);
            if ((byteBuffer.getShort() & 65535) != 65535) {
                return set.contains(evu.FALLBACK_AS_DEFAULT) ? new fzz(file, fdyVar) : fwtVar;
            }
        } catch (Exception e2) {
            fwt.f17536b.t(fwtVar.j, "Jadx parser can't open zip file: {}", e2);
        }
        return new fzz(file, fdyVar);
    }

    public void y(View view) {
        if (view.getParent() != null) {
            view.setVisibility(8);
        }
        ((cle) this.f15585g).ak(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    public /* bridge */ /* synthetic */ void zza(Object obj) {
        agd.e("Getting a new session for JS Engine.");
        ((zzbno) this.f15585g).zzi(((zzbmp) obj).zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        ((zzcsy) this.f15585g).h.zzl(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public JSONObject zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        ((zzcsy) this.f15585g).h.zzl(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public void zzc() {
        zzdit zzditVar = ((zzdnk) this.f15585g).f6244b;
        if (zzditVar != null) {
            zzditVar.zzF("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfm
    public void zzd(MotionEvent motionEvent) {
    }
}
