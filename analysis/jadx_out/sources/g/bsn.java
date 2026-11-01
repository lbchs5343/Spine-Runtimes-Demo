package g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.google.android.gms.internal.ads.zzbcn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bsn {

    /* renamed from: a, reason: collision with root package name */
    public final akx f12128a;

    /* renamed from: c, reason: collision with root package name */
    public final Context f12130c;

    /* renamed from: e, reason: collision with root package name */
    public final ApplicationInfo f12132e;

    /* renamed from: f, reason: collision with root package name */
    public final List f12133f;

    /* renamed from: b, reason: collision with root package name */
    public final JSONObject f12129b = new JSONObject();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f12131d = new AtomicBoolean(false);

    public bsn(Context context, List list, akx akxVar) {
        this.f12130c = context;
        this.f12132e = context.getApplicationInfo();
        this.f12133f = list;
        this.f12128a = akxVar;
    }

    public final JSONObject g() {
        if (!this.f12131d.get()) {
            h();
        }
        return this.f12129b;
    }

    public final void h() {
        if (this.f12131d.getAndSet(true)) {
            return;
        }
        PackageInfo packageInfo = null;
        ApplicationInfo applicationInfo = this.f12132e;
        if (applicationInfo != null) {
            try {
                packageInfo = chk.c(this.f12130c).c(0, applicationInfo.packageName);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        JSONObject jSONObject = this.f12129b;
        if (packageInfo != null) {
            try {
                jSONObject.put("vc", packageInfo.versionCode);
                jSONObject.put("vnm", packageInfo.versionName);
            } catch (JSONException e2) {
                ti.f20033a.f20034ab.zzw(e2, "PawAppSignalGenerator.initialize");
                return;
            }
        }
        if (applicationInfo != null) {
            jSONObject.put("pn", applicationInfo.packageName);
        }
        List list = this.f12133f;
        ArrayList arrayList = new ArrayList();
        for (String str : ((String) edt.f15376a.f15379d.zza(zzbcn.zzjs)).split(",", -1)) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        jSONObject.put("eid", arrayList);
        jSONObject.put("js", this.f12128a.afmaVersion);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null) {
                jSONObject.put(next, Base64.encodeToString(obj.toString().getBytes(), 2));
            }
        }
    }
}
