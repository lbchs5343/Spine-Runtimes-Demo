package g;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final /* synthetic */ class cdi implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12688a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bfq f12689b;

    public /* synthetic */ cdi(bfq bfqVar, int i) {
        this.f12688a = i;
        this.f12689b = bfqVar;
    }

    private final Object c() {
        String byteArrayOutputStream;
        bfq bfqVar = this.f12689b;
        synchronized (bfqVar) {
            try {
                dpi dpiVar = (dpi) bfqVar.f11464d.get();
                ArrayList g2 = dpiVar.g();
                dpiVar.f();
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < g2.size(); i++) {
                    dpz dpzVar = (dpz) g2.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", dpzVar.f14619a);
                    jSONObject.put("dates", new JSONArray((Collection) dpzVar.f14620b));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return byteArrayOutputStream;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f12688a) {
            case 0:
                return c();
            default:
                bfq bfqVar = this.f12689b;
                synchronized (bfqVar) {
                    dpi dpiVar = (dpi) bfqVar.f11464d.get();
                    long currentTimeMillis = System.currentTimeMillis();
                    gbg gbgVar = (gbg) bfqVar.f11466f.get();
                    String str = gbgVar.f17860a;
                    fc fcVar = gbgVar.f17861b;
                    if (!fcVar.k().isEmpty()) {
                        str = str + ' ' + gbg.c(fcVar.k());
                    }
                    dpiVar.c(currentTimeMillis, str);
                }
                return null;
        }
    }
}
