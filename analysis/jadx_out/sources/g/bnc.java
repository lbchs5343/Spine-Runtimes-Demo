package g;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class bnc {

    /* renamed from: a, reason: collision with root package name */
    public static volatile bnc f11861a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Context f11862b;

    public static bnc c() {
        if (f11861a == null) {
            Context context = eca.f15278c;
            bnc bncVar = new bnc();
            bncVar.f11862b = context;
            f11861a = bncVar;
        }
        return f11861a;
    }

    public final void d(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        try {
            eca.f15280e.ag();
            String ap = cro.ap(new File(afo.as(this.f11862b), "CrashLogJava"), "anr_" + String.valueOf(System.nanoTime()) + ".npth", jSONObject);
            jSONObject.put("upload_scene", "direct");
            boolean z = true;
            if (eg.y("https://apmplus.volces.com/apm/collect/crash", jSONObject.toString(), true).f13765e != 0) {
                z = false;
            }
            if (z && !TextUtils.isEmpty(ap)) {
                File file = new File(ap);
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Throwable unused) {
        }
    }
}
