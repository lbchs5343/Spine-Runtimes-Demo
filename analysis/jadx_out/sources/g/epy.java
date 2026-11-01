package g;

import android.app.Application;
import android.content.Context;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class epy {

    /* renamed from: a, reason: collision with root package name */
    public long f15954a;

    /* renamed from: b, reason: collision with root package name */
    public String f15955b;

    /* renamed from: c, reason: collision with root package name */
    public String f15956c;

    /* renamed from: d, reason: collision with root package name */
    public long f15957d;

    /* renamed from: f, reason: collision with root package name */
    public long f15959f;
    public final Application h;
    public long j;
    public String k;
    public String l;
    public final Context m;
    public long n;
    public String q;
    public final ArrayList p = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f15958e = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f15960g = new ArrayList();
    public final ArrayList i = new ArrayList();
    public int o = 0;
    public boolean r = false;

    public epy(Context context) {
        eoa eoaVar = new eoa(0, this);
        this.m = context;
        if (context instanceof Application) {
            this.h = (Application) context;
        }
        Application application = this.h;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(eoaVar);
        }
    }

    public static JSONObject s(long j, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(abn.EXTRA_UA_APP_NAME, str);
            jSONObject.put("time", j);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }
}
