package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.util.Log;
import com.bytedance.framwork.core.sdkmonitor.SDKMonitor;
import com.bytedance.framwork.core.sdkmonitor.SDKMonitorUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class pbln extends pblm {
    public SDKMonitor h;

    class pgla implements SDKMonitor.IGetExtendParams {
    }

    @Override // ms.bz.bd.c.Pgl.pblm
    public final void c(long j, long j2, String str, String str2, int i) {
        SDKMonitor sDKMonitor = this.h;
        if (sDKMonitor == null) {
            return;
        }
        sDKMonitor.monitorSLA(j, j2, str, (String) null, str2, i, (JSONObject) null);
    }

    @Override // ms.bz.bd.c.Pgl.pblm
    public final void d(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        pblk.a(16777217, 0, 0L, "440404", new byte[]{22, 58, 66, 82, 11, 34, 37, 48, 119, 97, 43, 34, 111, 79, 8, 14, 54, 27, 96, 99, 32, 36, 3, 83, 10, 49, 33, 28, 98, 97, 43, 55, 78, 69, 79, 110, 122, 88, 33});
        if (this.h == null) {
            return;
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put((String) pblk.a(16777217, 0, 0L, "e37e5b", new byte[]{103, 52, 86, 7, 3, 118, 99, 28, 103, 56, 113}), str);
            jSONObject4.put((String) pblk.a(16777217, 0, 0L, "27a3f8", new byte[]{32, 52, 6, 66, 94, 32, 35, 15}), jSONObject);
            jSONObject4.put((String) pblk.a(16777217, 0, 0L, "827549", new byte[]{36, 53, 80, 83, 2, 45}), jSONObject2);
            jSONObject4.put((String) pblk.a(16777217, 0, 0L, "3516b7", new byte[]{46, 56, 69, 103, 69, 52, 34}), jSONObject3);
            Log.e((String) pblk.a(16777217, 0, 0L, "47ebb7", new byte[]{8, 16, 34, 55, 110, 5, 20}), jSONObject4.toString());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (jSONObject.length() > 0 || jSONObject2.length() > 0) {
            this.h.monitorEvent(str, jSONObject, jSONObject2, jSONObject3);
        }
    }

    @Override // ms.bz.bd.c.Pgl.pblm
    public final boolean e(String str) {
        JSONObject jSONObject;
        ArrayList arrayList;
        ArrayList arrayList2;
        Context context = ms.bz.bd.c.Pgl.pgla.f21199a.f21200b;
        String str2 = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
            pblk.a(16777217, 0, 0L, "95f392", new byte[]{59, 50, 24});
            jSONObject = null;
        }
        if (jSONObject == null) {
            return false;
        }
        try {
            str2 = jSONObject.getString((String) pblk.a(16777217, 0, 0L, "22d50b", new byte[]{48, 52, 28, 126, 14, 124, 53}));
            jSONObject.getString((String) pblk.a(16777217, 0, 0L, "757192", new byte[]{46, 56, 87, 81, 57, 36, 61, 16}));
            arrayList = new ArrayList();
            arrayList2 = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray((String) pblk.a(16777217, 0, 0L, "8d15cf", new byte[]{42, 105, 76, 71, 85, 118, 14, 119, 76, 118}));
            JSONArray jSONArray2 = jSONObject.getJSONArray((String) pblk.a(16777217, 0, 0L, "507ea0", new byte[]{54, 55, 84, 30, 76, 51, 3, 35, 74, 38}));
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                arrayList2.add(jSONArray2.getString(i2));
            }
        } catch (JSONException unused2) {
            pblk.a(16777217, 0, 0L, "16b6a3", new byte[]{51, 49, 28, 125, 87});
        }
        if (arrayList.size() <= 0 || arrayList2.size() <= 0) {
            return false;
        }
        SDKMonitorUtils.setConfigUrl(str2, arrayList);
        SDKMonitorUtils.setDefaultReportUrl(str2, arrayList2);
        jSONObject.remove((String) pblk.a(16777217, 0, 0L, "cf0d8a", new byte[]{113, 107, 77, 22, 14, 113, 85, 117, 77, 39}));
        jSONObject.remove((String) pblk.a(16777217, 0, 0L, "83331c", new byte[]{59, 52, 80, 72, 28, 96, 14, 32, 78, 112}));
        SDKMonitorUtils.initMonitor(context, str2, jSONObject, new pgla());
        this.h = SDKMonitorUtils.getInstance(str2);
        return true;
    }

    @Override // ms.bz.bd.c.Pgl.pblm
    public final void f(long j, long j2, String str, String str2, int i) {
        SDKMonitor sDKMonitor = this.h;
        if (sDKMonitor == null) {
            return;
        }
        sDKMonitor.monitorApiError(j, j2, str, (String) null, str2, i, (JSONObject) null);
    }
}
