package g;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes3.dex */
public abstract class cum {

    /* renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArraySet f13536a = new CopyOnWriteArraySet();

    /* renamed from: b, reason: collision with root package name */
    public static final Map f13537b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r2 = fys.class.getPackage();
        String name = r2 != null ? r2.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        linkedHashMap.put(fys.class.getName(), "okhttp.OkHttpClient");
        linkedHashMap.put(aby.class.getName(), "okhttp.Http2");
        linkedHashMap.put(amr.class.getName(), "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        int size = linkedHashMap.size();
        f13537b = size != 0 ? size != 1 ? new LinkedHashMap(linkedHashMap) : fhj.au(linkedHashMap) : dyq.f15095a;
    }
}
