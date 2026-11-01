package g;

import android.util.JsonWriter;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class dzz {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f15157a;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f15160d;

    /* renamed from: e, reason: collision with root package name */
    public final List f15161e;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f15159c = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static final HashSet f15158b = new HashSet(Arrays.asList(new String[0]));

    public dzz() {
        this.f15161e = !g() ? new ArrayList() : Arrays.asList("network_request_".concat(String.valueOf(UUID.randomUUID().toString())));
    }

    public static void f(JsonWriter jsonWriter, Map map) {
        if (map == null) {
            return;
        }
        jsonWriter.name(TTDownloadField.TT_HEADERS).beginArray();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            if (!f15158b.contains(str)) {
                if (!(entry.getValue() instanceof List)) {
                    if (!(entry.getValue() instanceof String)) {
                        agd.d("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(abn.EXTRA_UA_APP_NAME).value(str);
                    jsonWriter.name("value").value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(abn.EXTRA_UA_APP_NAME).value(str);
                        jsonWriter.name("value").value(str2);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public static boolean g() {
        boolean z;
        synchronized (f15159c) {
            try {
                z = false;
                if (f15160d && f15157a) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public final void h(String str, fbf fbfVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(System.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = this.f15161e.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            fbfVar.b(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            agd.f("unable to log", e2);
        }
        String stringWriter2 = stringWriter.toString();
        synchronized (dzz.class) {
            try {
                agd.k("GMA Debug BEGIN");
                int i = 0;
                while (i < stringWriter2.length()) {
                    int i2 = i + TTAdConstant.INIT_LOCAL_FAIL_CODE;
                    agd.k("GMA Debug CONTENT ".concat(String.valueOf(stringWriter2.substring(i, Math.min(i2, stringWriter2.length())))));
                    i = i2;
                }
                agd.k("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (g()) {
            h("onNetworkRequest", new duw(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr, 12));
        }
    }

    public final void j(HttpURLConnection httpURLConnection, int i) {
        if (g()) {
            String str = null;
            h("onNetworkResponse", new gqc(i, httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), 16));
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    agd.b("Can not get error message from error HttpURLConnection\n".concat(String.valueOf(e2.getMessage())));
                }
                h("onNetworkRequestError", new aox(str));
            }
        }
    }
}
