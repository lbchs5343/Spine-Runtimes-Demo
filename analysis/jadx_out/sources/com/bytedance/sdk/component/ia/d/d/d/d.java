package com.bytedance.sdk.component.ia.d.d.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ia.d.dq.dq.p;
import com.bytedance.sdk.component.ia.d.ox;
import com.bytedance.sdk.component.ia.dq.kk;
import com.bytedance.sdk.component.ia.dq.s;
import g.awf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    public static ox dq;

    /* renamed from: d, reason: collision with root package name */
    private String f1891d;
    private s ox;
    private kk p;

    private kk d() {
        if (this.p == null) {
            this.p = com.bytedance.sdk.component.ia.d.dq.ox(this.f1891d).iw();
        }
        return this.p;
    }

    public static void d(s sVar) {
        if (sVar == null) {
            return;
        }
        try {
            ox dq2 = dq(sVar);
            if (dq2 != null) {
                dq2.getType(Uri.parse(p(sVar) + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static ox dq(s sVar) {
        try {
            if (dq == null) {
                dq = sVar.p().no();
            }
        } catch (Exception unused) {
        }
        return dq;
    }

    private s dq() {
        if (this.ox == null) {
            this.ox = com.bytedance.sdk.component.ia.d.dq.ox(this.f1891d).s();
        }
        return this.ox;
    }

    public static void dq(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar == null || sVar == null) {
            return;
        }
        try {
            ox dq2 = dq(sVar);
            if (dq2 != null) {
                dq2.getType(Uri.parse(p(sVar) + "adLogDispatch?event=" + com.bytedance.sdk.component.ia.d.dq.dq.ox.dq(dVar.iw())));
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.ia.d.ox.ox.ox("dispatch event Throwable:" + th.toString(), sVar);
        }
    }

    public static void dq(String str, s sVar) {
        if (TextUtils.isEmpty(str) || sVar == null) {
            return;
        }
        try {
            ox dq2 = dq(sVar);
            if (dq2 != null) {
                dq2.getType(Uri.parse(p(sVar) + "trackAdFailed?did=" + String.valueOf(str)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void dq(String str, List<String> list, boolean z, s sVar) {
        if (list == null || list.isEmpty() || sVar == null) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(com.bytedance.sdk.component.ia.d.dq.dq.ox.dq(it.next()));
                sb.append(",");
            }
            String str2 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(com.bytedance.sdk.component.ia.d.dq.dq.ox.dq(sb.toString())) + "&replace=" + String.valueOf(z);
            ox dq2 = dq(sVar);
            if (dq2 != null) {
                dq2.getType(Uri.parse(p(sVar) + "trackAdUrl" + str2));
            }
        } catch (Throwable unused) {
        }
    }

    public static void ox(s sVar) {
        if (sVar == null) {
            return;
        }
        try {
            ox dq2 = dq(sVar);
            if (dq2 != null) {
                dq2.getType(Uri.parse(p(sVar) + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    private static String p(s sVar) {
        return awf.c(p.dq(sVar), "/ad_log_event/");
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0042, code lost:
    
        if (r2.equals("adLogStop") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getType(Uri uri) {
        com.bytedance.sdk.component.ia.dq.d p;
        dq();
        kk d2 = d();
        if (d2 == null) {
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
                com.bytedance.sdk.component.ia.d.iw.dq.dq(dq()).dq(uri.getQueryParameter("did"));
                break;
            case 1:
                dq();
                d2.dq();
                break;
            case 2:
                dq();
                d2.d();
                break;
            case 3:
                dq();
                String queryParameter = uri.getQueryParameter("event");
                if (!TextUtils.isEmpty(queryParameter) && (p = com.bytedance.sdk.component.ia.d.p.dq.dq.p(com.bytedance.sdk.component.ia.d.dq.dq.ox.d(queryParameter))) != null) {
                    d().dq(p);
                    break;
                }
                break;
            case 4:
                dq();
                try {
                    String queryParameter2 = uri.getQueryParameter("did");
                    boolean booleanValue = Boolean.valueOf(uri.getQueryParameter("replace")).booleanValue();
                    String[] split = com.bytedance.sdk.component.ia.d.dq.dq.ox.d(uri.getQueryParameter("track")).split(",");
                    if (split.length > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : split) {
                            String d3 = com.bytedance.sdk.component.ia.d.dq.dq.ox.d(str2);
                            if (!TextUtils.isEmpty(d3)) {
                                arrayList.add(d3);
                            }
                        }
                        com.bytedance.sdk.component.ia.d.iw.dq.dq(dq()).dq(queryParameter2, arrayList, booleanValue, null, new JSONObject());
                        break;
                    }
                } catch (Throwable unused) {
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
