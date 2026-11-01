package com.bytedance.sdk.openadsdk.core.multipro.ox;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.ITTProvider;
import com.bytedance.sdk.openadsdk.core.mp.iw;
import com.bytedance.sdk.openadsdk.core.multipro.s;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;

/* loaded from: classes3.dex */
public class dq implements ITTProvider {
    private Context dq;

    public static boolean d() {
        return ox("isAggSilent");
    }

    public static boolean d(String str) {
        return dq(str, "checkAggFrequency");
    }

    public static boolean dq() {
        return ox("isSilent");
    }

    public static boolean dq(String str) {
        return dq(str, "checkFrequency");
    }

    public static boolean dq(String str, String str2) {
        if (wp.getContext() == null) {
            return false;
        }
        try {
            ContentResolver s = s();
            if (s != null) {
                return "true".equals(s.getType(Uri.parse(iw() + str2 + "?rit=" + String.valueOf(str))));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private Context getContext() {
        Context context = this.dq;
        return context == null ? wp.getContext() : context;
    }

    private static String iw() {
        return awf.ad(new StringBuilder(), s.f3198d, "/t_frequent/");
    }

    public static String ox() {
        return p("maxRit");
    }

    public static boolean ox(String str) {
        if (wp.getContext() == null) {
            return false;
        }
        try {
            ContentResolver s = s();
            if (s != null) {
                return "true".equals(s.getType(Uri.parse(iw() + str)));
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String p() {
        return p("maxAggRit");
    }

    public static String p(String str) {
        if (wp.getContext() == null) {
            return null;
        }
        try {
            ContentResolver s = s();
            if (s != null) {
                return s.getType(Uri.parse(iw() + str));
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static ContentResolver s() {
        try {
            if (wp.getContext() != null) {
                return wp.getContext().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getTableName() {
        return "t_frequent";
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getType(Uri uri) {
        String str = uri.getPath().split("/")[2];
        if ("checkFrequency".equals(str)) {
            return iw.dq().dq(uri.getQueryParameter("rit")) ? "true" : "false";
        }
        if ("isSilent".equals(str)) {
            return iw.dq().p() ? "true" : "false";
        }
        if ("maxRit".equals(str)) {
            return iw.dq().s();
        }
        if ("checkAggFrequency".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.mp.dq.dq().dq(uri.getQueryParameter("rit")) ? "true" : "false";
        }
        if ("isAggSilent".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.mp.dq.dq().p() ? "true" : "false";
        }
        if ("maxAggRit".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.mp.dq.dq().s();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void init() {
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void injectContext(Context context) {
        this.dq = context;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
