package g;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzavc;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbes;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzffs;
import com.google.android.gms.internal.ads.zzflr;
import com.google.android.gms.internal.ads.zzges;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ad {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f10024a = zzcaj.zze;

    /* renamed from: b, reason: collision with root package name */
    public final bsn f10025b;

    /* renamed from: c, reason: collision with root package name */
    public final zzffs f10026c;

    /* renamed from: d, reason: collision with root package name */
    public final ju f10027d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10028e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f10029f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdsr f10030g;
    public final zzflr h;
    public final WebView i;
    public final sq j;
    public final zzavc k;
    public final boolean l;

    public ad(WebView webView, zzavc zzavcVar, zzdsr zzdsrVar, zzflr zzflrVar, zzffs zzffsVar, sq sqVar, bsn bsnVar, ju juVar) {
        this.i = webView;
        Context context = webView.getContext();
        this.f10029f = context;
        this.k = zzavcVar;
        this.f10030g = zzdsrVar;
        zzbcn.zza(context);
        zzbce zzbceVar = zzbcn.zzjh;
        edt edtVar = edt.f15376a;
        this.f10028e = ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue();
        this.l = ((Boolean) edtVar.f15379d.zza(zzbcn.zzji)).booleanValue();
        this.h = zzflrVar;
        this.f10026c = zzffsVar;
        this.j = sqVar;
        this.f10025b = bsnVar;
        this.f10027d = juVar;
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getClickSignals(String str) {
        try {
            ti tiVar = ti.f20033a;
            tiVar.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            String zzd = this.k.zzc().zzd(this.f10029f, str, this.i);
            if (!this.l) {
                return zzd;
            }
            tiVar.v.getClass();
            dzm.z(this.f10030g, "csg", new Pair("clat", String.valueOf(System.currentTimeMillis() - currentTimeMillis)));
            return zzd;
        } catch (RuntimeException e2) {
            agd.f("Exception getting click signals. ", e2);
            ti.f20033a.f20034ab.zzw(e2, "TaggingLibraryJsInterface.getClickSignals");
            return "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getClickSignalsWithTimeout(String str, int i) {
        if (i <= 0) {
            agd.d("Invalid timeout for getting click signals. Timeout=" + i);
            return "";
        }
        try {
            return (String) zzcaj.zza.zzb(new fal(2, this, str, false)).get(Math.min(i, this.f10028e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            agd.f("Exception getting click signals with timeout. ", e2);
            ti.f20033a.f20034ab.zzw(e2, "TaggingLibraryJsInterface.getClickSignalsWithTimeout");
            return e2 instanceof TimeoutException ? "17" : "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getQueryInfo() {
        esy esyVar = ti.f20033a.z;
        String uuid = UUID.randomUUID().toString();
        Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        dm dmVar = new dm(this, uuid, 1);
        if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
            this.j.i(this.i, dmVar);
            return uuid;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjk)).booleanValue()) {
            this.f10024a.execute(new eax(this, bundle, dmVar, 7, false));
            return uuid;
        }
        bme bmeVar = bme.BANNER;
        dcq dcqVar = new dcq(3);
        dcqVar.h(bundle);
        emr.t(this.f10029f, bmeVar, new awn(dcqVar), dmVar);
        return uuid;
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getViewSignals() {
        try {
            ti tiVar = ti.f20033a;
            tiVar.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            String zzh = this.k.zzc().zzh(this.f10029f, this.i, null);
            if (!this.l) {
                return zzh;
            }
            tiVar.v.getClass();
            dzm.z(this.f10030g, "vsg", new Pair("vlat", String.valueOf(System.currentTimeMillis() - currentTimeMillis)));
            return zzh;
        } catch (RuntimeException e2) {
            agd.f("Exception getting view signals. ", e2);
            ti.f20033a.f20034ab.zzw(e2, "TaggingLibraryJsInterface.getViewSignals");
            return "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getViewSignalsWithTimeout(int i) {
        if (i <= 0) {
            agd.d("Invalid timeout for getting view signals. Timeout=" + i);
            return "";
        }
        try {
            return (String) zzcaj.zza.zzb(new gzm(3, this)).get(Math.min(i, this.f10028e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            agd.f("Exception getting view signals with timeout. ", e2);
            ti.f20033a.f20034ab.zzw(e2, "TaggingLibraryJsInterface.getViewSignalsWithTimeout");
            return e2 instanceof TimeoutException ? "17" : "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public void recordClick(String str) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjm)).booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        zzcaj.zza.execute(new efr(21, this, str, false));
    }

    @JavascriptInterface
    @TargetApi(21)
    public void reportTouchEvent(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("x");
            int i2 = jSONObject.getInt("y");
            int i3 = jSONObject.getInt("duration_ms");
            float f2 = (float) jSONObject.getDouble(TTDownloadField.TT_FORCE);
            int i4 = jSONObject.getInt("type");
            try {
                this.k.zzd(MotionEvent.obtain(0L, i3, i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? -1 : 3 : 2 : 1 : 0, i, i2, f2, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            } catch (RuntimeException e2) {
                e = e2;
                agd.f("Failed to parse the touch string. ", e);
                ti.f20033a.f20034ab.zzw(e, "TaggingLibraryJsInterface.reportTouchEvent");
            } catch (JSONException e3) {
                e = e3;
                agd.f("Failed to parse the touch string. ", e);
                ti.f20033a.f20034ab.zzw(e, "TaggingLibraryJsInterface.reportTouchEvent");
            }
        } catch (RuntimeException | JSONException e4) {
            e = e4;
        }
    }
}
