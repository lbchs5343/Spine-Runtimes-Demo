package com.bytedance.sdk.component.ia.d.d.d;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ia.d.dq.dq.ox;
import com.bytedance.sdk.component.ia.d.dq.dq.p;
import com.bytedance.sdk.component.ia.dq.kk;
import com.bytedance.sdk.component.ia.dq.mn;
import com.bytedance.sdk.component.ia.dq.s;
import g.awf;
import g.tn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private Context f1892d;
    private String dq;
    private s ox;
    private kk p;

    public dq(String str) {
        this.dq = str;
        mn ox = com.bytedance.sdk.component.ia.d.dq.ox(str);
        this.ox = ox.s();
        this.p = ox.iw();
    }

    private s d() {
        if (this.ox == null) {
            this.ox = com.bytedance.sdk.component.ia.d.dq.ox(this.dq).s();
        }
        return this.ox;
    }

    public static void d(s sVar) {
        if (sVar == null) {
            return;
        }
        try {
            ContentResolver ox = ox(sVar);
            if (ox != null) {
                ox.getType(Uri.parse(p(sVar) + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void dq(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar == null) {
            return;
        }
        try {
            ContentResolver ox = ox(sVar);
            if (ox != null) {
                ox.getType(Uri.parse(p(sVar) + "adLogDispatch?event=" + ox.dq(dVar.iw())));
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("dispatch event Throwable:" + th.toString(), sVar);
        }
    }

    public static void dq(s sVar) {
        if (sVar == null) {
            return;
        }
        try {
            ContentResolver ox = ox(sVar);
            if (ox != null) {
                ox.getType(Uri.parse(p(sVar) + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void dq(String str, s sVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver ox = ox(sVar);
            if (ox != null) {
                ox.getType(Uri.parse(p(sVar) + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void dq(String str, List<String> list, boolean z, s sVar, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || list == null || list.isEmpty()) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(ox.dq(it.next()));
                sb.append(",");
            }
            String dq = ox.dq(sb.toString());
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(dq) + "&replace=" + String.valueOf(z) + "&extraMate=" + ox.dq(jSONObject.toString());
            ContentResolver ox = ox(sVar);
            if (ox != null) {
                ox.getType(Uri.parse(p(sVar) + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    private static ContentResolver ox(s sVar) {
        try {
            if (sVar.getContext() != null) {
                return sVar.getContext().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private kk ox() {
        if (this.p == null) {
            this.p = com.bytedance.sdk.component.ia.d.dq.ox(this.dq).iw();
        }
        return this.p;
    }

    private static String p(s sVar) {
        return awf.ad(tn.l(p.dq(sVar), "/"), "csj_mediation".equals(sVar.s()) ? "gromore_ad_log_event" : "ad_log_event", "/");
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String dq() {
        return "csj_mediation".equals(this.dq) ? "gromore_ad_log_event" : "ad_log_event";
    }

    public void dq(Context context) {
        this.f1892d = context;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x004b, code lost:
    
        if (r2.equals("adLogStop") == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getType(Uri uri) {
        JSONObject jSONObject;
        d();
        kk ox = ox();
        if (ox == null) {
            com.bytedance.sdk.component.ia.d.ox.ox.p("getType center is null", d());
            return null;
        }
        char c2 = 2;
        String str = uri.getPath().split("/")[2];
        str.getClass();
        switch (str.hashCode()) {
            case -482705237:
                if (str.equals("trackAdFailed")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -171493183:
                if (str.equals("adLogStart")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 964299715:
                break;
            case 1025736635:
                if (str.equals("adLogDispatch")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1131732929:
                if (str.equals("trackAdUrl")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                com.bytedance.sdk.component.ia.d.iw.dq.dq(d()).dq(uri.getQueryParameter("did"));
                break;
            case 1:
                d();
                ox.dq();
                break;
            case 2:
                d();
                ox.d();
                break;
            case 3:
                d();
                com.bytedance.sdk.component.ia.dq.d p = com.bytedance.sdk.component.ia.d.p.dq.dq.p(ox.d(uri.getQueryParameter("event")));
                if (p != null) {
                    ox.dq(p);
                    break;
                }
                break;
            case 4:
                try {
                    String queryParameter = uri.getQueryParameter("did");
                    boolean booleanValue = Boolean.valueOf(uri.getQueryParameter("replace")).booleanValue();
                    String queryParameter2 = uri.getQueryParameter("track");
                    try {
                        jSONObject = new JSONObject(ox.d(uri.getQueryParameter("extraMate")));
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    String[] split = ox.d(queryParameter2).split(",");
                    if (split.length > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : split) {
                            String d2 = ox.d(str2);
                            if (!TextUtils.isEmpty(d2)) {
                                arrayList.add(d2);
                            }
                        }
                        com.bytedance.sdk.component.ia.d.iw.dq.dq(d()).dq(queryParameter, arrayList, booleanValue, null, jSONObject);
                        break;
                    }
                } catch (Throwable unused2) {
                    break;
                }
                break;
        }
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
