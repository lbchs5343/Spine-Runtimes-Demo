package com.bytedance.sdk.openadsdk.core.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ITTProvider;
import com.bytedance.sdk.openadsdk.core.wp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class iw implements ITTProvider {

    /* renamed from: d, reason: collision with root package name */
    private static WeakReference<Context> f3197d;
    private static volatile iw dq;
    private static List<ITTProvider> ox;

    static {
        List<ITTProvider> synchronizedList = Collections.synchronizedList(new ArrayList());
        ox = synchronizedList;
        synchronizedList.add(new ox());
        ox.add(new com.bytedance.sdk.openadsdk.core.multipro.dq.d());
        ox.add(new com.bytedance.sdk.openadsdk.core.multipro.ox.dq());
        ox.add(new dq(new com.bytedance.sdk.component.ia.d.d.d.dq("csj")));
        Iterator<ITTProvider> it = ox.iterator();
        while (it.hasNext()) {
            it.next().init();
        }
    }

    private iw() {
    }

    private boolean d(Uri uri) {
        return true;
    }

    private ITTProvider dq(Uri uri) {
        if (uri == null || !d(uri)) {
            return null;
        }
        String[] split = uri.getPath().split("/");
        if (split.length < 2) {
            return null;
        }
        String str = split[1];
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (ITTProvider iTTProvider : ox) {
            if (str.equals(iTTProvider.getTableName())) {
                return iTTProvider;
            }
        }
        return null;
    }

    public static iw dq(Context context) {
        if (context != null) {
            f3197d = new WeakReference<>(context.getApplicationContext());
        }
        if (dq == null) {
            synchronized (iw.class) {
                try {
                    if (dq == null) {
                        dq = new iw();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private Context getContext() {
        WeakReference<Context> weakReference = f3197d;
        return (weakReference == null || weakReference.get() == null) ? wp.getContext() : f3197d.get();
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int delete(Uri uri, String str, String[] strArr) {
        try {
            ITTProvider dq2 = dq(uri);
            if (dq2 != null) {
                return dq2.delete(uri, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getTableName() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getType(Uri uri) {
        try {
            ITTProvider dq2 = dq(uri);
            if (dq2 != null) {
                return dq2.getType(uri);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void init() {
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void injectContext(Context context) {
        Iterator<ITTProvider> it = ox.iterator();
        while (it.hasNext()) {
            it.next().injectContext(context);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        try {
            ITTProvider dq2 = dq(uri);
            if (dq2 != null) {
                return dq2.insert(uri, contentValues);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            ITTProvider dq2 = dq(uri);
            if (dq2 != null) {
                return dq2.query(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        try {
            ITTProvider dq2 = dq(uri);
            if (dq2 != null) {
                return dq2.update(uri, contentValues, str, strArr);
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }
}
